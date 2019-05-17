
resource_inventory <- function() {
  code_quotes %>%
    mutate(
      quote = gsub("\\(In.+\\)$", "", trimws(quote))
    ) %>%
    group_by(code) %>%
    summarise(
      quotes = paste(paste0("> ", quote), collapse="\n\n")
    ) %>%
    left_join(
      codes,
      by = "code"
    ) -> d

  for(i in seq(1, nrow(d))) {
    with(d[i, , drop=FALSE], {
      cat("## ", label, " (`", code, "`)", "\n", sep="")
      cat("\n")
      cat(quotes)
      cat("\n\n\n")
    } )
  }
}
