
#' @title Top n Frequencies
#'
#' @author David B
#'
#' @description Display the top n groups based on frequency.
#'
#' @usage top_n(mydata= , groupings= " ", n= 1)
#'
#' @param mydata Specify the data you will use.
#' @param groupings Specify the variable(s) you will group by.
#' @param n Specify the top n groups to display.
#'
#'
#' @import tidyverse
#'
#'
#'
#' @export

# 4. Get top groups by frequency #
top_n <- function(mydata = data, groupings = " ", n = 1){
  x <-
    mydata %>%
    group_by_at(vars(one_of(groupings))) %>%
    summarize(
      count = n()
    ) %>%
    arrange(desc(count)) %>%
    head(n)
  return(x)
}
