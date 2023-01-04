#!/bin/bash 
# script that copy x percent of a folder into a first destination and the rest in another destination

# Get arguments from command line
percentage=$1
source_folder=$2
train_folder=$3
test_folder=$4

#!/bin/bash

# set the percentage of files to be copied to the first destination

# get the total number of files in the folder
num_files=$(ls $source_folder | wc -l)

# calculate the number of files to be copied
num_copy=$(echo "($num_files * $percentage) / 100" | bc)
 
# Check if destination folder exists, and create it if not
if [ ! -d "$train_folder" ]; then
    mkdir "$train_folder"
fi
if [ ! -d "$test_folder" ]; then
    mkdir "$test_folder"
fi

# copy the files
files=$(find $source_folder -type f | shuf -n $(expr $(find $source_folder -type f | wc -l)))
for file in $files 
do
  if [ $num_copy -gt 0 ]; then
    cp $file $test_folder
    num_copy=$(($num_copy - 1))
  else
    cp $file $train_folder
  fi
done


