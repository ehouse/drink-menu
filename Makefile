all: mixed-menu.pdf shots-menu.pdf

mixed-menu.pdf: mixed-menu.tex background-image.jpg
	pdflatex $<

shots-menu.pdf: shots-menu.tex background-image.jpg
	pdflatex $<

clean: 
	$(RM) *.log *.pdf

.PHONY: all clean
