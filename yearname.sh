#! /bin/bash

read -p "Enter the day : " d
read -p " Enter the month : " m
read -p "Enter the year : " y

Yo=$(( y-((14-m)/12) ))
X=$(( Yo+(Yo/4)-(Yo/100)+(Yo/400) ))
Mo=$(( m+12*((14-m)/12)-2 ))
Do=$(( (d+X+31*Mo/12)%7 ))


   if [ $Do == 0 ]   
      then
      echo "Today is sunday"
    elif [ $Do == 1 ]
      then
      echo "Today is Monday"
    elif [ $Do == 2 ]
      then
      echo "Today is Tuesday"
    elif [ $Do == 3 ]
      then
      echo "Today is Wednesday"
    elif [ $Do == 4 ]
      then
      echo "Today is Thurday"
    elif [ $Do == 5 ]
      then
      echo "Today is friday"
    elif [ $Do == 6 ]
      then
      echo "Today is Saturday"
    else
      echo "Please enter the correct format"

   fi


echo "$Yo" 
echo "$X"
echo "$Mo"
echo "$Do"
