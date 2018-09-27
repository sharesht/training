#!/bin/bash
set -x
declare -a array1=(6 8 5 4 2 7)


min=${#array1[*]}
echo $min



for (( i=0; i<$a; i++ ))
do {
	var=${array[$i]}	
	echo ${array[$i+1]}
	if [ $var -gt ${array[$i+1]} ]
	then
		var=${array[$i+1]}
	fi

}
done
echo $var


















#for i in "${array[@]}"
#	do val=$i
#		echo $val ${array[$(($i+1))]}
#
#	if [ $val -gt ${array[$(($i+1))]} ]
#	then 
#		   val=${array[$(($i+1))]}
#	   fi
#done
#echo $val
