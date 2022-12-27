#!/usr/bin/env bash

if test -f ".config"; then
	key=$(cat ".config")
else
	echo "please enter your TUM-Kuerzel: "
	read key
	echo $key > ".config"
fi

echo running the program for $key

git -C pgdp2223-tests pull
java -jar moveUtility.jar $key

read -s -n 1 -p "Press any key to continue . . ."