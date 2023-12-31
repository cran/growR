% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/support_functions.R
\name{get_relative_cut_contribution}
\alias{get_relative_cut_contribution}
\title{Relative cut contribution}
\usage{
get_relative_cut_contribution(DOY)
}
\arguments{
\item{DOY}{Integer representing the day of the year on which a cut occurs.}
}
\value{
The fraction (between 0 and 1) of biomass harvested at the cut at
given \emph{DOY} divided by the total annual biomass.
}
\description{
Get the fraction of the total annual harvested biomass that a cut at given
\emph{DOY} is expected to contribute.
}
\details{
The regression for the target biomass is based on Fig. S2 in the
supplementary material of Petersen et al. (2021).
}
\examples{
get_relative_cut_contribution(1)
get_relative_cut_contribution(150)
get_relative_cut_contribution(365)
# DOYs larger than 365 are insensible
get_relative_cut_contribution(600)

}
\references{
\insertRef{petersen2021DynamicSimulationManagement}{growR}
}
