
	backup() {
		cd $1 || exit -1
		for i in *; do
			if [ -d "$i" ]; then
			cd ..
			cd $2
				if ! [ -d "$i" ]; then
				echo $i
				mkdir $i
				export x=$(pwd)
				cd ..
				cd $1
				cp -r $i $i "$x"
				fi
				cd ..
				cd $1
			else			
				cd ..
				cd $2
				if ! [ -f "$i" ]; then
				echo $i
				touch $i
				export x=$(pwd)
				cd ..
				cd $1
				cp $i $i "$x"
				fi
				cd ..
				cd $1
			fi
        	done
	}
	export y=$(pwd)
	echo Files copied from $1 to $2 are:
	backup $1 $2
	cd $y
	echo Files copied from $2 to $1 are:
	backup $2 $1
