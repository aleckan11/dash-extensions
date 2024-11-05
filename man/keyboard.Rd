% Auto-generated: do not edit by hand
\name{keyboard}

\alias{keyboard}

\title{Keyboard component}

\description{
The Keyboard component listens for keyboard events.
}

\usage{
keyboard(children=NULL, id=NULL, captureKeys=NULL, className=NULL,
eventProps=NULL, keydown=NULL, keys_pressed=NULL,
keyup=NULL, n_keydowns=NULL, n_keyups=NULL, style=NULL,
useCapture=NULL)
}

\arguments{
\item{children}{A list of or a singular dash component, string or number. The children of this component. If any children are provided, the component will listen for events from these
    components. If no children are specified, the component will listen for events from the document object.}

\item{id}{Character. The ID used to identify this component in Dash callbacks.}

\item{captureKeys}{List of character | named lists. The keys to capture. Defaults to all keys. Can be either a string (e.g. "Enter") or an object (e.g. "{key: 'Enter', ctrlKey: true}").}

\item{className}{Character. A custom class name.}

\item{eventProps}{List of characters. The event properties to forward to dash, see https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.}

\item{keydown}{Named list. keydown (dict) the object that holds the result of the key down event. It is a dictionary with the following keys:
     "key", "altKey", "ctrlKey", "shiftKey","metaKey", "repeat". Those keys have the following values:

   - key (str) which key is pressed
   - altKey (bool) whether the Alt key is pressed
   - ctrlKey (bool) Ctrl key is pressed
   - shiftKey (bool) Shift key is pressed
   - metaKey (bool) Meta key is pressed (Mac: Command key or PC: Windows key)
   - repeat (bool) whether the key is held down}

\item{keys_pressed}{Named list. keys_pressed (dict) is a dict of objects like keydown for all keys currently pressed.}

\item{keyup}{Named list. keyup (dict) the object that holds the result of the key up event. Structure like keydown.}

\item{n_keydowns}{Numeric. A counter, which is incremented on each key down event, similar to n_clicks for buttons.}

\item{n_keyups}{Numeric. A counter, which is incremented on each key up event, similar to n_clicks for buttons.}

\item{style}{Named list. The CSS style of the component.}

\item{useCapture}{Logical. Value of useCapture used when registering event listeners.}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

