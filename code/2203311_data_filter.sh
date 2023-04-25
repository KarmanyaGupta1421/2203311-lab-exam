#!/bin/bash

file=$1
name=$2
value=$3

output=${file::2}$name$value
touch $output.csv 
echo -n "$file $name $value " > $output.csv 
grep "$value" $file | wc -l  >> $output.csv

head -n 1 $file >> $output.csv

grep "$value" $file >> $output.csv
