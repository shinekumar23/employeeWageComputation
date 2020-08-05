#!/bin/bash -x
IS_PART_TIME=1
IS_FULL_TIME=2
EMP_RATE_PER_HR=20
numWorkingDays=20
MAX_HRS_IN_MONTH=100

totalEmpHr=0
totalWorkingDays=0

declare -A dailyWages
function getWorkHrs() {
        case $1 in
                $IS_FULL_TIME)
                        empHrs=8
                        ;;
                $IS_PART_TIME)
                        empHrs=4
                        ;;
                *)
                        empHrs=0
        esac
}

function getEmpWage () {
        echo $(($1*$EMP_RATE_PER_HR))
}
while [[ $totalEmpHr -lt $MAX_HRS_IN_MONTH &&   $totalWorkingDays -lt $numWorkingDays ]]
do
        ((totalWorkingDays++))
        getWorkHrs $((RANDOM%3))
        totalEmpHr=$(($totalEmpHr+$empHrs))
        dailyWages["Day "$totalWorkingDays]="$(($empHrs*$EMP_RATE_PER_HR))"
done
totalSalary="$( getEmpWage $totalEmpHr )"
echo "Days are ${!dailyWages[@]}"
echo "DayWise salaries are ${dailyWages[@]}"







