#!/bin/bash
	let e=1
	while read line
	do 
		echo "Hey $e"
		if [[ $line == *"<name"* ]];then
			echo "found $e"
			let f=$e
		fi
		let e++
	done < $1
	echo $f 
	sed "$f s/val/$2/g" $1
	
