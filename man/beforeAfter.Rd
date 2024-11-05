% Auto-generated: do not edit by hand
\name{beforeAfter}

\alias{beforeAfter}

\title{BeforeAfter component}

\description{
Before After Image Slider based on https://github.com/sneas/img-comparison-slider
}

\usage{
beforeAfter(id=NULL, after=NULL, before=NULL, direction=NULL,
height=NULL, hover=NULL, keyboard=NULL, value=NULL,
width=NULL)
}

\arguments{
\item{id}{Character. The ID used to identify this component in Dash callbacks}

\item{after}{Named list. Props for the `after` Img component. eg {"src": "/assets/lena_color.png"}}

\item{before}{Named list. Props for the `before` Img component. eg {"src": "/assets/lena_bw.png"}}

\item{direction}{A value equal to: 'horizontal', 'vertical'. Set slider direction}

\item{height}{Character. Image height - default "auto" for responsive images}

\item{hover}{Logical. Automatic slide on mouse over}

\item{keyboard}{A value equal to: 'enabled', 'disabled'. Enable/disable slider position control with the keyboard}

\item{value}{Numeric. The divider position can be specified as a percentage, i.e. 0 to 100}

\item{width}{Character. Image width - default "100\%" for responsive images}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

