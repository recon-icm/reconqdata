#' Resource contributions to collaborations
#'
#' An edgelist of a directed ego-networks identified by `id_interview` of
#' resources contributed by scientist `from` to scientist `to`.
#'
#' @format A tibble with 1761 rows and 4 columns:
#' \describe{
#'   \item{id_interview}{ID number of the interview}
#'   \item{from}{Node ID unique within the interview of scientist contributing a resource}
#'   \item{to}{Node ID unique within the interview of scientist receiving the resource}
#'   \item{code}{Name of the resource}
#' }
#'
#' @source \url{https://recon.icm.edu.pl}
"resources"
