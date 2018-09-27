#!/bin/bash
read x
read y
if [ $x -gt -101 ] && [ $x -lt 101 ] && [ $y -gt -101 ] && [ $y -lt 101 ]
then
	if [ $y -eq 100 ]
	then exit
	else 
		echo "`expr $x + $y`"
		echo "`expr $x - $y`"
		echo "`expr $x \* $y`"
		echo "`expr $x \/ $y`"
	fi
fi
