
TEX=pdflatex
BIB=bibtex

all: bios currentpending

bios : bio_anderson.pdf

bio_anderson.pdf : bio_anderson.tex
	$(TEX) bio_anderson
	$(TEX) bio_anderson

currentpending: cp_anderson.pdf

cp_anderson.pdf : cp_anderson.tex
	$(TEX) cp_anderson
	$(TEX) cp_anderson

mostlyclean:
	rm -f *.out *.log *.blg *~ .*.swp

clean: mostlyclean
	rm -f *.aux *.bbl $(BIOS) $(CP)
