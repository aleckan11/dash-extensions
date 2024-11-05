# AUTO GENERATED FILE - DO NOT EDIT

#' @export
eventSource <- function(id=NULL, close=NULL, error=NULL, message=NULL, readyState=NULL, url=NULL, withCredentials=NULL) {
    
    props <- list(id=id, close=close, error=error, message=message, readyState=readyState, url=url, withCredentials=withCredentials)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'EventSource',
        namespace = 'dash_extensions',
        propNames = c('id', 'close', 'error', 'message', 'readyState', 'url', 'withCredentials'),
        package = 'dashExtensions'
        )

    structure(component, class = c('dash_component', 'list'))
}
