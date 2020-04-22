declare -a speakers=("viet")

rm -rf ../test ../train/viet
mkdir ../test
mkdir ../test/viet
mkdir ../train/viet

for i in {0..49}
do
	for j in {0..5}
	do
		for k in "${speakers[@]}"
		do
			folder="../train"
			utterance="${j}_${k}_${i}.wav"
			newfile="${k}_${j}_${i}.wav"
			#utterance="${folder}/${utterance}"
			newfile="${folder}/${k}/${newfile}"
			cp ${utterance} ${newfile}
		done
	done
done

for i in {0..49}
do
	for j in {6..9}
	do
		for k in "${speakers[@]}"
		do
			folder="../test"
			utterance="${j}_${k}_${i}.wav"
			newfile="${k}_${j}_${i}.wav"
			#utterance="${folder}/${utterance}"
			newfile="${folder}/${k}/${newfile}"
			cp ${utterance} ${newfile}
		done
	done
done
