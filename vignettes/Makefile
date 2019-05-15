files=reconqdata

default: $(files:=.html)

%.html: %.Rmd
	Rscript -e 'rmarkdown::render("$<", output_format="bookdown::html_document2")'

%.docx: %.Rmd
	Rscript -e 'rmarkdown::render("$<", output_format="bookdown::word_document2")'
