% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gigwa.R
\name{gigwa_get_markers}
\alias{gigwa_get_markers}
\title{Get Markers Map in the Selected GIGWA Run}
\usage{
gigwa_get_markers(start = NULL, end = NULL, chrom = NULL, simplify = TRUE)
}
\arguments{
\item{start}{Start position of the query region (zero-based, inclusive).}

\item{end}{End position of the query region (zero-based, exclusive).}

\item{chrom}{Reference sequence name (e.g., chromosome).}

\item{simplify}{Logical, if TRUE (default) returns data in a simplified HapMap-like format with columns for rs#, alleles, chromosome, and position.}
}
\value{
A data frame of SNP markers, optionally simplified to include rs#, alleles, chromosome, and position.
}
\description{
Retrieve a filtered list of SNP variants from the selected run. This function allows users to query variants
based on chromosomal regions and return results in simplified format.
}
\examples{
if (interactive()) {
  set_qbms_config("https://gigwa.southgreen.fr/gigwa/", 
                  time_out = 300, engine = "gigwa", no_auth = TRUE)
  gigwa_set_db("Sorghum-JGI_v1")
  gigwa_set_project("Nelson_et_al_2011")
  gigwa_set_run("run1")
  chroms <- gigwa_get_sequences()
  geno_map <- gigwa_get_markers(start = 0, end = 12345678, chrom = chroms[7])
}
}
\author{
Khaled Al-Shamaa (\email{k.el-shamaa@cgiar.org})
}
