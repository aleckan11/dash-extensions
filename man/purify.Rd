% Auto-generated: do not edit by hand
\name{purify}

\alias{purify}

\title{Purify component}

\description{
The Html component makes it possible to render html sanitized via DOMPurify.
}

\usage{
purify(id=NULL, className=NULL, config=NULL, html=NULL)
}

\arguments{
\item{id}{Character. The ID used to identify this component in Dash callbacks}

\item{className}{Character. The class of the component}

\item{config}{Named list. Configuration (optional) of DOMPurify, see the docs https://github.com/cure53/DOMPurify}

\item{html}{Character. Html string}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

