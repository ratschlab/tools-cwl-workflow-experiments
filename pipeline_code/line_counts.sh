#!/bin/sh

if [ "$#" -ne 2 ]
then
    echo "take input file and output dir as arguments"
    exit 2
fi

INPUT=$1
OUTPUT_DIR=$2

FILE_NAME=$(basename $INPUT)

wc -l ${INPUT} |  awk '{print $1}' > "${OUTPUT_DIR}/${FILE_NAME}.cnt"  
