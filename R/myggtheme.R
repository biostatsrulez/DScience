#' @title Custom ggtheme
#'
#' @author David B
#'
#' @description My custom ggtheme with a nice blue background. I plan to add to this
#' in the future.
#'
#' @usage my_theme()
#'
#'
#'
#' @import ggplot2
#'
#' @export


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

