#!/bin/bash

#**************************************
#* Project 6 - Data Visualization     *
#* Determine Planes Tracked Per Hour  *
#* David McCain                       *
#**************************************

cat Planes_20151023.out | tr -d '-' | grep -vi "Starting" | awk 'BEGIN{FS=","}{print $1}' >> planeData.txt | more

lineCount=0
planeCount=0
let initialTime=20151023083441 #First entry's date-time field...
let hourAdd=10000
let newTime=$initialTime

until [ $lineCount -gt 176173 ] #End after comparing last entry on line 176,173...
do
  let tempTime=$newTime+$hourAdd
  lineCount=$((lineCount + 1))
  if [ "$1" -le "$tempTime" ] ; then #This is where I'm having issues...
	planeCount=$((planeCount + 1))
  else
      newTime=$(($newTime+$hourAdd))
      echo $planeCount >> "newFile_numPlanesPerHour.dat" #This shows the data outputting 176,173 lines of zero planes counted...
      planeCount=0
  fi
done
