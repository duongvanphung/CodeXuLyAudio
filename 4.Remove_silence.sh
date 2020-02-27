for file in $1/*.wav; do
    name=$(basename $file)
    name="${name%.*}"
    sox $file $1"/$name"_clean.wav silence 1 0.1 1% reverse silence 1 0.1 1% reverse
    rm $file
done
rm .wav
echo "Remove silence from the begin and end audio successfully !!!"
