all: mtd2016-slides.pdf

mtd2016-slides.pdf: mtd2016-slides.md header.tex slides.bib tab-input2.tex tab-output.tex
	pandoc -f markdown+grid_tables+multiline_tables --biblio=slides.bib --csl=$$(brew list pandoc-citeproc | grep ieee.csl) --latex-engine=xelatex -t beamer -V theme:Boadilla -H header.tex -o mtd2016-slides.pdf mtd2016-slides.md

tab-input.pdf: tab-input.tex
	latexmk -pdf $<

clean:
	rm mtd2016-slides.pdf
