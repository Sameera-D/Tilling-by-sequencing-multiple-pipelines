#Author: Sameera Devulapalli
#Repository of Tomato Genomics Resources, University of Hyderabad

#Change the $1<3 to any number based how many times an entry can appear for a single pipeline
#currently it takes entries that occur less than three times because it is a doubly mutagenized population
for file in *.xlsx; 
do 
op=$(echo $file | cut -f 1 -d '.' )"_uniq_le_2.xlsx"; 
cut -f 1-5 "$file" | uniq -c | awk '$1<3 {print $1, $2, $3, $4, $5, $6}' > "$op"; 
done

#Merging the files and moving it into merged_file folder
mkdir merged_file
cat *uniq_le_2.xlsx | cut -f 2-6 > merged_uniq_le_2.xlsx
mv merged_uniq_le_2.xlsx merged_file
