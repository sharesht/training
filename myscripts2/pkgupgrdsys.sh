#!/bin/bash
#set -x
i=0

sudo apt-get update
sudo apt list --upgradable | awk -F '/' '{print $1}' > ListNew
tail -n +2 < ListNew > ListNew2

if [ -s ListNew2 ]
then
        while read line 
        do
                i=$((i+1))
                        #echo $line
                CV=`apt-cache policy $line | grep Installed | awk '{print $2}'`
                        echo "$line -> Current Version : $CV" 
                AV=`apt-cache policy $line | grep Candidate | awk '{print $2}'`
                        echo "Available Version : $AV"
#                mariadb -u root -e 'insert into packages.updates ( SerialNo, PackageName, CurrentVersion, AvailableVersion ) values ( "'$i'", "'$line'", "'$CV'", "'$AV'" );'
        done < ListNew2
else
        echo "No Updates"
fi

#mariadb -u root -e 'select * from packages.updates;'
