% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qbms.R
\name{set_crop}
\alias{set_crop}
\title{Set the Current Active Crop}
\usage{
set_crop(crop_name)
}
\arguments{
\item{crop_name}{A string specifying the name of the crop to set as active.}
}
\value{
No return value. The function updates the global state with the selected crop.
}
\description{
Updates the internal configuration to set the selected crop as the active one. This 
must be called before performing crop-specific operations such as retrieving breeding programs.
}
\examples{
if (interactive()) {
  set_qbms_config("https://bms.icarda.org/ibpworkbench")
  login_bms()  # Log in to the server
  set_crop("wheat")  # Set "wheat" as the active crop
}

}
\seealso{
\code{\link{login}}, \code{\link{list_crops}} to validate and retrieve the list of supported crops.
}
\author{
Khaled Al-Shamaa (\email{k.el-shamaa@cgiar.org})
}
