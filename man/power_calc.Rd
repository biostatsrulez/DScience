\name{power_calc}
\alias{power_calc}
\title{
Approximate Power Calculation
}
\description{
Calculate the approximate power of a t-test.
}

\usage{
power_calc(samples, alpha, mu0, mu1)
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

