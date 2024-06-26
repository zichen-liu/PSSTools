% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/anova2way.se.unbal.R
\name{anova2way.se.unbal}
\alias{anova2way.se.unbal}
\title{Power calculations for two-way unbalanced analysis of variance simple effects test}
\usage{
anova2way.se.unbal(
  nmatrix = NULL,
  mmatrix = NULL,
  cmatrix = NULL,
  sd = 0,
  Rsq = 0,
  ncov = 0,
  alpha = 0.05,
  v = FALSE
)
}
\arguments{
\item{nmatrix}{A matrix of sample sizes (see example).}

\item{mmatrix}{A matrix of group means (see example).}

\item{cmatrix}{A matrix of contrast coefficients (see example).}

\item{sd}{The estimated standard deviation within each group.}

\item{Rsq}{The estimated R^2 for regressing the outcome on the covariates; defaults to 0.}

\item{ncov}{The number of covariates adjusted for in the model; defaults to 0.}

\item{alpha}{The significance level or type 1 error rate; defaults to 0.05.}

\item{v}{Either TRUE for verbose output or FALSE to output computed argument only.}
}
\value{
A list of the arguments (including the computed power).
}
\description{
Power calculations for two-way unbalanced analysis of variance simple effects test
}
\examples{
nmatrix <- matrix(c(30, 30, 30, 30, 30, 30), nrow = 2, byrow = TRUE)
mmatrix <- matrix(c(9.3, 8.9, 8.5, 8.7, 8.3, 7.3), nrow = 2, byrow = TRUE)
cmatrix <- matrix(c(-1, 0, 0, 1, 0, 0), nrow = 2, byrow = TRUE)
anova2way.se.unbal(nmatrix = nmatrix, mmatrix = mmatrix, cmatrix = cmatrix,
sd = 2, alpha = 0.025)
}
