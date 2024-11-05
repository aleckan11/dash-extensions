% Auto-generated: do not edit by hand
\name{eventSource}

\alias{eventSource}

\title{EventSource component}

\description{
An interface to server sent events in Dash
}

\usage{
eventSource(id=NULL, close=NULL, error=NULL, message=NULL,
readyState=NULL, url=NULL, withCredentials=NULL)
}

\arguments{
\item{id}{Character. The ID used to identify this component in Dash callbacks.}

\item{close}{Logical. Close event source}

\item{error}{Character. Error}

\item{message}{Character. Received message}

\item{readyState}{Numeric. A number representing the state of the connection. Possible values are CONNECTING (0), OPEN (1), or CLOSED (2).}

\item{url}{Character. A DOMString representing the URL of the source.}

\item{withCredentials}{Logical. A boolean value indicating whether the EventSource object was instantiated with cross-origin (CORS) credentials set (true), or not (false, the default).}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

