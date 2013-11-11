#!/bin/bash

if [[ -z "$1" ]]
	then
	echo "Usage: ./logisimizer.sh program.bf > program.rom"
	exit 1
fi

if [ ! -r $1 ]
	then
	echo "Usage: ./logisimizer.sh program.bf > program.rom"
	echo $1 " does not exists!"
	exit 1
fi

echo "v2.0 raw"
cat $1 | tr '\n' ' ' | sed -e "s/[^]+.,<>[-]//g" | tr ']+.,<>[-' '70453261' | sed -e "s/[0-9]/& /g"