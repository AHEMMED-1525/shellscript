#! /bin/bash
read -p "Enter the day " d
read -p " Enter the month" m
read -p "Enter the year" y

Yo=$(( y-(14-m)-12 ))
b=$(( Yo+Yo/4-Yo/100+Yo/400 ))
c=$(( m+12*((14-m)/12)-2))
e=$(( (d+b+31*c/12)%7 ))
echo "day of the week is $e"
echo "thank you"
