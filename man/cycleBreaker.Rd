% Auto-generated: do not edit by hand
\name{cycleBreaker}

\alias{cycleBreaker}

\title{CycleBreaker component}

\description{
Simple data store that automatically copies the current value of the src property into dst property. Can be used to break circular dependencies.
}

\usage{
cycleBreaker(id=NULL, dst=NULL, src=NULL)
}

\arguments{
\item{id}{Character. The ID used to identify this component in Dash callbacks.}

\item{dst}{Logical | numeric | character | named list | unnamed list. Read the forwarded value from this property.}

\item{src}{Logical | numeric | character | named list | unnamed list. Set this property to value to be forwarded from .}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

