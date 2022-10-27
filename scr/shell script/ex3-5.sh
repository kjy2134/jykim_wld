#!/bin/sh
inst(){
	echo "프로그램 시작"
	echo "명령어 함수 동작중.."
	eval $1
}
read com
inst $com
exit 0

