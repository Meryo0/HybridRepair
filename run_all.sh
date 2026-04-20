script="logic_fl.sh"
projects=("collections" "math" "lang" "commons-io" "defects4j")
for prj in "${projects[@]}";
do
	echo "$prj"
	DIRS=`find $prj -maxdepth 1 -mindepth 1 -type d`
	for dir in $DIRS
	do
		echo $dir
		cd $dir
		./$script
		cd ../..
	done
done
