#!/bin/bash -x

half=1
full=2
perhour=100
maxday=26
total=0

for ((day=1; day<=$maxday; day++))
do
	r=$((RANDOM%3))
	case $r in
		$half)
			emp=4 ;;
		$full)
			emp=8 ;;
		*)
			emp=0 ;;
	esac
	total=$(($total+$emp))
done
month=$(($total*$perhour))
echo "monthly salary is $month"
