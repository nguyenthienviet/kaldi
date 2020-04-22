declare -a speakers=("dat")

rm -rf dat
mkdir dat

for i in {0..2}
do
	for j in {0..9}
	do
		for k in "${speakers[@]}"
		do
			folder="dat"
			utterance="${j}_${k}_${i}.wav"
			newfile="${k}_${j}_${i}.wav"
			utterance="./dat_raw/${utterance}"
			newfile="./${k}/${newfile}"
			cp ${utterance} ${newfile}
		done
	done
done
