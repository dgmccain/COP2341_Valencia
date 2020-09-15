#!/usr/bin/env bash

#******************
#* Project #11    *
#* David McCain   *
#******************

grep -Ri 'coffee' /home/david/Desktop/2015_ACARS
#The '*' should be where the directory path is entered, or else the current directory will be used by default.
#This means that the best way to utilize this script is to open terminal and go to the directory where the
#desired files are located where you should then enter this command manually into the terminal itself. Otherwise,
#this script will be included when the 'coffee' grep command is run.
#------------------------------------------------------------------------------------------------------------
#The -i option disregards case sensitivity for 'coffee' and -r searches the current directory for
#the string. The file location and lines found will automatically be printed. the -n can be also
#be added to print out the line numbers where 'coffee' was found...
