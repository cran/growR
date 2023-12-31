% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/support_functions.R
\name{fCO2_transpiration_mod}
\alias{fCO2_transpiration_mod}
\title{CO2 transpiration modifier}
\usage{
fCO2_transpiration_mod(c_CO2, c_ref = 360)
}
\arguments{
\item{c_CO2}{numeric Atmospheric CO2 concentration in ppm}

\item{c_ref}{numeric Reference CO2 concentration in ppm.}
}
\description{
Function describing the effects of elevated CO2 on transpiration.
}
\details{
The function for the effect on transpiration is from equations (2-6) in
Kruijt et al.

It appears in this paper that there is a small formal mistake in said
equations.
With the stated values, it is not possible to reproduce the tabulated
values of $c$ close to 1, as in their table 3. Instead, we conclude that
equation (4) should read:

\if{html}{\out{<div class="sourceCode">}}\preformatted{  c = 1 + s_gs * s_T * F_T * deltaCO2
}\if{html}{\out{</div>}}

with the multiplicative terms giving small negative numbers.
The factors $s_gs$, $s_T$ and $F_T$ for grasslands are taken from pages
260 and 261 in Kruijt et al. where we averaged over the stated ranges to
get:

\if{html}{\out{<div class="sourceCode">}}\preformatted{  c ~= 1 + 0.0001 * deltaCO2
}\if{html}{\out{</div>}}
}
\examples{
fCO2_transpiration_mod(420)
# The modifier is always relative to *c_ref*. This returns 1.
fCO2_transpiration_mod(420, c_ref = 420)

}
\references{
\insertRef{kruijt2008EffectsRisingAtmospheric}{growR}
}
