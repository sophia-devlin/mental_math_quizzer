!#/bin/bash

source functions.sh

echo "Welcome to the Mental Math Quizzer (Multiplication Edition)"
echo "To exit, press q"

input=""

until [[ $input = "q" ]] || [[ $input = "Q" ]] 
do
	play_mult_problem $(generate_mult_problem)
	read -t 2 -N 1 input
done

echo "Thank you for using the Mental Math Quizzer (Multiplication Edition)"
