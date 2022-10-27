#!/bin/sh
com="touch DB.txt"
eval $com

read add
echo "$add" >> DB.txt

