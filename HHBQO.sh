#!/bin/bash

#DECLARACIÓ DE FUNCIONS

En_desenvolupament(){

	clear
	echo "En desenvolupament"
	while [ true ] ; do
		read -t 3 -n 1
		if [ $? = 0 ] ; then
			break
		fi
	done
	clear

}

OpcioNoValida(){

	echo "Error: Opció no existent al menú."
	sleep 3
	clear
}


fitxer=$1

opcio=1

while [ $opcio -ne 0 ];
do
	echo "----------------------------------------"
	echo "Base de Dades del catàleg de HBBQO"
	echo "----------------------------------------"
	echo "1. Llistats de les pel.licules del catàleg."
	echo "2. Cerca d'una pel·licula al catàleg."
	echo "3. Joc de preguntes sobre les pel·licules."
	echo "4. Gestió de la base de dades de pel·licules."
	echo "0. Sortir."

	echo "Indica opció: "
	read opcio
	
	if [ $opcio -lt 0 ] || [ $opcio -ge 4 ];
	then
		OpcioNoValida
	else
		case $opcio in
			1)En_desenvolupament;;
			2)En_desenvolupament;;
			3)En_desenvolupament;;
			4)En_desenvolupament;;
			0)echo "Gràcies per la seva visita a HBBQO";;
	esac
	fi
done
