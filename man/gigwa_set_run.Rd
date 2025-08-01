% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gigwa.R
\name{gigwa_set_run}
\alias{gigwa_set_run}
\title{Set the Current Active GIGWA Run}
\usage{
gigwa_set_run(run_name)
}
\arguments{
\item{run_name}{The name of the run to set as active.}
}
\value{
No return value. Updates the internal state with the selected run.
}
\description{
Select a run from the active GIGWA project and set it as the current active run in the
internal state, enabling further data retrieval operations.
}
\examples{
if (interactive()) {
  set_qbms_config("https://gigwa.southgreen.fr/gigwa/", 
                  time_out = 300, engine = "gigwa", no_auth = TRUE)
  gigwa_set_db("Sorghum-JGI_v1")
  gigwa_set_project("Nelson_et_al_2011")
  gigwa_set_run("run1")
}
}
\seealso{
\code{\link{set_qbms_config}}, \code{\link{gigwa_set_project}}, \code{\link{gigwa_list_runs}}
}
\author{
Khaled Al-Shamaa (\email{k.el-shamaa@cgiar.org})
}
