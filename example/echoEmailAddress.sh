#!/bin/bash
# author:max
# description:show email address content
# creat time:2018-11-14

emailAddressPath='../conf/emailAddressList.txt'

# check emailAddressPath exit
if [ ! -f ${emailAddressPath} ];then
    echo 'lack necessary config file' 
    exit 0
fi

# echo email address
emailAddressString=$(cat ${emailAddressPath} | grep -v ^# | xargs)
for i in ${emailAddressString}
do
     echo $i
done

exit 0
