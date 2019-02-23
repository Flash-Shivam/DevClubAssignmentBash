


		var=$( grep $2 $1 )
		
		evalu () {
		let a=0
		let bb=0
		let c=0
		let f=0
		foo=$1
		coo=$2
		
		
		for (( i=0; i<${#foo}; i++ )); do
	  		b=${foo:$i:1}
			if [ "$b" = ":" ]; then
			let a++
			elif [ $a -eq 4 ]; then 
				if [ $f -eq 0 ]; then 
				let bb=i
				let f=1
				fi
			elif [ $a -eq 5 ]; then
			let c=i
			break
			fi
		done
		
		
		
			let d=0
			let aa=0
			for (( i=0; i<${#coo}; i++ )); do
	  		bbb=${coo:$i:1}
			if [ "$bbb" = ":" ]; then
			let aa++
			elif [ $aa -eq 1 ]; then 
			let d=i
			break
			fi
		done
		let d--
		let q=${#foo}
		
		let q=q-$bb
		
		
		if [ $c -eq 0 ]; then
		res=${foo:$bb:$q}" "${coo:0:$d}
		
		else 
		let c--
		let c=c-$bb
		res=${foo:$bb:$c}
		fi
		
		echo $res
		
		
	
	}


		temp=$( evalu $var )
		
		echo $temp

