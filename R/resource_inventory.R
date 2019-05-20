resource_inventory_data <- function() {
  code_quotes %>%
    dplyr::mutate(
      quote = gsub("\\(In.+\\)$", "", trimws(quote))
    ) %>%
    dplyr::group_by(.data$code) %>%
    dplyr::summarise(
      quotes = paste(paste0("> ", quote), collapse="\n\n")
    ) %>%
    left_join(
      codes,
      by = "code"
    )
}



resource_inventory <- function() {
  d <- resource_inventory_data()

  for(i in seq(1, nrow(d))) {
    with(d[i, , drop=FALSE], {
      cat("## ", label, " (`", code, "`)", "\n", sep="")
      cat("\n")
      cat(text)
      cat("\n\n")
      cat(quotes)
      cat("\n\n\n")
    } )
  }
}






resource_inventory2 <- function() {
  d <- resource_inventory_data()

  for(i in seq(1, nrow(d))) {
    with(d[i, , drop=FALSE], {
      cat(label, " (`", code, "`)", "\n", sep="")
      cat(": ", text, "\n", sep="")
      cat("\n")
      cat(quotes)
      cat("\n\n")
    } )
  }

}
