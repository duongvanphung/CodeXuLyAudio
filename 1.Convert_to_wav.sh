for file in $1/*.mp3; do
        name=$(basename $file)
        name="${name%.*}"
        ffmpeg -i $file $1"/$name.wav"
	rm $file
done
