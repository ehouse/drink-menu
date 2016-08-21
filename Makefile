MARKDOWN = pandoc -s
LATEX    = pdflatex
TEX_BLD	:= $(patsubst src/%.tex, out/%.pdf, $(wildcard src/*.tex))
MD_BLD	:= $(patsubst src/%.md, out/%.pdf, $(wildcard src/*.md))

all: $(MD_BLD) $(TEX_BLD)

out/%.pdf: src/%.md Makefile
	$(MARKDOWN) $< -o $@

out/%.pdf: src/%.tex Makefile
	$(LATEX) -output-directory out/ $<

clean:
	$(RM) $(wildcard out/*)

.PHONY: all clean
