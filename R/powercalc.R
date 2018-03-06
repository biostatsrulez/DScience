#' @title Approximate Power Calculation
#'
#' @author David B
#'
#' @description An approximate power calculation.
#'
#' @usage power_calc(samples= , alpha= , mu0= , mu1= )
#'
#' @param samples Sample size.
#' @param alpha Significance level.
#' @param mu0 Mean under the null hypothesis.
#' @param mu1 The "true" mean.
#'
#'
#' @export


#5. #
# Approximate Power Calculation #
power_calc <- function(samples = 1000, alpha = 0.05, mu0 = 1, mu1 = 1){
  ps <- rep(NA, 10000)
  for(i in 1:10000){
    x <- rnorm(samples, mu0)
    tt <- t.test(x, mu = mu1, conf.level = 1-alpha)
    ps[i]<-tt$p.value
  }
  return(mean(ps <= 0.05))
}
