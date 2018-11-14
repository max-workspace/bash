#!/bin/bash

if [ $# -ne 1 ];then
  echo "Usage is $0 basepath"
  exit
fi

path=$1

declare -A statarray

for line in $( find $path -type f -print );
do
  ftype=`file -b "$line" | cut -d, -f1`
  let statarray["$ftype"]++
done

echo === File types and counts ===
for ftype in "${!statarray[@]}";
do
  echo $ftype : ${statarray["$ftype"]}
done
