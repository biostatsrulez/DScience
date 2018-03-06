#' @title MLE of Normal Distribution
#'
#' @author David B
#'
#' @description Calculate the Maximum Likelihood Estimates (MLEs) for the mean and
#' variance of for a normal distriubtion.
#'
#' @usage normal_mle(mydata= )
#'
#' @param mydata The data you would like to estimate the parameters with.
#'
#'
#'
#'
#' @export


# Calcute the Maximun Likelihood Estimates for a Normally Dist. Dataset #

normal_mle <- function(mydata = data){
  mu <- mean(mydata)
  delta  = mydata - mu
  d2 = delta^2
  sumd2 = sum(d2)
  sigma2 = sumd2/length(mydata)
  mle<-c(mu, sigma2)
  return(mle)
}
