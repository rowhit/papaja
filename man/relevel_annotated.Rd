% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/annotated_data.R
\docType{methods}
\name{relevel,annotated_factor,character-method}
\alias{relevel,annotated_factor,character-method}
\alias{relevel,annotated_factor,numeric-method}
\title{Reorder Levels of Annotated Factor}
\usage{
\S4method{relevel}{annotated_factor,character}(x, ref)

\S4method{relevel}{annotated_factor,numeric}(x, ref)
}
\arguments{
\item{x}{An object of class \code{annotated_factor}.}

\item{ref}{The reference level, typically a character. Contrary to the
original behavior, you can also specify a character vector of any length:
As many levels as you specified will be re-ordered (standard behavior issued
an error).}
}
\value{
An annotated factor of the same length as x.
}
\description{
The levels of an annotated factor are re-ordered so that the level specified
by \code{ref} is first and the others are moved down. This is useful
for \code{contr.treatment} contrasts which take the first level as the
reference.
}
\details{
Currently, two methods for reordering the levels of an \code{annotated_factor} are implemented:
The \code{annotated_factor,character}-method reorders the levels according to the ordering in a character vector \code{ref}.
The \code{annotated_factor,integer}-method reorders the levels according to their position within the vector of levels
(as would be returned by \code{levels}).
}
\seealso{
\code{\link{relevel}}
}
