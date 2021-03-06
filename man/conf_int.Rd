% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calculations.R
\name{conf_int}
\alias{conf_int}
\alias{conf.int}
\alias{ci}
\title{Between-subjects confidence intervals}
\usage{
conf_int(x, level = 0.95, na.rm = TRUE)

conf.int(x, level = 0.95, na.rm = TRUE)

ci(x, level = 0.95, na.rm = TRUE)
}
\arguments{
\item{x}{Numeric. A vector of observations from your dependent variable.}

\item{level}{Numeric. Defines the width of the interval if confidence intervals are plotted. Defaults to 0.95
for 95\% confidence intervals.}

\item{na.rm}{Logical. Specifies if missing values are removed.}
}
\description{
Calculates the deviation that is needed to construct confidence intervals for a vector of observations.
}
