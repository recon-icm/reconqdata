
data_model <- function() {
  requireNamespace("datamodelr")
  dm <- dm_from_data_frames(reconqdata::collaboration, reconqdata::nodes, reconqdata::resources)
  dm_add_references(
    dm,
    resources$id_interview == nodes$id_interview,
    resources$from == nodes$id_node,
    resources$to == nodes$id_node,
    collaboration$id_interview == nodes$id_interview,
    collaboration$from == nodes$id_node,
    collaboration$to == nodes$id_node
  )
}

plot_data_model <- function() {
  requireNamespace("datamodelr")
  dm_create_graph(
    data_model(),
    rankdir="BT",
    col_attr = c("column", "type"),
    columnArrows = TRUE
  )
}

