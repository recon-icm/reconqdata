scripts=$(wildcard *.R)
data_files=$(addprefix ../data/,$(scripts:.R=.rda))

default: $(data_files)

../data/%.rda: %.R
	Rscript $<

