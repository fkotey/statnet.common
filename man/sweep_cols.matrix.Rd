% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/logspace.utils.R
\name{sweep_cols.matrix}
\alias{sweep_cols.matrix}
\title{Suptract a elements of a vector from respective columns of a matrix}
\usage{
sweep_cols.matrix(x, STATS, disable_checks = FALSE)
}
\arguments{
\item{x}{a numeric matrix;}

\item{STATS}{a numeric vector whose length equals to the number of columns
of \code{x}.}

\item{disable_checks}{if \code{TRUE}, do not check that \code{x} is a
numeric matrix and its number of columns matches the length of \code{STATS};
set in production code for a significant speed-up.}
}
\value{
A matrix of the same attributes as \code{x}.
}
\description{
An optimized function equivalent to \code{sweep(x, 2, STATS)} for a matrix
\code{x}.
}
\examples{

x <- matrix(runif(1000), ncol=4)
s <- 1:4

stopifnot(all.equal(sweep_cols.matrix(x, s), sweep(x, 2, s)))

}
