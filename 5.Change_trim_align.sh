#!/bin/bash
for file in $1/*.wav ; do
    name=$(basename $file)
    name="${name%.*}"
    dur=`soxi -D $file`
    #dur=${dur%.*}
    if [ $(echo "$dur < 1.0" | bc -l) -eq 1 ]; then
	padding=`echo "1-$dur" | bc -l`
        step=0.1
        padding_left=0
	rm tmp.wav
        sox $file tmp.wav trim 0 $dur
        count=1
        if [ -f tmp.wav ]; then
		while [ $(echo "$padding_left <= $padding" | bc -l) -eq 1 ]; do
			padding_end=`echo "$padding - $padding_left" | bc -l`
            		sox tmp.wav $1"/$name"_pad_"$count".wav pad $padding_left $padding_end
			padding_left=`echo "$padding_left + $step" | bc -l`
            		count=$((count+1))
        	done
        fi
    else
        sox $file $1"/$name"_pad_0.wav trim 0 1.0
    fi
    rm $file
done
rm tmp.wav
echo "Change trim align successfully !!!"
