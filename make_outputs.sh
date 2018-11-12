#!/bin/bash

for file in `ls examples`
do
	fileName=${file%%.*}
	java -cp amyc_2.12-1.5.jar amyc.Main --printNames examples/$file >  test/resources/names/outputs/"$fileName.txt"
	echo "@Test def test$fileName = shouldOutput(\"$fileName\");"
done
