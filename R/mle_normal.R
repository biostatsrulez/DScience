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
#' @param var This is the column number of the variable of interest in your data.fram
#'
#'
#'
#' @export


# Calcute the Maximun Likelihood Estimates for a Normally Dist. Dataset #

normal_mle <- function(mydata = data, var = var){
  x <- mydata[,var]
  mu <- mean(x)
  delta  = x - mu
  d2 = delta^2
  sumd2 = sum(d2)
  sigma2 = sumd2/length(x)
  mle<-c(mu, sigma2)
  return(mle)
}

