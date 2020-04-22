cd ../train/
rm -rf *.wav
cd ../test/
rm -rf *.wav
cd ../raw/

for j in {0..7}
do
	for i in ./*${j}.wav
	do sox -S $i -r 16000 -b 16 "../train/$i"
	done
done

for j in {8..9}
do
	for i in ./*${j}.wav
	do sox -S $i -r 16000 -b 16 "../test/$i"
	done
done

chmod +x ../train/*.wav
chmod +x ../test/*.wav
