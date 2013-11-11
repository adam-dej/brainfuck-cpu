#!/bin/bash

if [[ -z "$1" ]]
	then
	echo "Usage: ./binarizer.sh program.bf > program.bin"
	exit 1
fi

if [ ! -r $1 ]
	then
	echo "Usage: ./binarizer.sh program.bf > program.bin"
	echo $1 " does not exists!"
	exit 1
fi

cat $1 | tr '\n' ' ' | sed -e "s/[^]+.,<>[-]//g" | tr ']+.,<>[-' '\07\00\04\05\03\02\06\01' #opcodes for TTL Brainfuck rev1.