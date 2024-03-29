% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qbms.R
\name{get_trial_obs_ontology}
\alias{get_trial_obs_ontology}
\title{Get the Traits Ontology/Metadata of the Current Active Trial}
\usage{
get_trial_obs_ontology()
}
\value{
A data frame of the traits ontology/metadata.
}
\description{
Retrieves the traits ontology/metadata of the current active trial as 
configured in the internal state object using the `set_trial()` function.
}
\examples{
if(interactive()) {
  # Configure your server connection
  set_qbms_config("https://bms.icarda.org/ibpworkbench")

  # Login using your account (interactive mode)
  # You can pass your username and password as parameters (batch mode)
  login_bms()

  # Select a crop by name
  set_crop("wheat")

  # Select a breeding program by name
  set_program("Wheat International Nurseries")

  # Select a specific study/trial by name
  set_trial("IDYT39")

  # Get observation variable ontology
  ontology <- get_trial_obs_ontology()
}

}
\seealso{
\code{\link{login_bms}}, \code{\link{set_crop}}, \code{\link{set_program}}, \code{\link{set_trial}}
}
\author{
Khaled Al-Shamaa, \email{k.el-shamaa@cgiar.org}
}
