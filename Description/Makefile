TEX=pdflatex
BIB=bibtex

all: description.pdf references.pdf summary.pdf 

description.pdf: description.tex references.bib
	$(TEX) -interaction=nonstopmode description
	$(BIB) description
	$(TEX) description
	$(TEX) description

references.pdf: references.tex references.bib
	$(TEX) references
	$(TEX) references

summary.pdf: summary.tex
	$(TEX) summary
	$(TEX) summary

mostlyclean:
	rm -f *.out *.log *.blg *~

clean: mostlyclean
	rm -f *.aux *.bbl description.pdf references.pdf summary.pdf
