#!/bin/bash
# author:max

fileString='../log/example.log'

# 1 by size, 2 by line
splitType=2
splitSize=10k
splitLine=10
splitName=split_file_

# check file
if [ ! -e ${fileString} ];then
    echo 'lack necessary file'
    exit 0
fi

# split file
if [ ${splitType} == 1  ];then
    split -b ${splitSize} ${fileString} ${splitName}
elif [ ${splitType} == 2 ];then
    split -l ${splitLine} ${fileString} ${splitName}
else
    echo 'splitType is unable'
fi

exit 0
