#!/bin/bash -x
Attendence=$((RANDOM%2))
case $Attendence in
					0) echo "Employee is present"
						;;
					1) echo "Employee is absent"
						;;
esac
