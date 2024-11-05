% Auto-generated: do not edit by hand
\name{sSE}

\alias{sSE}

\title{SSE component}

\description{
The SSE component makes it possible to collect data from e.g. a ResponseStream. It's a wrapper around the SSE.js library. https://github.com/mpetazzoni/sse.js
}

\usage{
sSE(id=NULL, animate_chunk=NULL, animate_delay=NULL,
animate_prefix=NULL, animate_suffix=NULL, animation=NULL,
concat=NULL, done=NULL, options=NULL, url=NULL, value=NULL)
}

\arguments{
\item{id}{Character. The ID used to identify this component in Dash callbacks.}

\item{animate_chunk}{Numeric. Chunk size (i.e. number of characters) for the animation.}

\item{animate_delay}{Numeric. If set, each character is delayed by some amount of time. Used to animate the stream.}

\item{animate_prefix}{Character. Prefix to be excluded from the animation.}

\item{animate_suffix}{Character. Suffix to be excluded from the animation.}

\item{animation}{Character. The data value. Either the latest, or the concatenated depending on the `concat` property.}

\item{concat}{Logical. A boolean indicating if the stream values should be concatenated.}

\item{done}{Logical. A boolean indicating if the (current) stream has ended.}

\item{options}{Lists containing elements 'headers', 'method', 'payload', 'withcredentials', 'start', 'debug'.
those elements have the following types:
  - headers (named list; optional)
  - method (character; optional)
  - payload (named list | character; optional)
  - withcredentials (logical; optional)
  - start (logical; optional)
  - debug (logical; optional). Options passed to the SSE constructor. https://github.com/mpetazzoni/sse.js?tab=readme-ov-file#options-reference}

\item{url}{Character. URL of the endpoint.}

\item{value}{Character. The data value. Either the latest, or the concatenated depending on the `concat` property.}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

