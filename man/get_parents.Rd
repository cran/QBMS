% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pedigree.R
\name{get_parents}
\alias{get_parents}
\title{Get Direct Parents}
\usage{
get_parents(pedigree)
}
\arguments{
\item{pedigree}{A string providing the parentage through which a cultivar was obtained.}
}
\value{
A vector of two items representing the direct female and male parents. If parent information is unavailable or unknown, 
`NA` is returned for the respective parent.
}
\description{
Utility function to split a given pedigree string and retrieve the pedigrees of the direct parents (female and male).
The function handles different formats of cross representations, such as single slashes (/), double slashes (//), 
or numbered crosses (e.g., /3/). It extracts the highest cross order when available and returns the sub-pedigree 
for the immediate parents.
}
\author{
Khaled Al-Shamaa, \email{k.el-shamaa@cgiar.org}
}
