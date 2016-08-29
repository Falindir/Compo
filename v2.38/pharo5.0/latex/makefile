filename=ContainerPH5_SIMPLE

filename2=ContainerPH5_FULL

filename3=ContainerPH5_DETAILED

pdf2: 
	pdflatex ${filename}.tex
	pdflatex ${filename2}.tex
	pdflatex ${filename3}.tex

	
clean:
	rm -f ${filename}.{ps,pdf,log,aux,out,dvi,bbl,blg}
	rm -f ${filename2}.{ps,pdf,log,aux,out,dvi,bbl,blg}
	rm -f ${filename3}.{ps,pdf,log,aux,out,dvi,bbl,blg}