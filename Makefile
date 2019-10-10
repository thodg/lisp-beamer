
PDF = lisp-beamer.pdf lisp-beamer.fr.pdf

pdf: ${PDF}

%.pdf: %.tex
	rm -f *.aux *.log *.nav *.out *.snm *.toc *.vrb
	pdflatex $<
	pdflatex $<

clean:
	rm -f ${PDF} *.aux *.log *.nav *.out *.snm *.toc *.vrb

watch:
	while sleep 1; do ${MAKE}; done

.PHONY: pdf clean watch
