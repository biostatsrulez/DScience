context("guessinggame")

test_that("guessing game error works", {
  x <- guess_game(10, 11, 1)
  expect_that(str_length(x), equals(38+2))
})
