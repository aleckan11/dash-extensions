# AUTO GENERATED FILE - DO NOT EDIT

#' @export
webSocket <- function(id=NULL, autoReconnect=NULL, close=NULL, error=NULL, kill=NULL, kill_and_restart=NULL, maxReconnectAttempts=NULL, message=NULL, pingInterval=NULL, protocols=NULL, reconnect=NULL, reconnectInterval=NULL, restart=NULL, send=NULL, state=NULL, url=NULL) {
    
    props <- list(id=id, autoReconnect=autoReconnect, close=close, error=error, kill=kill, kill_and_restart=kill_and_restart, maxReconnectAttempts=maxReconnectAttempts, message=message, pingInterval=pingInterval, protocols=protocols, reconnect=reconnect, reconnectInterval=reconnectInterval, restart=restart, send=send, state=state, url=url)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'WebSocket',
        namespace = 'dash_extensions',
        propNames = c('id', 'autoReconnect', 'close', 'error', 'kill', 'kill_and_restart', 'maxReconnectAttempts', 'message', 'pingInterval', 'protocols', 'reconnect', 'reconnectInterval', 'restart', 'send', 'state', 'url'),
        package = 'dashExtensions'
        )

    structure(component, class = c('dash_component', 'list'))
}
