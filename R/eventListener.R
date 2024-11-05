# AUTO GENERATED FILE - DO NOT EDIT

#' @export
eventListener <- function(children=NULL, id=NULL, className=NULL, event=NULL, events=NULL, logging=NULL, n_events=NULL, style=NULL, useCapture=NULL) {
    
    props <- list(children=children, id=id, className=className, event=event, events=events, logging=logging, n_events=n_events, style=style, useCapture=useCapture)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'EventListener',
        namespace = 'dash_extensions',
        propNames = c('children', 'id', 'className', 'event', 'events', 'logging', 'n_events', 'style', 'useCapture'),
        package = 'dashExtensions'
        )

    structure(component, class = c('dash_component', 'list'))
}
