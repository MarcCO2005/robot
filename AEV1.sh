#!/bin/bash
 

URL="https://www.periodismo.com/2024/01/22/nuevo-record-guinness-un-hombre-tomo-una-taza-de-cafe-en-3-segundos/"


wget -O archivo.html $URL 

cat archivo.html | grep -o '<title>.*</title>' | sed 's/\///g' | sed 's/<title>//g' >> titular.txt
espeak -f titular.txt
