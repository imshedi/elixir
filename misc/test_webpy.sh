#!/bin/sh

if [ -z "$1" ]; then
	printf "\nPlease specify project name\n"
	echo "\nUsage: $0 u-boot\n\n"
	exit 1
fi

PROJ="$1"

export PYTHONIOENCODING=utf-8
export LXR_PROJ_DIR=/srv/elixir-data
export SCRIPT_URL=/"$PROJ"/latest/source

../http/web.py
