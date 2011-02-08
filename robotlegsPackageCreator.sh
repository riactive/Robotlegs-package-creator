#!/bin/bash

# Author: Francisco Granados y Daniel Martinez
# Ver: 1.2
# Desc: Script para crear una ramificacion de carpetas en tu nuevo proyecto de Robotlegs
# Contact: @GzFrancisco @dannygeek
# SeeMore: robotlegs.org & riactive.com

if [ -z "$1" ]; then 
 echo uso: $0 nombre del paquete ej. com.riactive.robotlegs.nombreproyecto
 exit
fi

declare -a paqARR
paqARR=$(echo $1 | tr "." "\n")

for i in $paqARR
do
	mkdir $i;
	chmod g+rwx $i;
	cd $i;
	echo directorio $i creado;
done

mkdir assets interfaces helpers context signals skins styles model model/valueobjects commands services view view/mediators view/components view/renderers events
chmod -R g+rwx *;

exit