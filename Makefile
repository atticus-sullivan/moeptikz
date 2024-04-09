.PHONY: clean ctan install

documentation.pdf: documentation.tex
	l3build doc

clean:
	l3build clean

ctan: moeptikz-ctan.zip
	

moeptikz-ctan.zip: moeptikz.sty documentation.tex
	l3build ctan

install:
	l3build install --full
