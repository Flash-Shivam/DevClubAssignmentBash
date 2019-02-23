
    #!/bin/bash
	
	cd $1 || exit -1
	

		var=$2
		varr=*$var    
		let b=0
		for i in $( find $varr ); do
            		let b++
        	done
			echo $b

	

	
 
