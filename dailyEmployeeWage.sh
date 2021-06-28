#! /bin/bash -x

#constant
IS_PRESENT=1
EMP_RATE_PER_HR=20
#Variable 
empcheck=$((RANDOM%2))

if [ $empcheck -eq $IS_PRESENT ]
then 
	empHrs=8
	salary=$(( empHrs * EMP_RATE_PER_HR ))
else
	salary=0
fi
