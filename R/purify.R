# AUTO GENERATED FILE - DO NOT EDIT

#' @export
purify <- function(id=NULL, className=NULL, config=NULL, html=NULL) {
    
    props <- list(id=id, className=className, config=config, html=html)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Purify',
        namespace = 'dash_extensions',
        propNames = c('id', 'className', 'config', 'html'),
        package = 'dashExtensions'
        )

    structure(component, class = c('dash_component', 'list'))
}
