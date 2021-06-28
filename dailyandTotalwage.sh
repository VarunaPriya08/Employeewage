#! /bin/bash -x
# declare explicit array
declare -a dailyWage
#constant
IS_PRESENT_FULL_TIME=1
IS_PRESENT_FULL_TIME=2
EMP_RATE_PER_HR=20
MAX_WORKING_DAYS=20
MAX_WORKING_HR=80
totalWorkingHours=0
day=1

function getWorkHr(){
	#i/p to func
	local empCheck=$1
	local empHrs=0
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
function getWage(){
 	local empHrs=$1
 	local salary=$(( empHrs * EMP_RATE_PER_HR ))
	echo $salary  
}
while [ $day -lt $MAX_WORKING_DAYS ] && [ $totalWorkingHours -lt $MAX_WORKING_HR ]
do
	#variable
	empCheck=$((RANDOM%3))
	#function call
	empHrs="$( getWorkHr $empCheck )"
	totalWorkingHours=$(( totalWorkingHours + empHrs ))
	dailyWage[ ((day++)) ]="$( getWage $empHrs )"
done
totalSalary=$(( totalWorkingHours * EMP_RATE_PER_HR ))
echo totalIncome:$totalSalary
echo dailyWages:${dailyWage[*]}

