% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/http.R
\name{brapi_get_call}
\alias{brapi_get_call}
\title{Internal Function for Core BrAPI GET Calls}
\usage{
brapi_get_call(call_url, nested = TRUE, caller_func = NA)
}
\arguments{
\item{call_url}{Character string specifying the base URL of the API endpoint to request.}

\item{nested}{Logical value indicating whether to flatten nested lists in the JSON responses. Defaults to \code{TRUE}.}

\item{caller_func}{Character string identifying the name of the function that invoked \code{brapi_get_call()}.}
}
\value{
A list containing the consolidated data and associated metadata from the API response.
}
\description{
Fetches data from an API endpoint, handles pagination by retrieving all pages, and consolidates the results into a single data frame.
}
\details{
This function performs the following steps:
\enumerate{
  \item Fetches the first page synchronously to determine the total number of pages.
  \item If multiple pages exist, it asynchronously fetches the remaining pages using \code{get_async_pages()}.
  \item Consolidates the data from all pages into a single data frame.
  \item Updates global state variables with pagination information.
}
It relies on global variables from \code{qbms_globals} to manage state and configuration.
}
\author{
Khaled Al-Shamaa (\email{k.el-shamaa@cgiar.org})
}
