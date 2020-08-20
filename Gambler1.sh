#!/bin/bash -x

stakes=100
day=0
game=0
win=1
lose=0
winningTarget=150
loosingTarget=50

function gamble(){
   while [[ $stakes -gt $loosingTarget && $stakes -lt $winningTarget ]]
   do
      if [[ $((RANDOM%2)) -eq $win ]]
      then
         stakes=$(($stakes+1))
      else
         stakes=$(($stakes-1))
      fi
         ((game++))
   done
}
gamble
