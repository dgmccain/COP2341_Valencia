#!/bin/bash

#**************************************
#* Project 6 - Data Visualization     *
#* Determine Planes Tracked By Time   *
#* David McCain                       *
#**************************************

awk 'BEGIN{FS=","}{print $1}' Planes_20151023.out |
grep -vi "starting" |
grep -vi "bad msg" |
grep -vi "ending"  |
cut -d\- -f2 |
sort -n |
uniq -c |
sort -n  > "planeTimes.dat"

#next type gnuplot into terminal and hit Enter. (Also, I am using gnuplot X11)...

#Then enter the following commands:
# set title "Number of Planes Graphed per Hour"
# set xdata time
# set timefmt "%H%M%S"
# set format x "%H"
# plot "planeTimes.dat" using 2:1

#once you hit Enter, gnuplot should graph the data...

#as a side-note, you can also type plot "planeTimes.dat" u 2:1 w impulses lw 3
#impulse will plot the points in a bar graph style, and lw 3 will increase the line width of the impulses
