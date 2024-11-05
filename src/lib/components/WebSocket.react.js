import {Component} from 'react';
import PropTypes from 'prop-types';

export default class DashWebSocket extends Component {
    constructor(props) {
        super(props);
        this.heartbeatInterval = null;
        this.lastSubscription = null;
        this.reconnectAttempts = 0;
    }

    startHeartbeat() {
        if (this.heartbeatInterval) {
            clearInterval(this.heartbeatInterval);
        }
        this.heartbeatInterval = setInterval(() => {
            if (this.client && this.client.readyState === WebSocket.OPEN) {
                console.log("Sending heartbeat ping");
                this.client.send(JSON.stringify({ type: "PING" }));
            }
        }, this.props.pingInterval);
    }

    stopHeartbeat() {
        if (this.heartbeatInterval) {
            clearInterval(this.heartbeatInterval);
            this.heartbeatInterval = null;
        }
    }

    _init_client() {
        let {url} = this.props;
        const {protocols} = this.props;
        url = url? url : "ws://" + location.host + location.pathname + "ws";
        this.client = new WebSocket(url, protocols);
        
        this.client.onopen = (e) => {
            console.log("WebSocket opened");
            // Reset attempts on successful connection
            this.reconnectAttempts = 0;
            
            this.props.setProps({
                state: {
                    readyState: WebSocket.OPEN,
                    isTrusted: e.isTrusted,
                    timeStamp: e.timeStamp,
                    origin: e.origin,
                }
            });
            this.startHeartbeat();

            if (this.lastSubscription) {
                console.log("Resubscribing with:", this.lastSubscription);
                setTimeout(() => {
                    if (this.client && this.client.readyState === WebSocket.OPEN) {
                        this.client.send(this.lastSubscription);
                    }
                }, 1000); // Wait 1 second before resubscribing
            }
        }
        
        this.client.onmessage = (e) => {
            if (e.data === "PONG") {
                console.log("Received heartbeat pong");
                return;
            }

            this.props.setProps({
                message: {
                    data: e.data,
                    isTrusted: e.isTrusted,
                    origin: e.origin,
                    timeStamp: e.timeStamp
                }
            })
        }
        
        this.client.onerror = (e) => {
            console.log("WebSocket error:", e);
            this.props.setProps({error: JSON.stringify(e)})
        }
        
        this.client.onclose = (e) => {
            console.log("WebSocket closed with code:", e.code);
            this.stopHeartbeat();
            
            this.props.setProps({
                state: {
                    readyState: WebSocket.CLOSED,
                    isTrusted: e.isTrusted,
                    timeStamp: e.timeStamp,
                    code: e.code,
                    reason: e.reason,
                    wasClean: e.wasClean,
                }
            })
            
            if (this.props.autoReconnect && e.code !== 1000) {
                this.reconnectAttempts++;
                console.log(`Auto reconnecting... Attempt ${this.reconnectAttempts} of ${this.props.maxReconnectAttempts}`);
                
                if (this.reconnectAttempts < this.props.maxReconnectAttempts) {
                    setTimeout(() => {
                        this._init_client();
                    }, this.props.reconnectInterval);
                } else {
                    console.log("Max reconnection attempts reached");
                    this.reconnectAttempts = 0;
                }
            }
        }
    }

    closeConnection() {
        console.log("Closing WebSocket connection");
        this.stopHeartbeat();
        if (this.client && this.client.readyState === WebSocket.OPEN) {
            this.client.close(1000, "Manual close");
        }
    }

    reconnect() {
        console.log("Manually reconnecting WebSocket");
        this.reconnectAttempts = 0;
        if (!this.client || this.client.readyState === WebSocket.CLOSED) {
            this._init_client();
        } else {
            console.warn("Cannot reconnect - socket still active");
        }
    }

    kill() {
        console.log("Killing WebSocket connection");
        this.stopHeartbeat();
        this.lastSubscription = null;
        this.reconnectAttempts = 0;
        
        if (this.client) {
            this.client.onopen = null;
            this.client.onclose = null;
            this.client.onerror = null;
            this.client.onmessage = null;
            
            if (this.client.readyState === WebSocket.OPEN) {
                this.client.close(1000, "Kill command");
            }
            this.client = null;
        }
    }

    restart() {
        console.log("Restarting WebSocket connection");
        if (this.client) {
            const wasOpen = this.client.readyState === WebSocket.OPEN;
            if (wasOpen) {
                this.client.close(1000, "Restart command");
            }
            setTimeout(() => {
                this._init_client();
            }, 100);
        } else {
            this._init_client();
        }
    }

    kill_and_restart() {
        console.log("Killing and restarting WebSocket connection");
        this.stopHeartbeat();
        this.lastSubscription = null;
        this.reconnectAttempts = 0;
        
        if (this.client) {
            this.client.onopen = null;
            this.client.onclose = null;
            this.client.onerror = null;
            this.client.onmessage = null;
            
            if (this.client.readyState === WebSocket.OPEN) {
                this.client.close(1000, "Kill and restart command");
            }
            this.client = null;
        }

        setTimeout(() => {
            this._init_client();
        }, 100);
    }

    componentDidMount() {
        this._init_client()
    }

    componentDidUpdate(prevProps) {
        const {send, close, reconnect, kill, restart, kill_and_restart} = this.props;
        
        if (send && send !== prevProps.send) {
            if (this.client && this.client.readyState === WebSocket.OPEN) {
                // Store subscription messages
                try {
                    const msgObj = JSON.parse(send);
                    if (msgObj.type === "Market" || msgObj.type === "User") {
                        console.log("Storing subscription:", send);
                        this.lastSubscription = send;
                    }
                } catch (e) {
                    console.log("Not a subscription message");
                }
                
                this.client.send(send);
            } else {
                console.warn("Cannot send message - WebSocket is not open");
            }
        }

        if (close && close !== prevProps.close) {
            console.log("Close command received");
            this.closeConnection();
        }

        if (reconnect && reconnect !== prevProps.reconnect) {
            console.log("Reconnect command received");
            this.reconnect();
        }

        if (kill && kill !== prevProps.kill) {
            console.log("Kill command received");
            this.kill();
        }

        if (restart && restart !== prevProps.restart) {
            console.log("Restart command received");
            this.restart();
        }

        if (kill_and_restart && kill_and_restart !== prevProps.kill_and_restart) {
            console.log("Kill and restart command received");
            this.kill_and_restart();
        }
    }

    componentWillUnmount() {
        this.stopHeartbeat();
        this.kill();
    }

    render() {
        return null;
    }
}

DashWebSocket.defaultProps = {
    state: {readyState: WebSocket.CONNECTING},
    autoReconnect: true,
    reconnectInterval: 5000,
    maxReconnectAttempts: 5,
    pingInterval: 30000
}

DashWebSocket.propTypes = {
    state: PropTypes.oneOfType([PropTypes.object, PropTypes.string]),
    message: PropTypes.oneOfType([PropTypes.object, PropTypes.string]),
    error: PropTypes.oneOfType([PropTypes.object, PropTypes.string]),
    send: PropTypes.oneOfType([PropTypes.object, PropTypes.string]),
    close: PropTypes.oneOfType([PropTypes.object, PropTypes.string]),
    reconnect: PropTypes.oneOfType([PropTypes.object, PropTypes.string]),
    kill: PropTypes.oneOfType([PropTypes.object, PropTypes.string]),
    restart: PropTypes.oneOfType([PropTypes.object, PropTypes.string]),
    kill_and_restart: PropTypes.oneOfType([PropTypes.object, PropTypes.string]),
    autoReconnect: PropTypes.bool,
    reconnectInterval: PropTypes.number,
    maxReconnectAttempts: PropTypes.number,
    pingInterval: PropTypes.number,
    url: PropTypes.string,
    protocols: PropTypes.arrayOf(PropTypes.string),
    id: PropTypes.string,
    setProps: PropTypes.func
}