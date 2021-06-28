#! /bin/bash -x

echo " Welcome to the EmployeeWageComputation "
if [ $((RANDOM%2)) -eq 1 ]
then
	echo "Employee is Present"
else
	echo "Employee is not Present"
fi
