.PHONY: all clean distclean

all: Research.pdf refs.bib

clean:
	rm -f *.aux *.log *.bbl *.blg

distclean: clean
	rm Research.pdf

%.pdf: %.tex
	pdflatex $<
	bibtex $*
	pdflatex $<
	pdflatex $<
