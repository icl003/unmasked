#' Trap Theme
#'
#' A custom theme for ggplot2 graphs which utilizes blues and peach tone colors. Organized in a consistent, pleasing way.
#'
#' @returns A custom ggplot2 theme.
#' @export
#'
#' @examples
#' data(mtcars)
#' ggplot2::ggplot(mtcars, ggplot2::aes(x = wt, y = mpg)) +
#'   ggplot2::geom_point() +
#'   theme_trap()
theme_trap <- function() {

  # set base theme and font family
  ggplot2::theme_minimal(
    base_family = "serif"
  ) +

    # text elements
    ggplot2::theme(

      # white background around the graph
      plot.background = ggplot2::element_rect(
        fill = "white",
        color = NA
      ),

      # very light peach background for the actual graph
      panel.background = ggplot2::element_rect(
        fill = "#FEF8F4",
        color = NA
      ),

      # dark blue for main title
      plot.title = ggplot2::element_text(
        size = 18,
        face = "bold",
        lineheight = 20,
        color = "#3A405A",
        margin = ggplot2::margin(b = 10)
      ),

      # light blue for the subtitle
      plot.subtitle = ggplot2::element_text(
        size = 12,
        color = "#52698f",
        margin = ggplot2::margin(b = 10)
      ),

      # cream for the caption
      plot.caption = ggplot2::element_text(
        size = 11,
        color = "#80563F",
        margin = ggplot2::margin(t = 15),
        hjust = 0
      ),

      # dark blue for axis labels
      axis.text = ggplot2::element_text(
        size = 9,
        color = "#3A405A"
      ),

      # dark blue for axis titles
      axis.title = ggplot2::element_text(
        color = "#3A405A"
      ),

      # line elements
      panel.grid.minor = ggplot2::element_blank(),

      # light blue for major gridlines
      panel.grid.major = ggplot2::element_line(
        linetype = "solid",
        linewidth = 0.15,
        color = "#99B2DD"
      ),

      # remove vertical gridlines
      panel.grid.major.x = ggplot2::element_blank(),

      # light blue for x-axis ticks
      axis.ticks.x = ggplot2::element_line(
        linetype = "solid",
        linewidth = 0.25,
        color = "#99B2DD"
      ),

      axis.ticks.length.x = ggplot2::unit(5, units = "pt"),

      # keep legend simple and clean
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_blank()
    )
}
