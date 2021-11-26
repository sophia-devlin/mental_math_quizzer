#!/bin/bash
#Streamline the recoording of audio files
#Prompt for numbers 1-12
#Prompt for "thir" and "fif"
#Prompt for numbers 20-90 by tens
#Prompt for numbers 100-900 by hundreds

source ../functions.sh

inc=1
while [ $inc -le 12 ]
do
	echo "say $inc"
	#arecord -d 4 $(construct_number $inc).wav
	inc=$(($inc+1))
done

echo "say thir"
arecord -d 4 thirteen.wav
echo "say fif"
arecord -d 4 fifteen.wav

inc=1
while [ $inc -le 9 ]
do
	num=$(($inc * 10))
	echo "say $num"
	#arecord -d 4 $(construct_number $num).wav
	inc=$(($inc+1))
done


