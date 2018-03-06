#' @title The Exponetial Distribution
#'
#' @author David B
#'
#' @description A neat little funtion that produces a exponetially distributed data
#' set.
#'
#' @usage exp_density(size = ,mean= )
#'
#' @param size Specify the number of observations.
#' @param mean Specify the desired mean of the distribution.
#'
#'
#'
#'
#' @export


# 3. Generate an Exponential Distribution #
exp_density <- function(size = 100, mean = 1){
  density <- data.frame(matrix(NA, nrow = size))
  density[,1] <- rexp(size, r = 1/mean)
  return(density)
}
