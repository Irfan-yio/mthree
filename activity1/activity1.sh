#!/bin/sh

WHOAMI=$USER
echo "Username: $USER"
DATE=$(date +"%d-%m-%y")
echo "Date: $DATE"
TIME=$(date "+%T")
echo "Time: $TIME"
CWD=$(pwd)
echo "Current path: $CWD"
HFD=$(ls | wc -l)
echo "Number of files: $HFD"
BFD=$(du -ahx | sort -rh | head -1)
echo "Biggest file: $BFD"

