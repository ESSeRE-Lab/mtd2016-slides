all: mtd2016-slides.pdf

mtd2016-slides.pdf: mtd2016-slides.md header.tex slides.bib img/frat.png img/intensity_resized.png
	pandoc -f markdown+grid_tables --biblio=slides.bib --csl=$$(brew list pandoc-citeproc | grep ieee.csl) --latex-engine=xelatex -t beamer -V theme:Boadilla -H header.tex -o mtd2016-slides.pdf mtd2016-slides.md

clean:
	rm mtd2016-slides.pdf
