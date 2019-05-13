library(recondata)

nodes <- recondata:::publish_node_attributes()

readr::write_csv(nodes, "nodes.csv")

usethis::use_data(nodes)
