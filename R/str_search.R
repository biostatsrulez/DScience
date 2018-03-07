#' @title String Search
#'
#' @description Search for a specific string in text.
#'
#' @usage search_str(text = , string = " ")
#'
#' @param text A character vector to perform search on.
#' @param string The string you want to search for in the text. Must be inside " ".
#'
#' @import tidyverse
#'
#' @export





search_str <- function(text = text, string = " " ){
  y <- length(grep(paste(string), text))
  if (y >= 1){
    print(paste0(paste(string), " is present ", y, " times."))

  } else{
    print(paste0(paste(string), " cannot be found."))
  }
}





