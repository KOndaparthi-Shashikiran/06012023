#!/bin/bash/ -x

half=1
full=2
perhour=100
maxday=26
total=0
day=1

while ((day<=$maxday))
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
	((day++))
done
month=$(($total*$perhour))
echo "monthly salary is $month"

