#' <Add Title>
#'
#' <Add Description>
#'
#' @import htmlwidgets
#'
#' @export
c3_plot <- function(data, x, y, width = NULL, height = NULL) {

  eid <- sprintf("c3r-%s",
                 paste(sample(c(letters[1:6], 0:9), 30, replace=TRUE), collapse=""))

  # forward options using x
  params = list(
    data = data,
    x=x, # as.character(substitute(x))?
    y=y
    #target=sprintf("#%s", eid)
  )


  # create widget
  htmlwidgets::createWidget(
    name = 'c3r',
    x = params,
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
