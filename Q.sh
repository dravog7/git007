#!/bin/bash
read -p "Enter Code:" a
b=""
len=${#a}
for i in $(seq 0 2 $len)
do
	b="$b${a:$i:1}"
done
echo "The decoded code is:$b"