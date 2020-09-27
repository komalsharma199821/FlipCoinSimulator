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

#2#
#HEADS=1 #TAILS=0
for i in {1..10}
do
	function generateRandomValue() {
        case $1 in
                1) generateRandomValue=0;;
                *) generateRandomValue=1;;
	esac
        echo $generateRandomValue;
}
	generatedRandomValue=$( generateRandomValue $((RANDOM%2)) );
	if [ $generatedRandomValue == 1 ]
	then
		timesHeadsAppeared=$((timesHeadsAppeared+1));
	else
		timesTailsAppeared=$((timesTailsAppeared+1));
	fi
done
echo "Times Heads Won : "$timesHeadsAppeared;
echo "Times Tails Won : "$timesTailsAppeared;
