% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utilities.R
\name{read_config}
\alias{read_config}
\title{Read simulation run configurations from file}
\usage{
read_config(config_file, input_dir = NULL)
}
\arguments{
\item{config_file}{Path to the configuration file to be read.}

\item{input_dir}{Path to directory where input files are located. Defaults
to \code{getOptions("growR.input_dir", default = file.path("input"))}.}
}
\value{
A list of \link{ModvegeEnvironment} instances corresponding to the
configurations in the order they appear in \emph{config_file}.
}
\description{
The format of the configuration file is expected to contain 6
space-separated columns representing, in order:
\describe{
\item{site_name}{Name of simulated site. This is used, for example,
when an output file is created.}
\item{run_name}{Name of this simulation run. Used to differentiate
between different runs at the same site. Can be \code{-} to indicate
no particular name, in which case nothing will be appended in
the resulting output file.}
\item{year(s)}{Specification of years to be simulated. Either a single
number or a sequence in R's \code{:} notation, i.e. \code{2013:2022} to
indicate all years from 2013 to (including) 2022.}
\item{param_file}{Filename (not full path) of parameter file to use.
The file is assumed to be located in \emph{input_dir} (confer
documentation for that parameter).}
\item{weather_file}{Filename (not full path) of weather file. See also
\emph{param_file}.}
\item{management_file}{Filename (not full path) of management file.
See also \emph{param_file}. Can be set to \code{high}, \code{middle}, \code{low} or
\code{-} if no management data is to be used and the \emph{autocut}
routine shall be employed to simulate cutting events.}
}
Rows starting with a \verb{#} are skipped.
}
\examples{
# First, we set up the expected directory structure in a temporary place
tmp = file.path(tempdir(), "test-read_config")
dir.create(tmp)

# We need `force = TRUE` here in order to make the example work in 
# non-interactive settings.
setup_directory(root = tmp, include_examples = TRUE, force = TRUE)

# Now we can test `read_config`.
read_config(file.path(tmp, "example_config.txt"),
            input_dir = file.path(tmp, "input"))


}
