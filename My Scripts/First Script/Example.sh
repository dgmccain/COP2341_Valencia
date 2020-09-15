#!/bin/bash

#======================================================
#determine if conditions are right for mowing the grass
#======================================================

#Original code format...
#if [[ $weekend == "y" || $weekend == "Y" ]]
# then
#  echo "Mow the grass."
#elif [[ [ $weekend == "n" || $weekend == "N" ] && [ $time == "y" || $time == "Y" ] && [ $grassLength == "y" || $grassLength == "Y" ] && [ $sunny == "y" || $sunny == "Y" ] ]]
# then
#  echo "Mow the grass."
#else
# echo "Don't mow the grass."
#fi

echo "-------------------------------"
echo "Conditions for mowing the grass"
echo -e "-------------------------------\n"

weekend="" #if it is the weekend then mow the lawn regardless of other circumstances...
read -p "Is it the weekend? Y/N: " weekend
if [[ $weekend == [yY] || $weekend == [yY][eE][sS] ]];
then
	weekend="y"
	echo "Mow the lawn."
elif [[ $weekend == [nN] || $weekend == [nN][oO] ]];
then
	weekend="n"
else
	echo "INVALID INPUT..."
fi

	if [[ $weekend == "n" ]]; #if it is not the weekend then find time...
	then
		time=""
		read -p "Is it after 5:00pm? Y/N: " time
		if [[ $time == [yY] || $time == [yY][eE][sS] ]];
		then
			time="y"
		elif [[ $time == [nN] || $time == [nN][oO] ]];
		then
			time="n"
			echo "Do not mow the lawn."
		else
			echo "INVALID INPUT"
		fi
	fi

	if [[ $time == "y" ]]; #if time is after 5:00pm then determine grass length...
	then
		grassLength=""
		read -p "Is the grass too long? Y/N: " grassLength
		if [[ $grassLength == [yY] || $grassLength == [yY][eE][sS] ]];
		then
			grassLength="y"
		elif [[ $grassLength == [nN] || $grassLength == [nN][oO] ]];
		then
			grassLength-"n"
			echo "Do not mow the lawn."
		else
			echo "INVALID INPUT"
		fi
	fi

	if [[ $grassLength == "y" ]]; #if grass length is too long then determine if the weather is sunny...
	then
		sunny=""
		read -p "Is it sunny outside? Y/N: " sunny
		if [[ $sunny == [yY] || $sunny == [yY][eE][sS] ]];
		then
			sunny="y"
			echo "Mow the lawn." #if all the conditions are now met then mow the lawn...
		elif [[ $sunny == [nN] || $sunny == [nN][oO] ]];
		then
			sunny="n"
			echo "Do not mow the lawn."
		else
			echo "INVALID INPUT"
		fi
	fi

