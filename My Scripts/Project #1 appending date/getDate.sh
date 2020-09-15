#!/usr/bin/env bash

#******************
#* Project #1     *
#* David McCain   *
#******************


oldFile=myFile.txt
#myFile.txt needs to be created and populated for it to be copied/modified

currentDate=$(date +"%m-%d-%Y")
echo "Date: $currentDate"

newFile=$oldFile.$currentDate

tail -n 10 myFile.txt > "$newFile"
#this tails the file to the last 10 lines
#and adds the date and time to the file name itself...

tail -n 10 myFile.txt >> "newFile2" | echo $currentDate >> "newFile2"
#this tails the file and creates a new file titled "newFile2"
#then, the date and time is added to the first line of "newFile2"
