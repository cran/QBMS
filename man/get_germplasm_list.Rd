% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qbms.R
\name{get_germplasm_list}
\alias{get_germplasm_list}
\title{Get the Germplasm List of the Current Active Study}
\usage{
get_germplasm_list()
}
\value{
A data frame containing the germplasm list for the active study.
}
\description{
Retrieves the list of germplasm (genetic material) used in the currently active study, 
which must be set using the \code{\link{set_study}} function.
}
\examples{
if (interactive()) {
  set_qbms_config("https://bms.icarda.org/ibpworkbench")
  login_bms()
  set_crop("wheat")
  set_program("Wheat International Nurseries")
  set_trial("IDYT39")
  set_study("IDYT39 Environment Number 9")
  germplasm <- get_germplasm_list()
  head(germplasm)
}

}
\seealso{
\code{\link{login}}, \code{\link{set_crop}}, \code{\link{set_program}}, 
\code{\link{set_trial}}, \code{\link{set_study}} for related operations on crops and studies.
}
\author{
Khaled Al-Shamaa (\email{k.el-shamaa@cgiar.org})
}
