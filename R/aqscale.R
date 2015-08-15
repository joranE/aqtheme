#' Qualitative Color Scales for ArsQuanta
#'
#' At the moment this simply redirects to RColorBrewer's Set1,
#' and so is only appropriate for qualitative scales.
#'
#' @export
#' @examples
#' #' library(ggplot2)
#' #For qualitative (categorical) variables only
#' p <- ggplot(mtcars,aes(x = mpg,y = hp)) +
#'       geom_point(aes(color = factor(cyl))) +
#'       scale_color_arsquanta() +
#'       labs(color = "Color",x = "MPG",y = "Horsepower") +
#'       theme_arsquanta()
#' p
scale_color_arsquanta <- function(...){
  scale_color_brewer(type = "qual",palette = "Set1",...)
}

#' @export
scale_colour_arsquanta <- scale_color_arsquanta

#' Qualitative Fill Scales for ArsQuanta
#'
#' At the moment this simply redirects to RColorBrewer's Set1,
#' and so is only appropriate for qualitative scales.
#'
#' @export
#' @examples
#' library(ggplot2)
#' #For qualitative (categorical) variables only
#' p <- ggplot(mtcars,aes(x = factor(cyl),y = mpg,fill = factor(cyl))) +
#' geom_boxplot() +
#' scale_fill_arsquanta() +
#' theme_arsquanta()
#'
#' p
scale_fill_arsquanta <- function(...){
  scale_fill_brewer(type = "qual",palette = "Set1",...)
}

