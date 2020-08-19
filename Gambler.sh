#!/bin/bash -x

stakes=100
day=0
game=0
win=1
lose=0
x=$((RANDOM%2))
function gamble(){
    while [[ $game -lt 1 ]]
      do 
        if [[ $x -eq $win ]]
            then
               echo "gambler won the game"
                stakes=$(($stakes+1))
         else 
              echo "gambler lost the game"
              stakes=$(($stakes+1))
      fi
  done
 }
  gamble



