#!/bin/bash

#**************************************
#* Project 6 - Data Visualization     *
#* Determine Planes Tracked Per Hour  *
#* David McCain                       *
#**************************************

awk 'BEGIN{FS=","}{print $1}' Planes_20151023.out |
grep -vi "starting" |
grep -vi "bad msg" |
grep -vi "ending"  |
cut -d\- -f2 |
sort -n |
uniq -c |
sort -n  > "planeTimes.dat" |
more

#next type {gnuplot} into terminal and hit Enter. Then type {plot 'planeTimes.dat' u 2:1} and hit Enter to graph the data...
