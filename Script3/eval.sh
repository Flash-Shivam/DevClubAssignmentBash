

evalu () {
	let a=0
	
	foo=$1
	
	echo $foo
	for (( i=0; i<${#foo}; i++ )); do
  		b=${foo:$i:1}
		if [ "$b" != " " ]; then
		let a=a*10+b
		fi
	done
	echo $a
	
}
	
sign () {

	coo=$2
	echo $coo


}

		let d=0		
		while read line
		do
		temp=$( evalu $line )
		s=$( sign $line )
		if [ "$s" = "+" ]; then
		let d=d+$temp		
		elif [ "$s" = "-" ]; then
		let d=d-$temp
		elif [ "$s" = "mult" ]; then
		let d=d*$temp
		elif [ "$s" = "/" ]; then
		let d=d/$temp
		fi			
		done <$1
		
		
		echo $d
