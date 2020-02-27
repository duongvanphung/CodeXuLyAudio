
pitchs=(-20 -10 10 20)

for file in $1/*.wav; do
    name=$(basename $file)
    name="${name%.*}"
    for pitch in ${pitchs[*]}; do
	sox "$file" $1/"$name"_pitch_"$pitch.wav"
    done
done
echo "Change pitch successfully !!!"
