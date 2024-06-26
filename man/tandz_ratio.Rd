% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tandz_ratio.R
\name{tandz_ratio}
\alias{tandz_ratio}
\title{Ratio Evaluating Accuracy of Normal Approximation for T Distribution in Sample Size Calculations}
\usage{
tandz_ratio(alpha, power, df)
}
\arguments{
\item{alpha}{The level of precision or type 1 error}

\item{power}{The level of desired power}

\item{df}{Degrees of freedom}
}
\value{
Ratio that can be multiplied to normal approximation based sample size calculations.
}
\description{
This function calculates the ratio between (t_(nu, 1-beta) + t_(nu, 1 - alpha / 2))^2 / (z_(1-beta) + z_(1-alpha/2))^2. Sample size requirements using a normal distribution with include (z_(1-beta) + z_(1-alpha/2))^2 as a term, and sample sizes using the t distribution will include (t_(nu, 1-beta) + t_(nu, 1 - alpha / 2))^2 as a term. The ratio of these two terms provides the discrepancy between the normal approximation and t distribution.
Ratio values that exceed 1 indicate the normal approximation is underestimating the required sample size. Sample size requirements can be adjusted based on this ratio such that adjusted N = (unadjusted N) * ratio.
}
\examples{
# Suppose we calculated we needed 80 people using a normal approximation for
# 80\% power at 0.05 alpha, then we can update the sample size calculation as:
original_ss <- 80
ratio <- tandz_ratio(alpha = 0.05, power = 0.8, df = 20)
N_adjusted <- ceiling(original_ss * ratio)
N_adjusted
}
\keyword{internal}
