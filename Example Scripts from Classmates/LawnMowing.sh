#!/bin/bash
echo "Should you mow the lawn?"

echo "Is it the weekend? (y or n)"
read day

echo "Is it after 5 pm (y or n)?"
read time

echo "Is the grass too long? (y or n)"
read longGrass

echo "Is it sunny outside? (y or n)"
read sunny

if [[ ( $day == "y" || ( $day == "n" && $time == "y" )) && $longGrass == "y" && $sunny == "y" ]];
then
	echo "It's time to mow the lawn"
else
	echo "You shouldn't mow the lawn right now"
fi
