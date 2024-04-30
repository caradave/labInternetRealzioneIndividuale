#!/bin/bash

echo -n "" > output.txt

while IFS= read -r riga
do
	line=$(echo $riga | cut -d ">" -f 2 | cut -d ' ' -f 2 )
	tempo=$(echo $riga | cut -d "," -f 2 | cut -c 2-)
	t=$(echo "${tempo::-1}")
	echo $line" "$t >> output.txt
	
done < $1 
