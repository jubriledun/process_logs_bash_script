#!/bin/bash

for logfile in /var/log/*.log; do
  echo "####################"
  echo "Processing: $logfile"
  echo "####################"
  cut -d' ' -f5- $logfile | sort | uniq -c | sort -nr | head -5
done

# cut - extracts specific fields from each line in the log file.
# -d' ' - specifies that fields are separated by spaces.
# -f5- - tells cut to start from the fifth field and include all remaining fields in each line.
# $logfile is the name of the log file being processed.
# sort - sorts the extracted lines alphabetically, preparing them for the next step.
# uniq -c - removes duplicate lines and prefixes each unique line with a count of how many times it appears.
# sort -nr - sorts the lines numerically (-n) in reverse order (-r), so the most frequent lines are at the top.
# head -5 displays the top five lines, which represent the five most frequent entries.


