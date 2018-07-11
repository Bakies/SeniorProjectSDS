#!/bin/bash
pdflatex sds.tex
evince sds.pdf  & 

while true; do 
	pdflatex -halt-on-error sds.tex
	# rm sds.aux  sds.log  missfont.log  
	sleep 10
done
wait
