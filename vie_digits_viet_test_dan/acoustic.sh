DATA_TEST="data/test"
DATA_TRAIN="data/train"

declare -a test=("dan")
declare -a train=("viet")
declare -a map=( [0]="khong" [1]="mot" [2]="hai" [3]="ba" [4]="bon" [5]="nam" [6]="sau" [7]="bay" [8]="tam" [9]="chin" )
declare -a arr=( "mot" "hai" "ba" "bon" "nam" "sau" "bay" "tam" "chin" "khong" )
user="viet"

# Organnization
#if [-d "$DATA_TEST" ]; then
#	echo "Test folder already exists, please remove."
#	exit 1
#else
#	mkdir data/test
#fi

#if [-d "$DATA_TRAIN" ]; then
#	echo "Train folder already exists, please remove."
#	exit 1
#else
#	mkdir data/train
#fi

# Enter data folder 
cd data

# Create spk2gender files
touch test/spk2gender
touch train/spk2gender
> test/spk2gender
> train/spk2gender

echo "dan m" >> test/spk2gender
echo "viet m" >> train/spk2gender

# Create wav.scp
touch test/wav.scp
touch train/wav.scp
> test/wav.scp
> train/wav.scp

for i in {0..49}
do 
	for j in {0..9}
	do
		for k in "${train[@]}"
		do
			end=".wav"
			utt="${k}_${j}_${i}"
			path="/home/viet/kaldi/vie_digits_viet_test_dan/data/train/"
			file="$path${k}/$utt$end"
			echo "$utt $file" >> train/wav.scp
		done
	done
done
for i in {0..49}
do 
	for j in {0..9}
	do
		for k in "${test[@]}"
		do
			end=".wav"
			utt="${k}_${j}_${i}"
			path="/home/viet/kaldi/vie_digits_viet_test_dan/data/test/"
			file="$path${k}/$utt$end"
			echo "$utt $file" >> test/wav.scp
		done
	done
done

# Generate text
# <uterranceID> <text_trancription>
touch test/text
touch train/text
> test/text
> train/text

for i in {0..49}
do 
	for j in {0..9}
	do
		for k in "${train[@]}"
		do
			utt="${k}_${j}_${i}"
			echo "$utt ${map[$j]}" >> train/text
		done
	done
done
for i in {0..49}
do 
	for j in {0..9}
	do
		for k in "${test[@]}"
		do
			utt="${k}_${j}_${i}"
			echo "$utt ${map[$j]}" >> test/text
		done	
	done
done

# Generate utt2speak
# <uterranceID> <speakerID>
touch test/utt2spk
touch train/utt2spk
> test/utt2spk
> train/utt2spk

for i in {0..49}
do 
	for j in {0..9}
	do
		for k in "${train[@]}"
		do
			utt="${k}_${j}_${i}"
			echo -e "$utt $k" >> train/utt2spk
		done
	done
done
for i in {0..49}
do 
	for j in {0..9}
	do
		for k in "${test[@]}"
		do
			utt="${k}_${j}_${i}"
			echo -e "$utt $k" >> test/utt2spk
		done	
	done
done

# Create corpus
# <text_traincription>
touch local/corpus.txt
> local/corpus.txt

for i in "${arr[@]}"
do
	echo $i >> local/corpus.txt
done

cd ..
./utils/validate_data_dir.sh data/test
./utils/fix_data_dir.sh data/test
./utils/validate_data_dir.sh data/train
./utils/fix_data_dir.sh data/train










		
