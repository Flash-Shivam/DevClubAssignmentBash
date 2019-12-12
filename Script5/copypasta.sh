#!/bin/bash
	let e=1
	while read line
	do 
		if [[ $line == *"<name"* ]];then
			let f=0
			for (( i=0; i<${#line}-3; i++ )); do
				b=${line:$i:3}
				if [ "$b" == "val" ]; then
				let f=$i+5
				break
				fi
			done	
			for (( i=$f; i<${#line}; i++ )); do
				b=${line:$i:1}
				if [ "$b" == "\"" ]; then
				let q=$i
				break
				fi
			done
			let w=$q-$f
			sed -i "$e s/${line:$f:$w}/$2/g" $1
		fi
		let e++
	done < $1
	
	
