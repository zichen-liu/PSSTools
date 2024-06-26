#' Cohen's h effect size calculation for two proportions
#'
#' @param p1 The proportion in group 1.
#' @param p2 The proportion in group 2.
#'
#' @return A list of the arguments and the h effect size.
#' @export
#'
#' @examples
#' es.h(p1 = 0.8, p2 = 0.6)

es.h <- function (p1 = NULL, p2 = NULL) {

  # Check if the arguments are specified correctly
  if(is.null(p1) | is.null(p2))
    stop("p1 and p2 must be specified")

  # Calculate h
  h <- 2 * asin(sqrt(p1)) - 2 * asin(sqrt(p2))

  # Print output as a power.htest object
  METHOD <- "Cohen's h effect size calculation for two proportions"
  structure(list(p1 = p1, p2 = p2, h = h,
                 method = METHOD), class = "power.htest")

}
