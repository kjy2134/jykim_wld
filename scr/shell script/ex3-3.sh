#!/bin/sh
wei=$1
hei=$2
cm=$( echo "scale=1; $hei / 100" |bc )
bmi=$( echo "scale=1; $wei / $cm / $cm" |bc)
if [ `echo "$bmi <= 18.5" |bc` -eq 1 ]
then
	echo "저체중"
elif [ `echo "$bmi > 23" |bc` -eq 1 ] 
then
	echo "과체중"

else
	echo "정상체중"
fi
exit 0
