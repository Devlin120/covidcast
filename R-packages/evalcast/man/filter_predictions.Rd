% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/filter_predictions.R
\name{filter_predictions}
\alias{filter_predictions}
\title{Filter a list of predictions cards based on attributes}
\usage{
filter_predictions(
  predictions_cards,
  name_of_forecaster = NULL,
  response_data_source = NULL,
  response_signal = NULL,
  forecast_date = NULL,
  incidence_period = NULL,
  ahead = NULL,
  geo_type = NULL
)
}
\arguments{
\item{predictions_cards}{List of predictions cards, as created by \code{\link[=get_predictions]{get_predictions()}}.}

\item{name_of_forecaster}{String indicating name of the forecaster.}

\item{response_data_source}{String indicating response data source.}

\item{response_signal}{String indicating response signal.}

\item{forecast_date}{Date object or string of the form "YYYY-MM-DD",
indicating date on which forecasts will be made about some period (e.g.,
epiweek). For example, if \code{forecast_date = "2020-05-11"}, \code{incidence_period = "day"}, and \code{ahead = 3}, then, we'd be making forecasts for "2020-05-14".}

\item{incidence_period}{String indicating the incidence period, either
"epiweek" or "day".}

\item{ahead}{Vector of (one or more) integers. How many epiweeks/days ahead
are you forecasting? If \code{incidence_period = "epiweek"} and forecast_date is
Sunday or Monday, then \code{ahead = 1} means the epiweek that includes the
forecast date; if \code{forecast_date} falls on a Tuesday through Saturday, then
it is the following epiweek. If \code{incidence_period = "day"}, then \code{ahead = 1} means the day after forecast date.}

\item{geo_type}{String indicating geographical type, one of "county", "dma",
"hrr", "msa", or "state".}
}
\description{
Filter a list of predictions cards based on attributes
}
