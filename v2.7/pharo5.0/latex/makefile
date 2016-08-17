filename=ContainerPH5_DETAILED
filename2=ContainerPH5_FULL
filename3=ContainerPH5_SIMPLE

pdf2: 
	pdflatex ${filename}.tex
	pdflatex ${filename2}.tex
	pdflatex ${filename3}.tex

pdf: ps
	ps2pdf ${filename}.ps
	ps2pdf ${filename2}.ps
	ps2pdf ${filename3}.ps

ps:	dvi
	dvips -t letter ${filename}.dvi
	
	dvips -t letter ${filename2}.dvi
	
	dvips -t letter ${filename3}.dvi

dvi:
	latex ${filename}
	latex ${filename}
	latex ${filename2}
	latex ${filename2}
	latex ${filename3}
	latex ${filename3}

clean:
	rm -f ${filename}.{ps,pdf,log,aux,out,dvi,bbl,blg}
	rm -f ${filename2}.{ps,pdf,log,aux,out,dvi,bbl,blg}
	rm -f ${filename3}.{ps,pdf,log,aux,out,dvi,bbl,blg}