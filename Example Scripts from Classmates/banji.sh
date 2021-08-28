

###############################################################################
#     				Claimed Scenario Coded                        #
###############################################################################
# Project Scenario | After awaking from a coma, I've lost sense of time.I'd   # #                  | like to know whether a given date is before today, after # #                  | today, or today.                                         #
#-----------------------------------------------------------------------------#
# Input            | Date                                                     #
#-----------------------------------------------------------------------------#
# Output           | Whether a given date is before today, after today or     #
#                  | today.                                                   #
###############################################################################

#!/bin/bash
cd /home/Banji



#variable holding day, month and year
current_day=$(date +%d) 
current_month=$(date +%m)
current_year=$(date +%Y) 



#prompt the user to input dates
echo "Please enter today's date (mm dd yyyy) format: "



#read user input into already declared variables
read entered_month entered_day entered_year


#figure out the entered date is today, yesterday or tomorrow
if [ $entered_month == $current_month ] && [ $entered_day == $current_day ] && [ $entered_year == $current_year ]
then
    echo "The Entered Date Is Today"
    elif [ $entered_year > $current_year ]
    then
        echo "The Entered Date Is After Today"
        elif [ $entered_year < $current_year ]
        then
            echo "The Entered Date Is Before today"
            elif [ $entered_year == $current_year ] && [ $entered_month <   $current_month ]
            then
                echo "The Entered Date Is Before today"
                elif [ $entered_year == $current_year ] && [ $entered_month > $current_month ]
                then
                    echo "the date is after today"
                    elif [ $entered_year == $current_year ] && [ $entered_month == $current_month ] && [ $entered_day < $current_day ]
                    then 
                        echo "The Entered Date Is Before today"
                        elif [ $entered_year == $current_year ] && [ $entered_month == $current_month ] && [ $entered_day == $current_day ]
                        then 
                            echo "The Entered Date Is After today"
                        else
                        #Warning
                            echo "Warning! Invalid input. Please Try Again!"
fi
