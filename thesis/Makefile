drawio_src=$(shell find diagrams/ -type f -name "*.drawio.svg")
drawio_obj=$(drawio_src:diagrams/%.drawio.svg=diagrams/%.pdf)

svg_src=$(shell find figures/ -type f -name "*.svg")
svg_obj=$(svg_src:figures/%.svg=figures/%.pdf)

plots_src=$(shell find plots/ -type f -name "*.py")
plots_obj=$(plots_src:plots/%.py=plots/%.pdf)

thesis_src=$(shell find content/ -type f -name "*.tex") thesis.tex eidesstatt.tex packages.tex titlepage.tex

tex_cmd=latexmk --shell-escape -pdf -xelatex -g -halt-on-error

withDocker:
	./docker.sh make watch

watch:
	while true; do \
			make all -j20; \
		inotifywait -qre close_write,delete --excludei ".git*|out" .; \
	done

all: thesis.pdf

thesis.pdf: $(drawio_obj) $(svg_obj) $(plots_obj) $(thesis_src) bib.bib
	$(tex_cmd) thesis
	cp out/thesis.pdf .

diagrams/%.pdf: diagrams/%.drawio.svg
	svg2pdf $< $@

figures/%.pdf: figures/%.svg
	svg2pdf $< $@

.SECONDEXPANSION:
plots/%.pdf: plots/%.py $$(wildcard plots/$$*.log)
	python3 $< $@

clean:
	rm -rf $(drawio_obj) $(plots_obj) out tikz_out paper.pdf presentation.pdf

.PHONY: waitDocker watch all clean
