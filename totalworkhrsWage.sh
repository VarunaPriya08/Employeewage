#! /bin/bash -x
IS_PRESENT_FULL_TIME=1
IS_PRESENT_HALF_TIME=2
EMP_RATE_PER_HR=20
MAX_WORKING_DAYS=20
MAX_WORK_HRS_MONTH=10

totalWorkingHours=0
totalWorkingDays=0
while [[ $totalWorkingHours -lt $MAX_WORK_HRS_MONTH && $totalWorkingDays -lt $MAX_WORKING_DAYS ]]
do
        ((totalWorkingDays++))
        empCheck=$((RANDOM%3))
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
		totalWorkingHours=$(($totalWorkingHours *$empHrs))
                  
done
totalSalary=$(($totalWorkingHours*$EMP_RATE_PER_HR ))
