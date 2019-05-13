#' Nodes and their attributes
#'
#' A dataset containing nodes (scientists) and their attributes.
#'
#' @format A tibble with 374 rows and 7 columns:
#' \describe{
#'   \item{id_interview}{ID number of the interview}
#'   \item{id_node}{ID number of the scientist, unique within the interview}
#'   \item{is_ego}{Is the scientist the respondent, i.e. the ego}
#'   \item{is_polish}{Is scientist Polish or foreign}
#'   \item{department}{Marking scientists if they work at the same department.
#'   If `department` is not `NA` then all scientist within the same interview
#'   sharing the same value of `department` work at the same department at the
#'   same university}
#'   \item{scidegree}{Scientific degree of the scientist. One of "mgr"=MA,
#'   "dr"=PhD, "drhab"=habilitated doctor, or "prof"=full professor}
#'   \item{female}{Is the scientist female}
#' }
#'
#' @source \url{https://recon.icm.edu.pl}
"nodes"
