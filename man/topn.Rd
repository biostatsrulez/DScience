\name{Top Frequencies}
\alias{Top Frequencies}

\title{
top_n()
}

\usage{
Display the frequencies of a group in a dataset in descending order.
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
