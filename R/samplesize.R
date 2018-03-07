#' @title Sample size calculator
#'
#' @description Gives the approximate sample size needed for desired power,
#' significance level, estimated standard deviation, and mean under null and
#' alternative hypothesis.
#'
#' @usage sample_size(alpha = , power = , sd = , mu0 = , mu1 = )
#'
#' @param alpha Desired Significance level
#' @param power Desired Power
#' @param sd Standard Deviation
#' @param mu0 Mean under the null hypothesis
#' @param mu1 Mean under the alternative hypothesis
#'
#' @export
#'
#'
#'


sample_size <- function(alpha = 0.05, pwr = 0.8, sd = 1, mu0 = 1.1,  mu1 = 1){
  za <- qnorm(1-(alpha/2))
  zb <- qnorm(1-(1-pwr))
  n <- ((za + zb)^2)*(sd^2)*(1/((mu0-mu1)^2))
  print(n)
}

