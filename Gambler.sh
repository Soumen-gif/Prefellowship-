
#!/bin/bash -x
stakes=100
game=0
x=$((RANDOM%2))
if [[ $x -eq 1 ]]
 then
  ((stakes++))
echo $stakes
  echo "he win the game"
else
echo "he lost the game"
fi

