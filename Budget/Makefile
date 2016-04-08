TEX=pdflatex
BIB=bibtex

all: BudgetJustification.pdf

BudgetJustification.pdf: BudgetJustification.tex
	$(TEX) BudgetJustification
	$(TEX) BudgetJustification

currentpending: $(CP)

mostlyclean:
	rm -f *.out *.log *.blg *~

clean: mostlyclean
	rm -f *.aux *.bbl BudgetJustification.pdf
