ENGLISH_OPT_LINE=9

.PHONY: default
default: all

dansk:
	pdflatex -interaction=nonstopmode -jobname="CV Dansk" main.tex; return 0
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.1 -dDownsampleColorImages=true -dColorImageResolution=150 -dNOPAUSE -dBATCH -sOutputFile=CVDansk.pdf CV\ Dansk.pdf

english:
	head main.tex -n $(ENGLISH_OPT_LINE) >mainEng.tex
	echo "\englishtrue" >>mainEng.tex
	tail -n +$(ENGLISH_OPT_LINE) main.tex >>mainEng.tex
	pdflatex -interaction=nonstopmode -jobname="CV English" mainEng.tex; return 0
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.1 -dDownsampleColorImages=true -dColorImageResolution=150 -dNOPAUSE -dBATCH -sOutputFile=CVEnglish.pdf CV\ English.pdf

clean: 
	rm *.log *.aux *.out *.gz mainEng.tex

all: dansk english clean
