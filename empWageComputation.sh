#!/bin/bash -x
IS_PART_TIME=1
IS_FULL_TIME=2
EMP_RATE_PER_HR=20
Attendence=$((RANDOM%3))
case $Attendence in
						$IS_PART_TIME) EmpHrs=4
										   ;;
						$IS_FULL_TIME) EmpHrs=8
							            ;;
					      	      *) EmpHrs=0
										   ;; 
esac
dailyWage=$(($EMP_RATE_PER_HR*$EmpHrs))
echo "Daily wage of employee is $dailyWage"

