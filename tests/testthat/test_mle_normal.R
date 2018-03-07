context("MLE of Normal")

test_that("Get a vector of length 2",{
  x<-normal_mle(mtcars, 3)
  expect_length(x,2)
})
