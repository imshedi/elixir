#!/bin/sh

if [ -z "$1" ]; then
	printf "\nPlease specify project name\n"
	echo "\nUsage: $0 u-boot\n\n"
	exit 1
fi

PROJ="$1"

export LXR_REPO_DIR=/srv/elixir-data/"$PROJ"/repo
export LXR_DATA_DIR=/srv/elixir-data/"$PROJ"/data

cd ..
./script.sh list-tags && ./update.py
