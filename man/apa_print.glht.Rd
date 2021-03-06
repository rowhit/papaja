% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/apa_print_glht.R
\name{apa_print.glht}
\alias{apa_print.glht}
\alias{apa_print.summary.glht}
\alias{apa_print.lsmobj}
\alias{apa_print.summary.ref.grid}
\title{Format statistics (APA 6th edition)}
\usage{
apa_print.glht(x, test = multcomp::adjusted(), ...)

apa_print.summary.glht(x, ci = 0.95, in_paren = FALSE, ...)

apa_print.lsmobj(x, ...)

apa_print.summary.ref.grid(x, contrast_names = NULL, in_paren = FALSE, ...)
}
\arguments{
\item{x}{See details.}

\item{test}{Function.}

\item{...}{Further arguments to pass to \code{\link{printnum}} to format the estimate.}

\item{ci}{Numeric. If \code{NULL} (default) the function tries to obtain confidence intervals from \code{x}.
Other confidence intervals can be supplied as a \code{vector} of length 2 (lower and upper boundary, respectively)
with attribute \code{conf.level}, e.g., when calculating bootstrapped confidence intervals.}

\item{in_paren}{Logical. Indicates if the formated string will be reported inside parentheses.}

\item{contrast_names}{Character. A vector of names to identify calculated contrasts.}
}
\value{
\code{apa_print()} returns a list containing the following components according to the input:

   \describe{
     \item{\code{statistic}}{A character string giving the test statistic, parameters (e.g., degrees of freedom),
         and \emph{p} value.}
     \item{\code{estimate}}{A character string giving the descriptive estimates and confidence intervals if possible}
         % , either in units of the analyzed scale or as standardized effect size.
     \item{\code{full_result}}{A joint character string comprised of \code{est} and \code{stat}.}
     \item{\code{table}}{A data.frame containing the complete contrast table, which can be passed to \code{\link{apa_table}}.}
   }
}
\description{
Takes various \code{lsmeans} objects methods to create formatted character strings to report the results in
accordance with APA manuscript guidelines.  \emph{These methods are not properly tested and should be
considered experimental.}
}
\details{
The function should work on a wide range of \code{htest} objects. Due to the large number of functions
   that produce these objects and their idiosyncrasies, the produced strings may sometimes be inaccurate. If you
   experience inaccuracies you may report these \href{https://github.com/crsh/papaja/issues}{here} (please include
   a reproducible example in your report!).

   ADJUSTED CONFIDENCE INTERVALS

   \code{stat_name} and \code{est_name} are placed in the output string and are thus passed to pandoc or LaTeX through
   \pkg{kntir}. Thus, to the extent it is supported by the final document type, you can pass LaTeX-markup to format the
   final text (e.g., \code{\\\\tau} yields \eqn{\tau}).

   If \code{in_paren} is \code{TRUE} parentheses in the formated string, such as those surrounding degrees
   of freedom, are replaced with brackets.
}
\examples{
   NULL
}
\seealso{
Other apa_print: \code{\link{apa_print.BFBayesFactor}},
  \code{\link{apa_print.aov}}, \code{\link{apa_print.glm}},
  \code{\link{apa_print.htest}},
  \code{\link{apa_print.list}}, \code{\link{apa_print}}
}
