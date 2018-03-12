#!/usr/bin sh

#Author: Sameera Devulapalli
#Repository of Tomato Genomics Resources, University of Hyderabad

#Generate the excel files based on the vcf files using pooling strategy
#Create the combined and sorted file

python common_entries_from_ind_vcf.py

echo "No of xlsx files in the folder:"
ls *.xlsx | wc -l

cat *.xlsx > combined.xlsx

sort -k1,1 -k2,2n -k6,6V combined.xlsx > sorted_combined.xlsx
