#!/bin/sh
echo "리눅스가 재미있나요?(y/n):"
read anw
case $anw in
	yes|YES|Yes|y|Y)
		echo "GOOD";;
	[nN]*)
		echo "파이팅!!!";;
	*)
		echo "y또는n만 입력하기"
		exit 1;;
esac
exit 0	
