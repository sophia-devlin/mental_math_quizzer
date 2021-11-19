#!/bin/bash
# Sophia Devlin

source ./functions.sh

test_construct_number () {
	echo "Should be 1: $(construct_number 1)"
	echo "Should be 10: $(construct_number 10)"
	echo "Should be 11: $(construct_number 11)"
	echo "Should be 18: $(construct_number 18)"
	echo "Should be 20: $(construct_number 20)"
	echo "Should be 27: $(construct_number 27)"
	echo "Should be 99: $(construct_number 99)"
}


test_construct_number
