
	backup() {
		cd $1 || exit -1
		for i in *; do
			if [ -d "$i" ]; then
			cd $4
			cd $2
				if ! [ -d "$i" ]; then
				echo $i
				mkdir $i
				export x=$(pwd)
				cd $3
				cd $1
				cp -r $i $i "$x"
				else	
					cd "$3/$1"
					backup $i $i "$3/$1" "$3/$2" 
				fi 
				cd $3
				cd $1
				
			else			
				cd $4
				cd $2
				if ! [ -f "$i" ]; then
				echo $i
				touch $i
				export x=$(pwd)
				cd $3
				cd $1
				cp $i $i "$x"
				fi
				cd $3
				cd $1
			fi
        	done
	}
	export y=$(pwd)
	echo Files copied from $1 to $2 are:
	backup $1 $2 $y $y
	cd $y
	echo Files copied from $2 to $1 are:
	backup $2 $1 $y $y
