#!/bin/bash 
# Sophia Devlin 11/18/21

audio_filepath="audio_files/"

construct_number_helper () {
	digit=$1
	tens_digit=$2
	result=""
	case $digit in 
		0)
		if [ $tens_digit -eq 1 ]; then result+=" ten"; fi
		;;
		
		1)
		if [ $tens_digit -eq 1 ]; then result+=" eleven"; else result+=" one"; fi
		;;

		2)
		if [ $tens_digit -eq 1 ]; then result+=" twelve"; else result+=" two"; fi
		;;	
		
		3)
		if [ $tens_digit -eq 1 ]; then result+=" thir"; else result+=" three"; fi
		;;

		4)
		result+=" four"
		;;

		5)
		if [ $tens_digit -eq 1 ]; then result+=" fif"; else result+=" five"; fi
		;;

		6)
		result+=" six"
		;;

		7)
		result+=" seven"
		;;

		8)
		result+=" eight"
		;;

		9)
		result+=" nine"
		;;
	esac
	echo "$result"
}

construct_number () {
	number=$1
	result=""
	first_digit=$(($number/100))
	second_digit=$(($(($number%100))/10))
	third_digit=$(($number%10))

	if [ $first_digit -gt 0 ]; then
		result+="$(construct_number_helper $first_digit 0)"
		result+=" hundred"
	fi

	case $second_digit in
		2)
		result+=" twenty"
		;;

		3)
		result+=" thirty"
		;;

		4)
		result+=" fourty"
		;;

		5)
		result+=" fifty"
		;;

		6)
		result+=" sixty"
		;;

		7)
		result+=" seventy"
		;;

		8)
		result+=" eighty"
		;;

		9)
		result+=" ninety"
		;;
	esac

	if [ $third_digit -ge 0 ]; then
		result+="$(construct_number_helper $third_digit $second_digit)" 
	fi

	if [ $second_digit -eq 1 ]; then
		if [ $third_digit -ge 3 ]; then
			result+=" teen"
		fi
	fi
	
	echo $result #A list of the audio files needed
}

play_number () {
	num_string=$1 #A space separated list of the file names without extensions
	num_array=( $num_string )
	for elem in "${num_array[@]}"
	do
		aplay -q ${audio_filepath}${elem}.wav
	done
}

generate_mult_problem () {
	first_factor=$((1 + $RANDOM % 9))
	second_factor=$((1 + $RANDOM % 99))
	product=$(($first_factor * $second_factor))
	echo "$first_factor $second_factor $product"
}

play_mult_problem () {
	first_factor=$1
	second_factor=$2
	product=$3
	delay=${4:-10}
	play_number "$(construct_number $first_factor)"
	aplay -q ${audio_filepath}times.wav
	play_number "$(construct_number $second_factor)"
	sleep $delay
	play_number "$(construct_number $product)"
}
