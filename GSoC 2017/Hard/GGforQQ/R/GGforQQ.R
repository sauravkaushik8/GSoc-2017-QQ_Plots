GeomQqLine <- ggplot2::ggproto(
  "GeomQqLine",
  ggplot2::Geom,
  default_aes = ggplot2::aes(y = Sample, x = Theoretical),
  required_aes = c("sample"),

  draw_panel = function(data, panel_params, coord, distribution, dparams) {
    ranges <- coord$range(panel_params)
    sample <- sort(data$sample)

    # Compute theoretical quantiles
    y <- quantile(sample[!is.na(sample)], c(0.25, 0.75))
    x <- do.call(distribution, c(list(p = c(0.25, 0.75)), dparams))
    slope <- diff(y)/diff(x)
    intercept <- y[1] - slope * x[1]

    data$x    <- ranges$x[1]
    data$xend <- ranges$x[2]
    data$y    <- ranges$x[1] * slope + intercept
    data$yend <- ranges$x[2] * slope + intercept

    GeomSegment$draw_panel(unique(data), panel_params, coord)
  },

  default_aes = ggplot2::aes(
    colour = "royalblue2",
      size = 0.5,
      linetype = 2,
      alpha = 1.0
  ),

  draw_key = ggplot2::draw_key_abline
)

#' @title Rudimentary Implementation Of Q-Q Line As A Geom In GGPLOT
#'
#' @description Rudimentary implementation of Q-Q line as a geom within GGPLOT performed for GSoC 2017 | Distributional assessments with Q Q plots | Test: Hard
#'
#' @inheritParams ggplot2::stat_qq
#'
#' @return NULL
#'
#' @examples ggplot2::ggplot(data = mtcars, mapping = aes(sample = mpg)) +
#' ggplot2::geom_qq(distribution = stats::qt, dparams = list(df = 2,ncp=3)) +
#' GGforQQ::geom_ggqqline(distribution = qt, dparams = list(df = 2,ncp=3))
#'
#'
#' @export
geom_ggqqline <- function(mapping = NULL,
                        data = NULL,
                        position = "identity",
                        distribution = stats::qcauchy,
                        dparams = list(),
                        na.rm = F,
                        inherit.aes = T) {
  layer(
    data = data,
    mapping = mapping,
    stat = StatIdentity,
    geom = GeomQqLine,
    position = position,
    inherit.aes = inherit.aes,
    params = list(
      distribution = distribution,
      dparams = dparams,
      na.rm = na.rm
    ))}
