#!/bin/sh

read file

eval "ls"

createdir=/home/jykim/$file
	if [ ! -d $createdir ]
	then
		mkdir $createdir
fi

eval "touch ./$file/file0.txt"
eval "touch ./$file/file1.txt"
eval "touch ./$file/file2.txt"
eval "touch ./$file/file3.txt"
eval "touch ./$file/file4.txt"

eval "mkdir -p ./file/files"

eval "cd file"
eval "tar -cvf /home/jykim/$file/files/files.tar file0.txt file1.txt file2.txt file3.txt file4.txt "
eval "cd files"
eval "tar -xvf files.tar -C /home/jykim/$file/files"


