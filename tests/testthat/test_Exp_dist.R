
context("dataframe")

test_that("Is it a Data-frame", {
   x<-exp_density()

  expect_that(x, is_a("data.frame"))

})
