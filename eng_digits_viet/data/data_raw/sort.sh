declare -a speakers=("viet")

rm -rf ../test ../train
mkdir ../test
mkdir ../train
mkdir ../train/viet
mkdir ../test/viet

for i in {0..39}
do
	for j in {0..9}
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

for i in {40..49}
do
	for j in {0..9}
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
