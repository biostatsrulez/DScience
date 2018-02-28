
#library(roxygen2)
library(ggplot2)
library(wooldridge)

# 3. Generate an Exponential Distribution #
exp_density <- function(size = 100, mean = 1){
  density <- data.frame(matrix(NA, nrow = size))
 density[,1] <- rexp(size, r = 1/mean)
  return(density)
}


# 4. A custom theme in ggplot #
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



# 4. Get top groups by frequency #
top_n <- function(mydata = data, groupings = " ", n = 1){
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

#5. #
# Approximate Power Calculation #
power_calc <- function(samples = 1000, alpha = 0.05, mu0 = 1, mu1 = 1){
  ps <- rep(NA, 10000)
  for(i in 1:10000){
  x <- rnorm(samples, mu0)
  tt <- t.test(x, mu = mu1, conf.level = 1-alpha)
  ps[i]<-tt$p.value
}
return(mean(ps <= 0.05))
}

# Calcute the Maximun Likelihood Estimates for a Normally Dist. Dataset #

normal_mle <- function(mydata = data){
  mu <- mean(mydata)
  delta  = mydata - mu
  d2 = delta^2
  sumd2 = sum(d2)
  sigma2 = sumd2/length(mydata)
  mle<-c(mu, sigma2)
  return(mle)
}

# THird function #

# Fourth Function #


