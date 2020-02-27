count=1
name=$(basename $1)
for file in $1/*; do
	mv "$file" $1/"$name"_$count."wav"
	((count++))
done
echo "Rename directory $name successfully !!!"
