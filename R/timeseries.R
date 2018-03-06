#' @title Simple Time Series
#'
#' @author David B
#'
#' @description Specify an ARMA(p,d,q) to fit data and produce a forecast.
#'
#' @usage time_series(mydata= , p1= , d1= , q1=)
#'
#' @param mydata Specify the data to be used.
#' @param p1 Specify the number of autoregressive terms.
#' @param d1 Specify the degree of differencing.
#' @param q1 Specify the number of moving average terms.
#'
#'
#' @import forecast
#' @import astsa
#'
#' @export


# Third function #
time_series <- function(mydata = data, p1 = 0, d1 = 0, q1 = 0 ){

  model <- arima(mydata, order = c(p1,d1,q1))
  print(model)
  plot(forecast(gtemp2, model = model))

}
