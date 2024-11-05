% Auto-generated: do not edit by hand
\name{deferScript}

\alias{deferScript}

\title{DeferScript component}

\description{
Used to delay import of js resources until after React had been loaded. Typically used to apply js to dynamic content. Based on https://github.com/Grasia/grasia-dash-components/blob/master/src/components/Import.react.js
}

\usage{
deferScript(id=NULL, src=NULL)
}

\arguments{
\item{id}{Character. The ID used to identify this component in Dash callbacks}

\item{src}{Character. Local or external source of the javascript to import}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

