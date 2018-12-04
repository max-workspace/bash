#!/bin/bash

dataFile='../txt/data1.txt'
scriptFile='../sed/script1.sed'

sed -e 's/brown/green/;s/dog/cat/' ${dataFile}

echo -e "\n\n"

sed -f ${scriptFile} ${dataFile}

echo -e "\n\n"

sed '3d' ${dataFile}

echo -e "\n\n"

echo "Test Line 2" | sed 'i\Test Line 1'
echo "Test Line 2" | sed 'a\Test Line 1'

echo -e "\n\n"

sed '3c\This is a changed line of text.' ${dataFile}

echo -e "\n\n"

sed "y/1234/5678/" ${dataFile}
