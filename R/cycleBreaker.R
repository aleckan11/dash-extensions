# AUTO GENERATED FILE - DO NOT EDIT

#' @export
cycleBreaker <- function(id=NULL, dst=NULL, src=NULL) {
    
    props <- list(id=id, dst=dst, src=src)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'CycleBreaker',
        namespace = 'dash_extensions',
        propNames = c('id', 'dst', 'src'),
        package = 'dashExtensions'
        )

    structure(component, class = c('dash_component', 'list'))
}
