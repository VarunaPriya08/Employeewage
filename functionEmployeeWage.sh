#! /bin/bash -x
IS_PRESENT_FULL_TIME=1
IS_PRESENT_HALF_TIME=2
EMP_RATE_PER_HR=20
MAX_WORKING_DAYS=20
MAX_WORK_HRS=0
totalWorkingHours=0
day=1

function getWorkHr(){
 # i/p to functn
 local empCheck=$1
 local empHrs=0
 #selection
 case $empCheck in
	$IS_PRESENT_FULL_TIME) 
		empHrs=8
		;;
	$IS_PRESENT_HALF_TIME) 
		empHrs=4
		;;
	*) 
		empHrs=0
		;;
 esac
 # o/p of function
 echo $empHrs
}
while [ $day -le $MAX_WORKING_DAYS ] && [ $totalworkingHours -lt $MAX_WORKING_HR ]
do
	#variable
	((day++))
	empCheck=$((RANDOM%3))
	#function call
	empHrs="$( getWorkHr $empCheck )"
	totalWorkingHours=$(( totalWorkingHours + empHrs ))
done
totalSalary=$(( totalWorkingHours * EMP_RATE_PER_HR ))
