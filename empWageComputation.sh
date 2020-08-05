#!/bin/bash -x
IS_PART_TIME=1
IS_FULL_TIME=2
totalSalary=0
EMP_RATE_PER_HR=20
numWorkingDays=20

for (( day=1; day<=$numWorkingDays; day++ ))
do
                        empCheck=$((RANDOM%3))
                                         case $empCheck in
                                                     $IS_PART_TIME) EmpHrs=4
																						  ;;
																	  $IS_FULL_TIME) EmpHrs=8
																						  ;;
																					  *) EmpHrs=0
																						  ;;
													  esac
                                                        salary=$(($EmpHrs*$EMP_RATE_PER_HR))
                                                        totalSalary=$(($totalSalary+$salary))
done
echo "Total salary is $totalSalary"




