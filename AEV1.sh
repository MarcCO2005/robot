#!/bin/bash

if ! command -v wget &> /dev/null; then
    echo "wget no está instalado. Instalando"
    sudo apt-get update ; sudo apt-get install -y wget
else 
echo "El comando estaba instalado"
fi


dire="https://www.periodismo.com/2024/01/02/la-micronacion-estadounidense-donde-puedes-ir-preso-por-posesion-de-cebollas-o-espinacas/"

wget "$dire"  -O archivo.html

titular=$
