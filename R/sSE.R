# AUTO GENERATED FILE - DO NOT EDIT

#' @export
sSE <- function(id=NULL, animate_chunk=NULL, animate_delay=NULL, animate_prefix=NULL, animate_suffix=NULL, animation=NULL, concat=NULL, done=NULL, options=NULL, url=NULL, value=NULL) {
    
    props <- list(id=id, animate_chunk=animate_chunk, animate_delay=animate_delay, animate_prefix=animate_prefix, animate_suffix=animate_suffix, animation=animation, concat=concat, done=done, options=options, url=url, value=value)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'SSE',
        namespace = 'dash_extensions',
        propNames = c('id', 'animate_chunk', 'animate_delay', 'animate_prefix', 'animate_suffix', 'animation', 'concat', 'done', 'options', 'url', 'value'),
        package = 'dashExtensions'
        )

    structure(component, class = c('dash_component', 'list'))
}
