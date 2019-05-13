library(recondata)
collaboration <- recondata:::publish_collaboration()
readr::write_csv(collaboration, "collaboration.csv")
usethis::use_data(collaboration, overwrite=TRUE)
