
	backup() {
		cd $1 || exit -1
		for i in *; do
			if [ -d "$i" ]; then
			cd $4
			cd $2
				if ! [ -d "$i" ]; then
					if ! [[ $3 -ef $4 ]]; then
					echo -n "$1/$i" 
					else
					echo -n  $i
					fi
				mkdir $i
				export x=$(pwd)
				cd $3
				cd $1
				cp -r $i $i "$x" 2>/dev/null
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
					if ! [[ $3 -ef $4 ]]; then
					echo -n "$1/$i" 
					else
					echo -n  $i
					fi
				touch $i
				export x=$(pwd)
				cd $3
				cd $1
				cp $i $i "$x" 2>/dev/null
				fi
				cd $3
				cd $1
			fi
			echo
        	done
	}
	export y=$(pwd)
	echo Files copied from $1 to $2 are:
	backup $1 $2 $y $y
	cd $y
	echo Files copied from $2 to $1 are:
	backup $2 $1 $y $y
