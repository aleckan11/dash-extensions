# AUTO GENERATED FILE - DO NOT EDIT

#' @export
keyboard <- function(children=NULL, id=NULL, captureKeys=NULL, className=NULL, eventProps=NULL, keydown=NULL, keys_pressed=NULL, keyup=NULL, n_keydowns=NULL, n_keyups=NULL, style=NULL, useCapture=NULL) {
    
    props <- list(children=children, id=id, captureKeys=captureKeys, className=className, eventProps=eventProps, keydown=keydown, keys_pressed=keys_pressed, keyup=keyup, n_keydowns=n_keydowns, n_keyups=n_keyups, style=style, useCapture=useCapture)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Keyboard',
        namespace = 'dash_extensions',
        propNames = c('children', 'id', 'captureKeys', 'className', 'eventProps', 'keydown', 'keys_pressed', 'keyup', 'n_keydowns', 'n_keyups', 'style', 'useCapture'),
        package = 'dashExtensions'
        )

    structure(component, class = c('dash_component', 'list'))
}
