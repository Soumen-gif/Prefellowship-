#!/bin/bash -x

stakes=100
day=20
game=0
Win=1
winningTarget=150
loosingTarget=50
totalAmount=0

function gamble(){
		while [[ $stakes -gt $loosingTarget && $stakes -lt $winningTarget ]]
		do
			if [[ $((RANDOM%2)) -eq $Win ]]
			then
				stakes=$(($stakes+1))
			else
				stakes=$(($stakes-1))
			fi
				((game++))
		done
		echo $stakes
}
 function playForDays(){
	for (( i=0; i<$day; i++ ))
	do
		totalAmount=$(($totalAmount+$stakes))
	done
}
playForDays
