#!/usr/bin/env bash

read -p "Whats your credit score? " creditScore
read -p "How many years have you worked at your current job? " numYearsAtJob
read -p "Whats your gross monthly income? " monthlyIncome
read -p "Whats the monthly payment on the possible mortgage? " mortgagePayment
read -p "Do you have enough cash to pay the house in full? (No: 0, Yes: 1) " hasEnoughCash

if (( $creditScore >= 620)) && (( $numYearsAtJob >= 2)) && (( $monthlyIncome > (3 * $mortgagePayment))) || (($hasEnoughCash == 1))
then
    printf "You should be able to afford this mortgage.\n"
else
    printf "You would not be able to afford this mortgage.\n"
fi
