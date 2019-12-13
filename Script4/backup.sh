cd $1 || exit -1
		echo Files copied from $1 to $2 are:
		for i in *; do
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
        	done

cd ..
cd $2 || exit -1
		echo Files copied from $2 to $1 are:
		for i in *; do
			cd ..
			cd $1
			if ! [ -f "$i" ]; then
			echo $i
			touch $i
			export x=$(pwd)
			cd ..
			cd $2
			cp $i $i "$x"
			fi
			cd ..
			cd $1
        	done
