#' ArsQuanta ggplot2 theme
#'
#' @param base_size
#' @param base_family
#' @export
#' @import ggplot2
#' @importFrom ggthemes theme_foundation
#' @examples
#' library(ggplot2)
#' p <- ggplot(mtcars,aes(x = mpg,y = hp)) +
#'       geom_point(aes(color = cyl)) +
#'       labs(color = "Color",x = "MPG",y = "Horsepower") +
#'       theme_arsquanta()
#' p
theme_arsquanta <- function(base_size = 12, base_family = "sans") {
  (theme_foundation(base_size = base_size, base_family = base_family)
   + theme(
     line = element_line(),
     rect = element_rect(fill = NA,linetype = 0, colour = NA),
     text = element_text(colour = rgb(60, 60, 60, max = 255)),
     axis.title = element_text(face = "bold"),
     axis.title.y = element_text(angle = 90,vjust = 1),
     axis.title.x = element_text(vjust = 0),
     axis.text = element_text(),
     axis.ticks = element_blank(),
     axis.line = element_blank(),
     legend.background = element_rect(),
     legend.position = "bottom",
     legend.direction = "horizontal",
     legend.box = "vertical",
     legend.title = element_text(face = "bold"),
     panel.grid = element_line(colour = NULL),
     panel.grid.major = element_line(colour = rgb(210, 210, 210, max = 255)),
     panel.grid.minor = element_blank(),
     plot.title = element_text(hjust = 0, size = rel(1.5), face = "bold"),
     plot.margin = unit(c(1, 1, 1, 1), "lines"),
     strip.background=element_rect()))
}

#' Print ggplot to device with ArsQuanta logo
#'
#' @param plot ggplot2 plot object
#' @param size default viewport size in lower right
#' @export
#' @import grid
#' @examples
#' library(ggplot2)
#' p <- ggplot(mtcars,aes(x = mpg,y = hp)) +
#'       geom_point(aes(color = cyl)) +
#'       labs(color = "Color",x = "MPG",y = "Horsepower") +
#'       theme_arsquanta()
#' p
#' arsq_draw_logo(p)
arsq_draw_logo <- function(plot,size = unit(2,"cm")){

  #Load ArsQuanta logo
  ars_logo <- load_logo()

  # Set up the layout for grid
  heights = unit.c(unit(1, "npc") - size,size)
  widths = unit.c(unit(1, "npc") - size,size)
  lo = grid.layout(2, 2, widths = widths, heights = heights)

  # Position the elements within the viewports
  grid.newpage()
  pushViewport(viewport(layout = lo))

  # The plot
  pushViewport(viewport(layout.pos.row=1:2, layout.pos.col = 1:2))
  print(plot, newpage=FALSE)
  popViewport()

  # The logo
  pushViewport(viewport(layout.pos.row=2, layout.pos.col = 2))
  print(grid.draw(ars_logo), newpage=FALSE)
  popViewport()
  popViewport()
}

#' Load ArsQuanta Logo File
#'
#' @export
#' @import png
load_logo <- function(){
  img <- readPNG(system.file("extdata/AQ_M.png",package = "aqtheme"))
  ars_logo <- rasterGrob(img)
  ars_logo
}
