MARKDOWN = pandoc -s
TEX_SRC := $(patsubst %.tex, %.pdf, $(wildcard *.tex))
MD_SRC := $(patsubst %.md, %.pdf, $(wildcard *.md))

all: $(MD_SRC) $(TEX_SRC)

%.pdf: %.md Makefile
	$(MARKDOWN) $< -o $@

%.pdf: %.tex Makefile
	pdflatex $<

clean: 
	$(RM) *.log *.pdf *.aux

.PHONY: all clean
