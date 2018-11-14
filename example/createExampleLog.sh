#!/bin/bash
# author:max
# description:create a format log

echo $(pwd)
# include function checkoutFilePath
source ../lib/checkoutFilePath.sh

# check file exit
filePath='../log/example.log'
checkoutFilePath ${filePath}
if [ $? -ne 0 ];then
    echo 'checkout file path fail'
    exit 0
fi

# add content
for i in {1..999}
do
    if [ ${i} -eq 1 ];then
        echo ${i} > ${filePath}
    else
        echo ${i} >> ${filePath}
    fi
done

exit 0
