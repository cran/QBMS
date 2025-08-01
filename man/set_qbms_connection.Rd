% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/brapi.R
\name{set_qbms_connection}
\alias{set_qbms_connection}
\title{Set the QBMS Connection}
\usage{
set_qbms_connection(env)
}
\arguments{
\item{env}{A list containing the saved connection configuration and state.}
}
\description{
Sets the QBMS connection object in the current environment, allowing users to restore
a saved connection, including configuration settings and session tokens.
}
\examples{
if(interactive()) {
  set_qbms_config("https://bms.icarda.org/ibpworkbench")
  
  login_bms()
  set_crop("wheat")
  set_program("Wheat International Nurseries")
  
  df1  <- get_germplasm_data("Jabal")
  con1 <- get_qbms_connection()
  
  set_qbms_config("https://gigwa.southgreen.fr/gigwa/", engine = "gigwa", no_auth = TRUE)
  
  gigwa_set_db("DIVRICE_NB")
  gigwa_set_project("refNB")
  gigwa_set_run("03052022")
  
  df2  <- gigwa_get_metadata()
  con2 <- get_qbms_connection()
  
  set_qbms_connection(con1)
  df3 <- get_germplasm_attributes("Jabal")
}

}
\seealso{
\code{\link{get_qbms_connection}}
}
\author{
Khaled Al-Shamaa (\email{k.el-shamaa@cgiar.org})
}
