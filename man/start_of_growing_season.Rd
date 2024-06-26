% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/support_functions.R
\name{start_of_growing_season}
\alias{start_of_growing_season}
\title{Determine start of growing season}
\usage{
start_of_growing_season(temperatures)
}
\arguments{
\item{temperatures}{vector Daily average temperatures in degree Celsius.}
}
\description{
This implements a conventional method for the determination of the start of 
the growing season (SGS) based on daily average temperatures.
}
\details{
A temperature sum is constructed using [weighted_temperature_sum()], i.e. 
by summing the average daily temperature for each day, but applying a 
weight factor of 0.5 for January and 0.75 for February.

The SGS is defined as the first day where the so constructed temperature sum 
crosses 200 degree days.
}
\examples{
ts = rep(2, 365)
start_of_growing_season(ts)

}
\seealso{
[start_of_growing_season_mtd()], [weighted_temperature_sum()]
}
