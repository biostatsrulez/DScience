#' @title Custom ggtheme 2
#'
#' @author David B
#'
#' @description Another custom ggtheme with a gnarly black background. I plan to add to this
#' in the future.
#'
#' @usage my_theme2()
#'
#'
#'
#' @import ggplot2
#'
#' @export


# 4. A custom theme in ggplot #
my_theme2 <- function(){
  theme(
    axis.title.x = element_blank()
    ,axis.ticks.x = element_blank()
    ,axis.text.x = element_text(color = "White")
    ,axis.title.y = element_text(color = "White")
    ,axis.text.y = element_text(color = "white")
    ,legend.position = "top"
    ,plot.background = element_rect(fill = "black")
  )
}


