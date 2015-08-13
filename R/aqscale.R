#' Qualitative Color Scales for ArsQuanta
#'
#' At the moment this simply redirects to RColorBrewer's Set1,
#' and so is only appropriate for qualitative scales.
#'
#' @export
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
scale_fill_arsquanta <- function(...){
  scale_fill_brewer(type = "qual",palette = "Set1",...)
}

