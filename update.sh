#!/usr/bin/env bash

if test -f ".config"; then
	key=$(cat ".config")
else
	echo "please enter your TUM-Kuerzel: "
	read key
	echo $key > ".config"
fi

echo running the program for $key

skip=false
local=$(git -C pgdp2223-tests rev-parse HEAD)
git fetch
upstream=$(git -C pgdp2223-tests rev-parse @{u})
if [ $local == $upstream ]; then
	read -n 1 -p "No update found. Do you want to continue anyway? [Y/N]" yn
	case $yn in
		[Yy] ) ;;
		* ) skip=true;;
	esac
	echo
fi

if [ $skip == false ]; then
	git -C pgdp2223-tests pull
	java -jar moveUtility.jar $key
fi

read -s -n 1 -p "Press any key to continue . . ."
echo