for file in $1/*; do
	name=$(basename $file)
        name="${name%.*}"
        sox $file -r 16000 -c 1 -b 16 $1"/$name_formated.wav"
done
echo "Formating file audio successfully !!!"

