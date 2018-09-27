#!/bin/bash
declare -A Allocation
#set -x
while read server count
do
	Allocation[$server]=$count
#	echo "$server" "$count"
	echo "${!Allocation[@]}" #"${Allocation[*]}"
done <<eof 
S1 1 
S2 2
S3 3
S4 4
S5 5
S6 6
S7 7
S8 8
S9 9
eof

<<eof
while readarray -t Allocation <<-"eof"
s1 1
s2 2
s3 3 
s4 4
eof

#echo ${Alloaction[*]}
#echo ${!Allocation[@]} ${Allocation[*]}
