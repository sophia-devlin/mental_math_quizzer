#!/bin/bash 
# Sophia Devlin 11/18/21

construct_number () {
	digits=""
	number=$1
	first_digit=$(($number/10))
	second_digit=$(($number%10))

	case $first_digit in
		2)
		digits+="twenty"
		;;

		3)
		digits+="thirty"
		;;

		4)
		digits+="fourty"
		;;

		5)
		digits+="fifty"
		;;

		6)
		digits+="sixty"
		;;

		7)
		digits+="seventy"
		;;

		8)
		digits+="eighty"
		;;

		9)
		digits+="ninety"
		;;
	esac
	case $second_digit in 
		0)
		if [ $first_digit -eq 1 ]; then digits+="ten"; fi
		;;
		
		1)
		if [ $first_digit == 1 ]; then digits+="eleven"; else digits+=" one"; fi
		;;

		2)
		if [ $first_digit == 1 ]; then digits+="twelve"; else digits+=" two"; fi
		;;	
		
		3)
		if [ $first_digit == 1 ]; then digits+="thir"; else digits+=" three"; fi
		;;

		4)
		digits+=" four"
		;;

		5)
		if [ $first_digit == 1 ]; then digits+="fif"; digits+=" four"; fi
		;;

		6)
		digits+=" six"
		;;

		7)
		digits+=" seven"
		;;

		8)
		digits+=" eight"
		;;

		9)
		digits+=" nine"
		;;
	esac
	if [ $first_digit == 1 ]; then
		if [ $second_digit -ge 3 ]; then
			digits+="teen"
		fi
	fi


	echo $digits
}
