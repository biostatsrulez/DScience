
#library(roxygen2)
library(ggplot2)
library(wooldridge)

exp_density <- function(size = 100, mean = 1){
  density <- data.frame(matrix(NA, nrow = size))
 density[,1] <- rexp(size, r = 1/mean)
  return(density)
}


my_theme <- function(){
  theme(
    axis.title.x = element_blank()
    ,axis.ticks.x = element_blank()
    ,axis.text.x = element_text(color = "White")
    ,axis.title.y = element_text(color = "White")
    ,axis.text.y = element_text(color = "white")
    ,legend.position = "bottom"
    ,plot.background = element_rect(fill = "blue")
  )
}

ggplot(exp_density(1000, 4), aes(x = matrix.NA..nrow...size.)) +
  geom_density() +
  my_theme()



top_n <- function(mydata = alcohol, groupings = "status", n = 1){
  library(tidyverse)
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





