# AUTO GENERATED FILE - DO NOT EDIT

#' @export
deferScript <- function(id=NULL, src=NULL) {
    
    props <- list(id=id, src=src)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'DeferScript',
        namespace = 'dash_extensions',
        propNames = c('id', 'src'),
        package = 'dashExtensions'
        )

    structure(component, class = c('dash_component', 'list'))
}
