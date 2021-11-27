#!/bin/bash
# Sophia Devlin

source functions.sh

test_construct_number () {
	echo "Should be 1: $(construct_number 1)"
	echo "Should be 10: $(construct_number 10)"
	echo "Should be 11: $(construct_number 11)"
	echo "Should be 18: $(construct_number 18)"
	echo "Should be 20: $(construct_number 20)"
	echo "Should be 27: $(construct_number 27)"
	echo "Should be 99: $(construct_number 99)"
	echo "Should be 100: $(construct_number 100)"
	echo "Should be 201: $(construct_number 201)"
	echo "Should be 310: $(construct_number 310)"
	echo "Should be 515: $(construct_number 515)"
	echo "Should be 420: $(construct_number 420)"
}


test_construct_number
