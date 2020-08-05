#!/bin/bash -x
EMP_RATE_PER_HR=20
Attendence=$((RANDOM%2))
case $Attendence in
					0) echo "Employee is present"
						EmpHrs=8
						;;
					1) echo "Employee is absent"
						EmpHrs=0
						;;
esac
dailyWage=$(($EMP_RATE_PER_HR*$EmpHrs))
echo "Daily wage of employee is $dailyWage"

