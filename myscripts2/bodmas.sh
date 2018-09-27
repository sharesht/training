#!/bin/bash
read exp
for (( i=0; i<${#exp}; i++ ))
do
	case ${name:$i:1} in
		[a-zA-Z])
			:;;
		[()])
			if 

