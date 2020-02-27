
speeds=(0.8 0.9 1.1 1.2 1.3)

out1="tmp.wav"
for f in $(ls $1 | awk -F '.' '{print $1}'); do
    for speed in ${speeds[*]}; do
        out2="$1/"$f"_speed_$speed.wav"
        sox $1/$f.wav $out1 tempo $speed
        if [ $(echo "$speed < 1.0" | bc -l) -eq 1 ]; then
            start=$(echo "(1/$speed - 1)/2" | bc -l)
            sox $out1 $out2 trim $start 1.0
        else
            pad=$(echo "(1-1/$speed)/2 + 0.1" | bc -l)
            sox $out1 tmp2.wav pad $pad $pad
            sox tmp2.wav $out2 trim 0.1 1.0
        fi
    done
done
rm $out1
rm tmp2.wav
echo "Change speed successfully !!!"
