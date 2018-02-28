\name{time_series}
\alias{time_series}
\title{
Simple Time Series
}
\description{
Specify an ARMA(p,d,q) to fit data and produce a forecast.
}
\usage{
time_series(mydata, p1, d1, q1)
}

\arguments{
  \item{mydata}{
The data set to be used.
}
  \item{p1}{
Number of autoregressive terms.
}
  \item{d1}{
Degree of differencing.
}
  \item{q1}{
Number of moving average terms.
}
}


\author{
DB
}

\examples{
time_series(gtemp2, 0, 1, 2)
}
