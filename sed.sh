#!/bin/bash

for arquivo in $(ls times/); do
	sed -i 's/\./,/g' "times/$arquivo"
	echo "Alterado arquivo : times/$arquivo"
done
