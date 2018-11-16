#!/bin/bash

# checkout filePath
filePath=/etc/passwd
if [ ! -e ${filePath} ];then
  echo 'lack necessary parameter'
  exit 1
fi

declare -A arrayName
arrayName['title']='show message'
title='show something'

grep -v '^#' ${filePath} | awk 'BEGIN {FS=":"} {name[$1]=$5} \
END {for(i in name){ print i " => " name[i]}}'
