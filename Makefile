.PHONY:all
all:pdf

.PHONY:pdf
pdf: CV.pdf

CV.pdf:CV.tex ylcv.cls
	latex CV
	pdflatex CV
