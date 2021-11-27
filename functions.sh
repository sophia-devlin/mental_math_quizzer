#!/bin/bash 
# Sophia Devlin 11/18/21

construct_number_helper () {
	digit=$1
	tens_digit=$2
	result=""
	case $digit in 
		0)
		if [ $tens_digit -eq 1 ]; then result+="ten"; fi
		;;
		
		1)
		if [ $tens_digit -eq 1 ]; then result+="eleven"; else result+=" one"; fi
		;;

		2)
		if [ $tens_digit -eq 1 ]; then result+="twelve"; else result+=" two"; fi
		;;	
		
		3)
		if [ $tens_digit -eq 1 ]; then result+="thir"; else result+=" three"; fi
		;;

		4)
		result+=" four"
		;;

		5)
		if [ $tens_digit -eq 1 ]; then result+="fif"; else result+=" five"; fi
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
	echo $result
}

construct_number () {
	result="" #This will be replaced when script changes to array of audio file names
	number=$1
	first_digit=$(($number/100))
	second_digit=$(($(($number%100))/10))
	third_digit=$(($number%10))

	if [ $first_digit -gt 0 ]; then
		result+=$(construct_number_helper $first_digit 0)
		result+="hundred"
	fi

	case $second_digit in
		2)
		result+="twenty"
		;;

		3)
		result+="thirty"
		;;

		4)
		result+="fourty"
		;;

		5)
		result+="fifty"
		;;

		6)
		result+="sixty"
		;;

		7)
		result+="seventy"
		;;

		8)
		result+="eighty"
		;;

		9)
		result+="ninety"
		;;
	esac

	if [ $third_digit -ge 0 ]; then
		result+=$(construct_number_helper $third_digit $second_digit) 
	fi

	if [ $second_digit -eq 1 ]; then
		if [ $third_digit -ge 3 ]; then
			result+="teen"
		fi
	fi
	
	echo $result
}
