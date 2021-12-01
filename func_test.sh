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

test_play_number () {
	echo "1:"; play_number "$(construct_number 1)"
	echo "12:"; play_number "$(construct_number 12)"
	echo "15:"; play_number "$(construct_number 15)"
	echo "19:"; play_number "$(construct_number 19)"
	echo "20:"; play_number "$(construct_number 20)"
	echo "32:"; play_number "$(construct_number 32)"
	echo "100:"; play_number "$(construct_number 100)"
	echo "206:"; play_number "$(construct_number 206)"
	echo "999:"; play_number "$(construct_number 999)"
}

#test_construct_number
test_play_number
