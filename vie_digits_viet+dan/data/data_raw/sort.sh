declare -a train=("viet" "dan")
declare -a test=("viet" "dan")
rm -rf ../test ../train
mkdir ../test
mkdir ../train
mkdir  ../test/dan ../test/viet
mkdir  ../train/viet ../train/dan

for i in {0..39}
do
	for j in {0..9}
	do
		for k in "${train[@]}"
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
		for k in "${test[@]}"
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
