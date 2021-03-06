% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/resources.R
\docType{data}
\name{resources}
\alias{resources}
\title{Resource contributions to collaborations}
\format{A tibble with 1761 rows and 4 columns:
\describe{
\item{id_interview}{ID number of the interview}
\item{from}{Node ID unique within the interview of scientist contributing a resource}
\item{to}{Node ID unique within the interview of scientist receiving the resource}
\item{code}{Name of the resource}
}}
\source{
\url{https://recon.icm.edu.pl}
}
\usage{
resources
}
\description{
An edgelist of a directed ego-networks identified by \code{id_interview} of
resources contributed by scientist \code{from} to scientist \code{to}.
}
\keyword{datasets}
