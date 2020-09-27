#!/bin/bash -x
#1#

read -p "Say Heads or Tails (Simply Enter 1.For Heads 0.For Tails) : " userInputValue;
randomValue=$((RANDOM%2));
echo $randomValue;
if [ $randomValue == $userInputValue ]
then
	echo "Congratulations ! You Won The Toss";
else
	echo "Sorry,You Lost The Toss !";
fi
