#' @title String Search
#'
#' @description Search for a specific string in text.
#'
#' @usage search_str(text = "Search for string", string = "string")
#'
#' @param text The text to perform search on.
#' @param string The string you want to search for in the text. Must be inside " ".
#'
#' @import tidyverse
#'
#' @export





search_str <- function(text = text, string = " " ){
  x<-grepl(paste(string), text)
  if (x == TRUE){
    print(paste0(paste(string), " is present."))
  } else{
    print(paste0(paste(string), " cannot be found."))
  }
}



