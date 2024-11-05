import {Component} from 'react';
import PropTypes from 'prop-types';

export default class DashWebSocket extends Component {
    _init_client() {
        // Create a new client.
        let {url} = this.props;
        const {protocols} = this.props;
        url = url? url : "ws://" + location.host + location.pathname + "ws";
        this.client = new WebSocket(url, protocols);
        
        // Listen for events.
        this.client.onopen = (e) => {
            this.props.setProps({
                state: {
                    readyState: WebSocket.OPEN,
                    isTrusted: e.isTrusted,
                    timeStamp: e.timeStamp,
                    origin: e.origin,
                }
            })
        }
        
        this.client.onmessage = (e) => {
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
            this.props.setProps({error: JSON.stringify(e)})
        }
        
        this.client.onclose = (e) => {
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
            
            // Auto-reconnect if enabled and not manually closed
            if (this.props.autoReconnect && e.code !== 1000) {
                setTimeout(() => {
                    this._init_client();
                }, this.props.reconnectInterval);
            }
        }
    }

    closeConnection() {
        if (this.client && this.client.readyState === WebSocket.OPEN) {
            this.client.close(1000, "Manual close");
        }
    }

    reconnect() {
        this.closeConnection();
        this._init_client();
    }

    componentDidMount() {
        this._init_client()
    }

    componentDidUpdate(prevProps) {
        const {send, close, reconnect} = this.props;
        
        // Handle send messages
        if (send && send !== prevProps.send) {
            if (this.props.state.readyState === WebSocket.OPEN) {
                this.client.send(send)
            }
        }

        // Handle close request
        if (close && close !== prevProps.close) {
            this.closeConnection();
        }

        // Handle reconnect request
        if (reconnect && reconnect !== prevProps.reconnect) {
            this.reconnect();
        }
    }

    componentWillUnmount() {
        this.closeConnection();
        this.client.onopen = null;
        this.client.onclose = null;
        this.client.onerror = null;
        this.client.onmessage = null;
    }

    render() {
        return null;
    }
}

DashWebSocket.defaultProps = {
    state: {readyState: WebSocket.CONNECTING},
    autoReconnect: true,
    reconnectInterval: 5000
}

DashWebSocket.propTypes = {
    state: PropTypes.oneOfType([PropTypes.object, PropTypes.string]),
    message: PropTypes.oneOfType([PropTypes.object, PropTypes.string]),
    error: PropTypes.oneOfType([PropTypes.object, PropTypes.string]),
    send: PropTypes.oneOfType([PropTypes.object, PropTypes.string]),
    close: PropTypes.oneOfType([PropTypes.object, PropTypes.string]),
    reconnect: PropTypes.oneOfType([PropTypes.object, PropTypes.string]),
    autoReconnect: PropTypes.bool,
    reconnectInterval: PropTypes.number,
    url: PropTypes.string,
    protocols: PropTypes.arrayOf(PropTypes.string),
    id: PropTypes.string,
    setProps: PropTypes.func
}
