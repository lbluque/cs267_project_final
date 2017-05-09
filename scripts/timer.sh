#!/bin/bash

#RUN_PATH=./parallel/Code/exec
#COMMAND="$RUN_PATH/parallel.exe -i $RUN_PATH/input.txt"
#RUN_PATH=./serial/Code/exec
#COMMAND="$RUN_PATH/groupF.exe -i $RUN_PATH/input.txt"
RUN_PATH=./eigen/Code/exec
COMMAND="$RUN_PATH/parallel.exe -i $RUN_PATH/input.txt"
OUTFILE=new_matrix_times.txt

for size in 10 14 18 22 26 30 40 50 65 85
do
    sed -i "2s/.*/${size}/" $RUN_PATH/input.txt
    echo "Size, ${size}" >> $OUTFILE
    $COMMAND >> $OUTFILE
done
