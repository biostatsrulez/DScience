\name{top_n}
\alias{top_n}

\title{
Top Frequencies
}

\description{
Calculate the frequencies of groups for some variable and display them in descending order.
}

\usage{
top_n(mydata, groupings = " ", n)
}

\arguments{
  \item{mydata}{
Specify the data to be used.
}
\item{groupings}{
Specify the group by variable. Must be in " ".
}

\item{n}{
Specify the number of groups to be displayed.
}
}


\author{
David B.
}
\examples{
top_n(alcohol, "status", 2)
}
