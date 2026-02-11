#!/bin/bash
echo "Total number of earthquakes:"
grep "$1" Year_Mag_Country.tsv | wc -l
echo "Largest earthquake:"
grep "$1" Year_Mag_Country.tsv | sort -t$'\t' -k2 -nr | head -1
