#!/bin/bash -x

stakes=100
day=20
game=0
won=1
winningTarget=150
loosingTarget=50
totalAmount=0
totalLost=0

function playForDays(){
	 for (( i=0; i<$day; i++ ))
   do
      stakes=100
       while [[ $stakes -gt $loosingTarget && $stakes -lt $winningTarget ]]
      do
         if [[ $((RANDOM%2)) -eq $won ]]
         then
            stakes=$(($stakes+1))
         else
            stakes=$(($stakes-1))
         fi
       done

   totalAmount=$(($totalAmount+$stakes))
   done
   investedAmount=$(($day*100))
   if [[ $(($totalAmount-$investedAmount)) -lt 0 ]]
   then
      lost=$(($investedAmount-$totalAmount))
      echo "Total lost this month are: $lost"
   else
      won=$(($totalAmount-$investedAmount))
      echo "Total win this month are: $won"
   fi

}
playForDays
