library(recondata)
resources <- recondata:::publish_input_resources()
readr::write_csv(resources, "resources.csv")
usethis::use_data(resources, overwrite=TRUE)
