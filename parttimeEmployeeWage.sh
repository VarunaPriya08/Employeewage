#! /bin/bash -x

#constant
IS_PRESENT_FULL_TIME=1
IS_PRESENT_HALF_TIME=2
EMP_RATE_PER_HR=20
#Variable 
empcheck=$((RANDOM%3))
#selection
if [ $empcheck -eq $IS_PRESENT_FULL_TIME ]
then 
	empHrs=8
elif [ $empCheck -eq $IS_PRESENT_HALF_TIME ]
then
	empHrs=4
else
	empHrs=0
fi

salary=$(( empHrs * EMP_RATE_PER_HR ))
