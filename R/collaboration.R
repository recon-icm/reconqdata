#' Collaboration networks
#'
#' Edge list of an undirected graph linking scientists with collaboration ties.
#'
#' @format A tibble with 1722 rows and 3 columns:
#' \describe{
#'   \item{id_interview}{ID number of the interview}
#'   \item{from,to}{Node IDs unique within the interview of two collaborating scientists}
#' }
#'
#' @source \url{https://recon.icm.edu.pl}
"collaboration"
