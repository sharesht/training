#!/bin/bash
#set -x
apt list --upgradable | awk -F '/' '{print $1}' > ListNew 
tail -n +2 < ListNew > ListNew2 
while read line 
do
        #echo $line
        echo -n "$line : " 
        aptitude show $line | grep Version | awk '{print $2}'
done < ListNew2 
