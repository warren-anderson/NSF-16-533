# HOW BIBTEX WORKS
#
# Step  Command                 Rresult of command:
#
# 1     pdflatex mydocument     creates .aux file which includes keywords of any citations
# 2     bibtex mydocument       uses the .aux file to extract cited publications from the database
#                               in the .bib file, formats them according to the indicated style,
#                               and puts the results into a .bbl file
# 3     pdflatex mydocument     inserts appropriate reference indicators at each point of citation,
#                               according to the indicated bibliography style
# 4     pdflatex mydocument     refines citation references and other cross-references,
#                               page formatting and page numbers
#
TEX=pdflatex
BIB=bibtex
DIRS=Description Budget BIOs

all: description.pdf references.bib summary.pdf bios currentpending budget.pdf

DESCRIPTION: force_look
	$(ECHO) Making in Description
	cd Description; $(MAKE)

BUDGET: force_look
	$(ECHO) Making in Description
	cd Description; $(MAKE)

BIOS: force_look
	$(ECHO) Making in Description
	cd Description; $(MAKE)

mostlyclean:
	-for d in $(DIRS); do (cd $$d; $(MAKE) mostlyclean ); done

clean: mostlyclean
	rm -f *~ .*.swp
	-for d in $(DIRS); do (cd $$d; $(MAKE) mostlyclean ); done
