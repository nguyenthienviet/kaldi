declare -a train=("viet")
declare -a test=("dat")
rm -rf ../test ../train
mkdir ../test
mkdir ../train
mkdir  ../test/dat
mkdir  ../train/viet

for i in {0..49}
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

for i in {0..4}
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
