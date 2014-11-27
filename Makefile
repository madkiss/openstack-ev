.PHONY : all clean
.SECONDARY :

DOCNAME ?= Vereinssatzung

all: Vereinssatzung.pdf

%.pdf: 
	pdflatex $(@:%.pdf=%.tex)

clean:
	rm -f *.dat *.log *.nav *.out *.snm *.toc *.vrb $(DOCNAME)*.pdf 
