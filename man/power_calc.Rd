\name{Power Calculation}
\alias{Power Calculation}
\title{
power_calc()
}
\description{
Calculate the approximate power of a t-test.
}

\arguments{
  \item{samples}{
Sample size
}
\item{alpha}{
Significance Level
}
\item{mu0}{
Mean under the null hypothesis.
}
\item{mu1}{
The "true" mean.
}
}

\author{
DB
}

\examples{
power_calc(1000, 0.05, 1, 1.1)

}

