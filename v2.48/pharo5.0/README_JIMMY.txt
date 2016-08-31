
Installation pour mac 

1) télécharger pharo 5 pour mac : http://pharo.org/download

2) installer cette lib, obligatoire pour avoir la 3D
	
	Using MacPorts, the port is called 'cairo', so you can just type:
	
		sudo port install cairo +universal

	And to upgrade to newer versions once installed:

  		sudo port upgrade cairo

	If you use fink instead, the command to install cairo is:

   		sudo apt-get install cairo +universal

3) je sais pas du tout si ça va marcher mais remplacer le fichier.image de pharo linux par celui de pharo mac 
 