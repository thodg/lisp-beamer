lisp-beamer.pdf: lisp-beamer.tex
	pdflatex lisp-beamer.tex
	pdflatex lisp-beamer.tex

clean:
	rm -f lisp-beamer.pdf
