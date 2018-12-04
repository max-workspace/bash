#!/bin/bash
# author:max
# description:this script is a fucntion library

# checkout filePath. if not exit creat
function checkoutFilePath()
{
    local fileDir=$(dirname $1)
    [ ! -d ${fileDir} ] && mkdir -p ${fileDir}
    [ ! -f $1 ] && touch $1
    return 0
}

