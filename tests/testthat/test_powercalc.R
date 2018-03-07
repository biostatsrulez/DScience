context("powercalc")

test_that("Reasonable number for power",{
  x<-power_calc()
  expect_that(0<= x & x <=1, is_true())
})
