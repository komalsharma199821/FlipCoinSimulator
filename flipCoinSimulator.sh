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

#3#
MAXIMUM_POINT=21;
timesHeadsGotGenerated=0;
timesTailsGotGenearted=0;
while [[ $timesHeadsGotGenerated -lt MAXIMUM_POINT && $timesTailsGotGenerated -lt MAXIMUM_POINT ]]
do
	value=$( generateRandomValue $((RANDOM%2)) );
	if [ $value == 1 ]
	then
		timesHeadsGotGenerated=$((timesHeadsGotGenerated+1));
	else
		timesTailsGotGenerated=$((timesTailsGotGenerated+1));
	fi
done

if [ $timesHeadsGotGenerated -gt $timesTailsGotGenerated ]
then 
	headsWonByPoints=$((timesHeadsGotGenerated-timesTailsGotGenerated));
	echo "Heads Won By "$headsWonByPoints" points !";
else
	tailsWonByPoints=$((timesTailsGotGenerated-timesHeadsGotGenerated));
	echo "Tails Won By "$tailsWonByPoints" points !";
fi


#4#
if [ $timesHeadsGotGenerated -eq $timesTailsGotGenerated ]
then
	echo "ITS a Tie !!!";
	difference=0;
	while [ $difference -lt 3 ]
	do
			val=$( generateRandomValue $((RANDOM%2)) );
			if [ $val == 1 ]
			then
				heads=$((heads+1));
			else
				tails=$((tails+1));
			fi
	    if [ $heads -gt $tails ]
	    then
		difference=$((heads-tails));
            else
		difference=$((tails-heads));
	    fi
	done
fi
