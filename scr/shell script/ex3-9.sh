#!/bin/sh
com="touch DB.txt"
eval $com

read search
com1="sed -n -e '/$search/p' DB.txt"
eval $com1

