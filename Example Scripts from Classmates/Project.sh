#!/usr/bin/env bash

# =============================================================================
# TITLE:		ManBearPig
# ASSIGNMENT:	Project 3.1 - Scripting a decision scenario
# COURSE:		Linux Shell Scripting (COP 2341C)
# PROFESSOR:	Prof. Jerry Reed
# AUTHOR:		Max Gebhardt
# DATE:			2019-09-11
# =============================================================================
# PURPOSE:		Play the legendary ManBearPig card in the mobile game, 
#				"Southpark: Phone Destroyer," when: It's the beginning of the match;
#				AND you have seven energy; OR it's later in the match; AND you have
#				seven energy; AND there are no enemy units on your side of the
#				battlefield; AND you have no cards of four energy cost or lower in
#				your hand.
# =============================================================================

echo "-------------------------------------"
echo "MANBEARPIG CARD PLAYING DETERMINATION"
echo -e "-------------------------------------\n"

TRUE=0
FALSE=1

manbearpigcard=$FALSE

#
# Determine the player's energy level.
#
energylevel=""
# Loop to verify correct data input (a number 7-10).
while [[ ! $energylevel == [789] && ! $energylevel == 10 ]]; do
	read -p "Enter energy level number: " energylevel
	if [[ ! $energylevel == [789] && ! $energylevel == 10 ]]; then
		echo "Invalid response." 1>&2
	fi
done

if [[ "$energylevel" == "7" ]]; then # Continue if the energy level is 7.
	#
	# Determine whether it's the beginning of the match.
	#
	beginning=""
	# Loop to verify correct data input (some form of either yes or no).
	while [[ $beginning != [yn] ]]; do
		read -p "Is it the beginning of the match? (Y/N): " beginning # Ask for input of whether or not it's the beginning of the match.
		if [[ $beginning == [yY] || $beginning == [yY][eE][sS] ]]; then
			beginning="y"
			manbearpigcard=$TRUE # Play the ManBearPig card because the game state is at the beginning.
		elif [[ $beginning == [nN] || $beginning == [nN][oO] ]]; then
			beginning="n"
		else
			echo "Invalid response." 1>&2
		fi
	done
	
	#
	# Determine where the enemy units are.
	#
	if [[ $beginning == "n" ]]; then # Continue if it's not the beginning of the match
		enemystate=""
		# Loop to verify correct data input (some form of either yes or no).
		while [[ $enemystate != [yn] ]]; do
			read -p "Are there enemy units on your side of the battlefield? (Y/N): " enemystate # Ask for input of where enemy units are.
			if [[ $enemystate == [yY] || $enemystate == [yY][eE][sS] ]]; then
				enemystate="y"
			elif [[ $enemystate == [nN] || $enemystate == [nN][oO] ]]; then
				enemystate="n"
			else
				echo "Invalid response." 1>&2
			fi
		done
		
		#
		# Determine the state of the player's card levels.
		#
		if [[ $enemystate == "n" ]]; then # Continue if the enemies are not on the player's side of the battlefield.
			cards=""
			# Loop to verify correct data input (some form of either yes or no).
			while [[ $cards != [yn] ]]; do
				read -p "Do you have cards of four energy cost or lower? (Y/N): " cards # Ask for input about card levels.
				if [[ $cards == [yY] || $cards == [yY][eE][sS] ]]; then
					cards="y"
				elif [[ $cards == [nN] || $cards == [nN][oO] ]]; then
					cards="n"
				else
					echo "Invalid response." 1>&2
				fi
			done

			# If all four of the above conditions (energy, game state, enemy state, card levels) apply appropriately, set to play the ManBearPig card.
			if [[ $cards == "n" ]]; then
				manbearpigcard=$TRUE
			fi
		fi
	fi
fi

[[ $manbearpigcard == $TRUE ]] && echo -e "\nPlay the ManBearPig card!" || echo -e "\nDo not play the ManBearPig card!"
