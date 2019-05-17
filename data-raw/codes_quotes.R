## code to prepare `codes_quotes` dataset goes here

library(googlesheets)
library(readxl)
library(dplyr)

gs_auth()
sh <- gs_key("1DQvbosHqwUoC8aIPxIZjQ4MmDCXLP0W7SbkAlYsuTAo")
gs_download(sh, to="code_quotes.xlsx", overwrite=TRUE)

codes <- read_xlsx("code_quotes.xlsx", sheet="codes") %>%
  select(-1)

code_quotes <- read_xlsx("code_quotes.xlsx", sheet="codes_quotes") %>%
  select(-interview)


# check if all quotes have codes
aj1 <- anti_join(
  codes,
  code_quotes,
  by = "code"
)
stopifnot(nrow(aj1) == 0)

# Check if all codes have quotes
aj2 <- anti_join(
  code_quotes,
  codes,
  by = "code"
)
stopifnot(nrow(aj2) == 0)

unlink("code_quotes.xlsx")

usethis::use_data(codes, internal=TRUE, overwrite=TRUE)
usethis::use_data(code_quotes, internal=TRUE, overwrite=TRUE)
