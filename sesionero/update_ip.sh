#!/bin/bash

# Sustituye en un fichero .yml_ los tokens _IP_ por la IP y copia a .yml

IP=$(hostname -I | awk '{print $1}')

for i in $(ls *.yml_) ; do
       sed 's/_IP_/$IP/g' $i > $(basename $i .yml_).yml 	
done
