PROJECT=4
TEX=pdflatex
BIBTEX=bibtex
MAKEINDEX=makeindex
LATEXMK=latexmk
BUILDTEX=$(TEX) $(PROJECT).tex
BUILDTEX2=$(LATEXMK) -pdf $(PROJECT).tex

all:
	time $(BUILDTEX)
	# $(BIBTEX) $(PROJECT)
	# $(BUILDTEX)
	# $(BUILDTEX)

one:
	$(BUILDTEX2)
	
bib:
	$(BUILDTEX)
	$(BIBTEX) $(PROJECT)
	$(BUILDTEX)
	$(BUILDTEX)
	cat main.bbl > ref.tex
	
idx:
	$(BUILDTEX)
	$(MAKEINDEX) $(PROJECT)
	$(BUILDTEX)
	
	
clean-all:
	rm -f *.dvi *.log *.bak *.aux *.bbl *.blg *.idx *.ps *.eps *.pdf *.toc *.out *~

clean:
	rm -f *.log *.bak *.aux *.bbl *.blg *.idx *.toc *.out *~