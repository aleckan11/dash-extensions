# AUTO GENERATED FILE - DO NOT EDIT

#' @export
loading <- function(children=NULL, id=NULL, loading_state=NULL, preventDefault=NULL) {
    
    props <- list(children=children, id=id, loading_state=loading_state, preventDefault=preventDefault)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Loading',
        namespace = 'dash_extensions',
        propNames = c('children', 'id', 'loading_state', 'preventDefault'),
        package = 'dashExtensions'
        )

    structure(component, class = c('dash_component', 'list'))
}
