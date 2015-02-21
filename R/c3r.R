#' <Add Title>
#'
#' <Add Description>
#'
#' @import htmlwidgets
#'
#' @export
c3r <- function(message, width = NULL, height = NULL) {

  # forward options using x
  x = list(
    message = message
  )

  # create widget
  htmlwidgets::createWidget(
    name = 'c3r',
    x,
    width = width,
    height = height,
    package = 'c3r'
  )
}

#' Widget output function for use in Shiny
#'
#' @export
c3rOutput <- function(outputId, width = '100%', height = '400px'){
  shinyWidgetOutput(outputId, 'c3r', width, height, package = 'c3r')
}

#' Widget render function for use in Shiny
#'
#' @export
renderC3r <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  shinyRenderWidget(expr, c3rOutput, env, quoted = TRUE)
}
