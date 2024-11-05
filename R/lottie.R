# AUTO GENERATED FILE - DO NOT EDIT

#' @export
lottie <- function(children=NULL, id=NULL, ariaLabel=NULL, ariaRole=NULL, className=NULL, direction=NULL, height=NULL, isClickToPauseDisabled=NULL, isPaused=NULL, isStopped=NULL, options=NULL, segments=NULL, speed=NULL, style=NULL, title=NULL, url=NULL, width=NULL) {
    
    props <- list(children=children, id=id, ariaLabel=ariaLabel, ariaRole=ariaRole, className=className, direction=direction, height=height, isClickToPauseDisabled=isClickToPauseDisabled, isPaused=isPaused, isStopped=isStopped, options=options, segments=segments, speed=speed, style=style, title=title, url=url, width=width)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Lottie',
        namespace = 'dash_extensions',
        propNames = c('children', 'id', 'ariaLabel', 'ariaRole', 'className', 'direction', 'height', 'isClickToPauseDisabled', 'isPaused', 'isStopped', 'options', 'segments', 'speed', 'style', 'title', 'url', 'width'),
        package = 'dashExtensions'
        )

    structure(component, class = c('dash_component', 'list'))
}
