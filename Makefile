main:
	pdflatex kims_nai_psd

full:
	pdflatex kims_nai_psd
	bibtex kims_nai_psd
	pdflatex kims_nai_psd
	pdflatex kims_nai_psd

submit:
	sed -f submit.sed < kims_nai_psd.tex > kims_nai_psd_submit.tex

clean:
	rm *-converted-to.pdf *.aux *.bbl *.blg *.dvi *.log *.toc *.lof *.lot *.out *~ \#*\# *Notes.bib 
