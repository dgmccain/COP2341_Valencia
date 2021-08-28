#! /bin/bash
#variable that holds the numeric value of the date
currentMonth=$(date +%m)
currentDay=$(date +%d) 
currentYear=$(date +%Y) 
#ask the user to input dates
echo "You woke up from a coma, and lost your sense of time. Please enter today's date (mm dd yyyy): "
#input text
read month day year
#depending on your input, it will tell you if the date is today, before today, or after today
if [ $month -eq $currentMonth ] && [ $day -eq $currentDay ] && [ $year -eq $currentYear ]
then
    echo "the date is today"
    elif [ $year -gt $currentYear ]
    then
    echo "the date is after today"
    elif [ $year -lt $currentYear ]
    then
    echo "the date is before today"
    elif [ $year -eq $currentYear ] && [ $month -lt $currentMonth ]
    then
    echo "the date is before today"
    elif [ $year -eq $currentYear ] && [ $month -gt $currentMonth ]
    then
    echo "the date is after today"
    elif [ $year -eq $currentYear ] && [ $month -eq $currentMonth ] && [ $day -lt $currentDay ]
    then 
    echo "the date is before today"
    elif [ $year -eq $currentYear ] && [ $month -eq $currentMonth ] && [ $day -gt $currentDay ]
    then 
    echo "the date is after today"
    else
    #input check
    echo "Invalid input. Please type in mm dd yyyy format"
fi
