#' Plot a data model
#'
#' @export
plot_data_model <- function() {
  suppressMessages(requireNamespace("datamodelr"))
  datamodelr::dm_create_graph(
    data_model(),
    rankdir="BT",
    col_attr = c("column", "type"),
    columnArrows = FALSE
  )
}




data_model <- function() {
  requireNamespace("datamodelr")
  collaboration <- reconqdata::collaboration
  nodes <- reconqdata::nodes
  resources <- reconqdata::resources
  dm <- datamodelr::dm_from_data_frames(
    collaboration,
    nodes,
    resources
  )
  datamodelr::dm_add_references(
    dm,
    resources$id_interview == nodes$id_interview,
    collaboration$id_interview == nodes$id_interview,
    resources$from == nodes$id_node,
    resources$to == nodes$id_node,
    collaboration$from == nodes$id_node,
    collaboration$to == nodes$id_node
  )
}

