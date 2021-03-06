% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GGforQQ.R
\name{geom_ggqqline}
\alias{geom_ggqqline}
\title{Rudimentary Implementation Of Q-Q Line As A Geom In GGPLOT}
\usage{
geom_ggqqline(mapping = NULL, data = NULL, position = "identity",
  distribution = stats::qcauchy, dparams = list(), na.rm = F,
  inherit.aes = T)
}
\arguments{
\item{mapping}{Set of aesthetic mappings created by \code{\link{aes}} or
\code{\link{aes_}}. If specified and \code{inherit.aes = TRUE} (the
default), it is combined with the default mapping at the top level of the
plot. You must supply \code{mapping} if there is no plot mapping.}

\item{data}{The data to be displayed in this layer. There are three
   options:

   If \code{NULL}, the default, the data is inherited from the plot
   data as specified in the call to \code{\link{ggplot}}.

   A \code{data.frame}, or other object, will override the plot
   data. All objects will be fortified to produce a data frame. See
   \code{\link{fortify}} for which variables will be created.

   A \code{function} will be called with a single argument,
   the plot data. The return value must be a \code{data.frame.}, and
   will be used as the layer data.}

\item{position}{Position adjustment, either as a string, or the result of
a call to a position adjustment function.}

\item{distribution}{Distribution function to use, if x not specified}

\item{dparams}{Additional parameters passed on to \code{distribution}
function.}

\item{na.rm}{If \code{FALSE}, the default, missing values are removed with
a warning. If \code{TRUE}, missing values are silently removed.}

\item{inherit.aes}{If \code{FALSE}, overrides the default aesthetics,
rather than combining with them. This is most useful for helper functions
that define both data and aesthetics and shouldn't inherit behaviour from
the default plot specification, e.g. \code{\link{borders}}.}
}
\description{
Rudimentary implementation of Q-Q line as a geom within GGPLOT performed for GSoC 2017 | Distributional assessments with Q Q plots | Test: Hard
}
\examples{
ggplot2::ggplot(data = mtcars, mapping = aes(sample = mpg)) +
ggplot2::geom_qq(distribution = stats::qt, dparams = list(df = 2,ncp=3)) +
GGforQQ::geom_ggqqline(distribution = qt, dparams = list(df = 2,ncp=3))


}

