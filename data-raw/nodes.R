## code to prepare `nodes` dataset goes here

nodes <- recondata:::publish_node_attributes()

readr::write_csv(nodes, "nodes.csv")

usethis::use_data("nodes")
