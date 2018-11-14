#!/bin/bash
# author:max
# description:show email address content
# creat time:2018-11-14

emailAddressPath='./conf/emailAddressList.txt'

# check emailAddressPath exit
if [ -f ${emailAddressPath} ];then
    emailAddressString=$(cat ${emailAddressPath} | grep -v ^# | xargs)
fi

# echo email address
if [ ${#emailAddressString} != 0 ];then
    for i in ${emailAddressString}
    do
      echo $i
    done
fi
