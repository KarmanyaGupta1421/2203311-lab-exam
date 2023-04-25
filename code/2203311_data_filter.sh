#!/bin/bash

file=$1		#storing file name in a variable
name=$2		#storing filed_name in a variable
value=$3	#storing field_value in a variable

output=${file::2}$name$value	#namig the output file
touch $output.csv 	#creating the output file
echo -n "$file $name $value " > $output.csv 	#writing first line of the file
grep "$value" $file | wc -l  >> $output.csv	#getting the number of lines meeting given criteria

head -n 1 $file >> $output.csv		#getting the heading lines using the head command

grep "$value" $file >> $output.csv	#getting the data with give field_name and field_value
