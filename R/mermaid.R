# AUTO GENERATED FILE - DO NOT EDIT

#' @export
mermaid <- function(id=NULL, chart=NULL, className=NULL, config=NULL, name=NULL) {
    
    props <- list(id=id, chart=chart, className=className, config=config, name=name)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Mermaid',
        namespace = 'dash_extensions',
        propNames = c('id', 'chart', 'className', 'config', 'name'),
        package = 'dashExtensions'
        )

    structure(component, class = c('dash_component', 'list'))
}
