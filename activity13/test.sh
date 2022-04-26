#!/bin/sh

read -p "Please enter the name of the first file: " file1
until [ -f "$file1" ]
do
        echo "Invalid input. File does not exit."
        read -p "Please enter the name of the first file: " file1
done
read -p "Please enter the name of the second file: " file2
until [ -f "$file2" ]
do
        echo "Invalid input. File does not exit."
        read -p "Please enter the name of the second file: " file2
done
echo "Only in file 1: "
awk 'NR==FNR{lines[$0];next}!($0 in lines)' $file2 $file1
echo "Only in file 2: "
awk 'NR==FNR{lines[$0];next}!($0 in lines)' $file1 $file2
