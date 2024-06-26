% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/parameters.R
\name{ModvegeParameters}
\alias{ModvegeParameters}
\title{Parameter Data Object}
\description{
Data structure that contains site and vegetation parameters necessary for
the configuration of an growR simulation run.
}
\note{
Programmatically speaking, all parameters described under \emph{Parameter
description} are also fields of this R6Class.
}
\section{Parameter description}{
The following is a list and description of model parameters, including
the vegetation parameters, which are defined through the functional group
composition.
\subsection{Site and model parameters}{
\itemize{
\item \code{LON} geographic longitude of site in degree.
\item \code{LAT} geographic latitude of site in degree.
\item \code{ELV} geographic elevation of site in m.a.s.l.
\item \code{WHC} water-holding capacity of site in mm.
\item \code{NI} site nutritional index (dimensionless).
\item \code{RUEmax} maximum radiuation use efficiency in g DM per MJ.
\item \code{w_FGA} relative weight of functional group A.
\item \code{w_FGB} relative weight of functional group B.
\item \code{w_FGC} relative weight of functional group C.
\item \code{w_FGD} relative weight of functional group D.
\item \code{sigmaGV} rate of GV respirative biomass loss (dimensionless).
\item \code{sigmaGR} rate of GR respirative biomass loss (dimensionless).
\item \code{T0} photosynthesis activation temperature (degree C).
\item \code{T1} photosynthesis plateau temperature (degree C).
\item \code{T2} photosynthesis max temperature (degree C).
\item \code{KGV} basic senescence rate GV (dimensionless).
\item \code{KGR} basic senescence rate GR (dimensionless).
\item \code{KlGV} basic abscission rate GV (dimensionless).
\item \code{KlGR} basic abscission rate GR (dimensionless).
\item \code{maxOMDDV} organic matter digestibility in gram per gram DV.
\item \code{minOMDDR} organic matter digestibility in gram per gram DR.
\item \code{CO2_growth_factor} strength of effect of CO2 concentration on growth. See
parameter \emph{b} in \code{\link[=fCO2_growth_mod]{fCO2_growth_mod()}}.
\item \code{crop_coefficient} multiplicative factor K~c~ by which
reference evapotranspiration ET~0~ has to be multiplied to get the crop
evapotranspiration ET~c~:
ET~c~ = K~c~ ET~0~
\item \code{senescence_cap} fraction c~s~ of \emph{GRO} to which \emph{SEN} is
limited: SEN~i~^max^ = c~s~ GRO~i~
for \emph{i} in \emph{GV}, \emph{GR}. Makes it less likely for grass population to die out.
Can be set to large values in order to effectively disable senescence capping.
\item \code{stubble_height} float. Minimum height the grass can assume. The
biomass will not fall below that height. This effectively presents a simple
model of \emph{plant reserves}.
\item \code{SGS_method} string. Choice of method to determine the start of the growing
season. Can be either \code{"MTD"} for the multicriterial thermal definition
(see \code{\link[=start_of_growing_season_mtd]{start_of_growing_season_mtd()}}) or \code{"simple"} for a commonly used
approach as described in \code{\link[=start_of_growing_season]{start_of_growing_season()}}).
}
}

\subsection{Initial conditions}{
\itemize{
\item \code{AgeGV} Age of green vegetative matter in degree Celsius days.
\item \code{AgeGR} Age of green reproductive matter in degree Celsius days.
\item \code{AgeDV} Age of dead vegetative matter in degree Celsius days.
\item \code{AgeDR} Age of dead reproductive matter in degree Celsius days.
\item \code{BMGV} biomass of GV (kg DM per ha).
\item \code{BMGR} biomass of GR (kg DM per ha).
\item \code{BMDV} biomass of DV (kg DM per ha).
\item \code{BMDR} biomass of DR (kg DM per ha).
\item \code{BMDR} biomass of DR (kg DM per ha).
\item \code{SENG} senescence of GV (kg DM per ha).
\item \code{SENG} senescence of GR (kg DM per ha).
\item \code{ABSG} abscission of DV (kg DM per ha).
\item \code{ABSG} abscission of DR (kg DM per ha).
\item \code{ST} thermal time (degree days).
\item \code{cBM} cumulative total biomass (kg per ha).
}
}

\subsection{Vegetation parameters}{
\itemize{
\item \code{SLA} Specific Leaf Area in m^2^ per g.
\item \code{pcLAM} Percentage of laminae (number between 0 and 1).
\item \code{ST1} Temperature sum in degree Celsiues days after which the
seasonality function \code{SEA} starts to decrease from its maximum plateau.
See also \code{\link[=SEA]{SEA()}}.
\item \code{ST2} Temperature sum in degree Celsiues days after which the
seasonality function \code{SEA} has decreased back to its minimum value.
See also \code{\link[=SEA]{SEA()}}.
\item \code{maxSEA} Maximum value of the seasonality function \code{\link[=SEA]{SEA()}}
\item \code{minSEA} Minimum value of the seasonality function \code{\link[=SEA]{SEA()}}. Usually,
\code{minSEA = 1 - (maxSEA - 1)}.
\item \code{maxOMDGV} Maximum organic matter digestability for green vegetative
matter in arbitrary units.
\item \code{minOMDGV} Minimum organic matter digestability for green vegetative
matter in arbitrary units.
\item \code{maxOMDGR} Maximum organic matter digestability for green reproductive
matter in arbitrary units.
\item \code{minOMDGR} Minimum organic matter digestability for green reproductive
matter in arbitrary units.
\item \code{BDGV} Bulk density of green vegetative dry matter in g per m^3^.
\item \code{BDDV} Bulk density of dead vegetative dry matter in g per m^3^.
\item \code{BDGR} Bulk density of green reproductive dry matter in g per m^3^.
\item \code{BDDR} Bulk density of dead reproductive dry matter in g per m^3^.
\item \code{fg_parameter_names} Vector of strings of the variable names of all
vegetation parameters governed by functional group composition.
}
}
}

\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{required_parameter_names}}{Names of parameters that do not have a
default value and are therefore strictly required.}

\item{\code{parameter_names}}{Names of all required and optional parameters and
state variables.}

\item{\code{n_parameters}}{Number of total parameters.}

\item{\code{functional_group}}{The \link{FunctionalGroup} instance holding the
vegetation parameters.}

\item{\code{fg_parameter_names}}{Names of vegetation parameters defined by the
functional group composition.}

\item{\code{initial_condition_names}}{Names of initial conditions.}

\item{\code{param_file}}{Name of the parameter file from which initial parameter
values were read.}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-ModvegeParameters-new}{\code{ModvegeParameters$new()}}
\item \href{#method-ModvegeParameters-read_parameters}{\code{ModvegeParameters$read_parameters()}}
\item \href{#method-ModvegeParameters-set_parameters}{\code{ModvegeParameters$set_parameters()}}
\item \href{#method-ModvegeParameters-update_functional_group}{\code{ModvegeParameters$update_functional_group()}}
\item \href{#method-ModvegeParameters-check_parameters}{\code{ModvegeParameters$check_parameters()}}
\item \href{#method-ModvegeParameters-clone}{\code{ModvegeParameters$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ModvegeParameters-new"></a>}}
\if{latex}{\out{\hypertarget{method-ModvegeParameters-new}{}}}
\subsection{Method \code{new()}}{
Constructor
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ModvegeParameters$new(param_file = NULL)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{param_file}}{Name of file containing the site and vegetation
parameters.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ModvegeParameters-read_parameters"></a>}}
\if{latex}{\out{\hypertarget{method-ModvegeParameters-read_parameters}{}}}
\subsection{Method \code{read_parameters()}}{
Read parameters from parameter file

Reads in parameters from the supplied \emph{param_file} and stores them in
internal fields.

This function carries out some basic sanity checks of
the supplied \emph{param_file} and reports on unidentified and missing
parameter names.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ModvegeParameters$read_parameters(param_file)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{param_file}}{Path or name of file to read parameters from.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
P List with field names as in the class variable
\code{parameter_names}.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ModvegeParameters-set_parameters"></a>}}
\if{latex}{\out{\hypertarget{method-ModvegeParameters-set_parameters}{}}}
\subsection{Method \code{set_parameters()}}{
Savely update the given parameters

This is the preferred method for changing the internal parameter
values, because special care is taken to account for potential
changes to functional group weights.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ModvegeParameters$set_parameters(params)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{params}}{List of name-value pairs of the parameters to update.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ModvegeParameters-update_functional_group"></a>}}
\if{latex}{\out{\hypertarget{method-ModvegeParameters-update_functional_group}{}}}
\subsection{Method \code{update_functional_group()}}{
Update functional group parameters

Should be run whenever the functional group composition is changed in
order to reflect the changes in the parameter list \code{self$P}.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ModvegeParameters$update_functional_group()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ModvegeParameters-check_parameters"></a>}}
\if{latex}{\out{\hypertarget{method-ModvegeParameters-check_parameters}{}}}
\subsection{Method \code{check_parameters()}}{
Parameter Sanity Check
Ensure that the supplied \emph{params} are valid ModVege parameters and,
if requested, check that all required parameters are present.
Issues a warning for any invalid parameters and throws an error if
completeness is not satisfied (only when \code{check_for_completeness =  TRUE}).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ModvegeParameters$check_parameters(param_names, check_for_completeness = TRUE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{param_names}}{A list of parameter names to be checked.}

\item{\code{check_for_completeness}}{Boolean Toggle whether only the
validity of supplied \emph{param_names} is checked or whether we
want to check that all required parameters to be present
(default). In the latter case, if any required parameter is
missing, an error is thrown.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
not_known The list of unrecognized parameter names.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ModvegeParameters-clone"></a>}}
\if{latex}{\out{\hypertarget{method-ModvegeParameters-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ModvegeParameters$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
