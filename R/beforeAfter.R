# AUTO GENERATED FILE - DO NOT EDIT

#' @export
beforeAfter <- function(id=NULL, after=NULL, before=NULL, direction=NULL, height=NULL, hover=NULL, keyboard=NULL, value=NULL, width=NULL) {
    
    props <- list(id=id, after=after, before=before, direction=direction, height=height, hover=hover, keyboard=keyboard, value=value, width=width)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'BeforeAfter',
        namespace = 'dash_extensions',
        propNames = c('id', 'after', 'before', 'direction', 'height', 'hover', 'keyboard', 'value', 'width'),
        package = 'dashExtensions'
        )

    structure(component, class = c('dash_component', 'list'))
}
