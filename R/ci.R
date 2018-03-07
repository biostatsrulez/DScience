#' @title Confidence Interval
#'
#' @author David B
#'
#' @description A function that produces an equal-tailed 95% CI for an inputed value.
#'
#' @usage conf_int(value =  , se = , level = )
#'
#' @param value The numeric value of the statistic you would like a CI for.
#' @param se The Standard Error of the statistic you would like a CI for.
#' @param level The desired Confidence Level
#'
#'
#'
#'
#' @export


# 3. Generate an Exponential Distribution #
conf_int <- function(value = 5, se = 1, level = 0.95){

  lower <- value - (qnorm(1-(1-level)/2))*se
  upper <- value + (qnorm(1-(1-level)/2))*se
  ci = c(lower, upper)
  return(ci)

}
