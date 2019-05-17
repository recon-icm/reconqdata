files=reconqdata

default: $(files:=.html)

render=Rscript -e 'rmarkdown::render("$<", output_format="$(of)")'

$(files:=.html): of=bookdown::html_document2
$(files:=.docx): of=bookdown::word_document2
$(files:=.md): of=github_document

%.html %.docx %.md: %.Rmd
	$(render)

