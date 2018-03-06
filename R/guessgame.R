#' @title Two Player Guessing Game
#'
#' @author David B
#'
#' @description A two-player guessing game! Numbers that each player guess
#' range from 1 to Max.
#'
#'
#' @usage guess_game(max = 10 ,guess1 = 5 ,guess2 = 3)
#'
#' @param max Specificy the maximum possible value in the range of numbers
#' to be guessed.
#' @param guess1 Player one's guess.
#' @param guess2 Player two's guess.
#'
#'
#' @export


# Fourth Function #
guess_game <- function(max = 10, guess1 = 5, guess2 = 3){
  x <- runif(1, min = 1, max = max)
  diff1 <- abs(x - guess1)
  diff2 <- abs(x - guess2)
  if (diff1 < diff2){
    print("Player 1 Wins! The number was")
    print(x)
  } else{
    print("Player 2 Wins! The number was")
    print(x)
  }
}
