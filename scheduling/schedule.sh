#!/bin/bash

# Make directory for output files
mkdir -p output

# Run program
python3 -W"ignore" scheduling.py

# Print schedule
echo "Schedule:"
cat sched_realta_out.txt

# Remove the temporary files
rm sched_iLiSA_temp.txt
rm sched_realta_temp.txt

# Move the created files to the output folder
mv sched_iLiSA_out.txt ./output
mv sched_realta_out.txt ./output
mv optimum.png ./output
mv viewing.png ./output
