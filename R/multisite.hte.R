#' Power for test of heterogeneity of treatment effect in multisite trials

#' @param m The total number of subjects per site.
#' @param alloc.ratio The allocation ratio of intervention/control per site; defaults to 1.
#' @param J The number of sites.
#' @param VR The variance ratio (site-level treatment effects / observations within sites) the under the alternative.
#' @param alpha The significance level or type 1 error rate; defaults to 0.05.
#' @param v Either TRUE for verbose output or FALSE to output computed argument only.
#'
#' @return A list of the arguments (including the computed power).
#' @export
#'
#' @examples
#' multisite.hte(m = 10, J = 30, VR = 8 / 36)

multisite.hte <- function (m = NULL, alloc.ratio = 1, J = NULL, VR = NULL,
                           alpha = 0.05, v = FALSE) {

  # Check if the arguments are specified correctly
  check(m, "req"); check(m, "pos")
  check(alloc.ratio, "req"); check(alloc.ratio, "pos")
  check(J, "req"); check(J, "min", min = 2)
  check(VR, "req"); check(VR, "pos")
  check(alpha, "req"); check(alpha, "unit")
  check(v, "req"); check(v, "bool")

  omega <- 1 + m * VR / 4
  df1 <- J - 1
  df2 <- J * (m - 2)
  crit <- stats::qf(1 - alpha, df1, df2)
  power  <- 1 - stats::pf(crit / omega, df1, df2)

  NOTE <- "m1, m2 are the number of subjects within site in condition 1, condition 2\n      (total of m1 + m2 per site)"
  if (!v) {
    cat(paste("NOTE:", NOTE, "\n"))
    return(power)
  }

  # Generate output text
  METHOD <-"Power for test of heterogeneity of treatment effect in multisite trials"
  c <- m / (alloc.ratio + 1)
  t <- alloc.ratio * c
  m <- paste0(t, ", ", c)

  # Print output as a power.htest object
  structure(list(`m1, m2` = m, J = J, VR = VR,
                 alpha = alpha, power = power,
                 method = METHOD, note = NOTE), class = "power.htest")

}
