\name{guess_game}
\alias{guess_game}
\title{
Guessing Game
}
\description{
A simple 2 player game where each person guesses a number between 1 and max-value. The person closest to the randomly generated number wins!.
}
\usage{
guess_game(max, guess1, guess2)
}
\arguments{
  \item{max}{
Max-value for possible numbers to be guessed.
}
  \item{guess1}{
Player 1's guess. Must be between 1 and max-value.
}
  \item{guess2}{
Player 2's guess. Must be between 1 and max-value.
}
}

\details{
Outputs the winner, and the randomly generated number.
}


\author{
DB
}


\examples{
guess_game(10, 5, 3)
}
