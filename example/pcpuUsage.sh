#!/bin/bash

SECS=180
UNIT_TIME=60
STEPS=$(( $SECS / $UNIT_TIME ))

echo -e "Watching CPU usage...\n"

for((i=0;i<STEPS;i++ ))
do
  ps -eocomm,pcpu | egrep -v '(0.0)|(%CPU)' >> /tmp/cpu_usage.$$
  sleep $UNIT_TIME
done

echo -e "CPU eater: \n"

cat /tmp/cpu_usage.$$ | \
awk '
{ process[$1]+=$2; }
END{
  for(i in process)
  {
    printf("%-20s %s\n",i,process[i]);
  }
}' | sort -nrk 2 | head

rm /tmp/cpu_usage.$$

