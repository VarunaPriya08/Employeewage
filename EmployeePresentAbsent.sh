#! /bin/bash -x

a=$((RANDOM%2))

if [ $a -eq 0 ]
then
	echo " employee is absent "
else
	echo " employee is present "
fi
