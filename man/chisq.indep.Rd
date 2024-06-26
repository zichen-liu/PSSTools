% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chisq.indep.R
\name{chisq.indep}
\alias{chisq.indep}
\title{Power calculations for chi-square test of independence}
\usage{
chisq.indep(pmatrix = NULL, N = NULL, alpha = 0.05, power = NULL, v = FALSE)
}
\arguments{
\item{pmatrix}{The two-way probability table under the alternative hypothesis.}

\item{N}{The number of total observations.}

\item{alpha}{The significance level or type 1 error rate; defaults to 0.05.}

\item{power}{The specified level of power.}

\item{v}{Either TRUE for verbose output or FALSE to output computed argument only.}
}
\value{
A list of the arguments (including the computed one).
}
\description{
Power calculations for chi-square test of independence
}
\examples{
chisq.indep(pmatrix = matrix(c(0.050, 0.350, 0.100, 0.075, 0.250, 0.175),
nrow = 2, byrow = TRUE), N = 230)
chisq.indep(pmatrix = matrix(c(0.3, 0.2, 0.4, 0.1), nrow = 2, byrow = TRUE), N = 200)
}
