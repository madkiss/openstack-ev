.PHONY : all clean
.SECONDARY :

# Set the base name of the training course here.
DOCNAME ?= Vereinssatzung

all: Vereinssatzung.pdf

%.pdf: 
	pdflatex $(@:%.pdf=%.tex)

clean:
	rm -f *.dat *.log *.nav *.out *.snm *.toc *.vrb $(DOCNAME)*.pdf 
