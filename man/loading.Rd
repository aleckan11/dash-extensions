% Auto-generated: do not edit by hand
\name{loading}

\alias{loading}

\title{Loading component}

\description{
The Loading component makes it possible to stop event propagation during loading.
}

\usage{
loading(children=NULL, id=NULL, loading_state=NULL,
preventDefault=NULL)
}

\arguments{
\item{children}{List of a list of or a singular dash component, string or numbers | a list of or a singular dash component, string or number. Array that holds components to render}

\item{id}{Character. The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.}

\item{loading_state}{Lists containing elements 'is_loading', 'prop_name', 'component_name'.
those elements have the following types:
  - is_loading (logical; optional): determines if the component is loading or not
  - prop_name (character; optional): holds which property is loading
  - component_name (character; optional): holds the name of the component that is loading. Object that holds the loading state object coming from dash-renderer}

\item{preventDefault}{List of characters. Events for which to call preventDefault() during loading.}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

