#!/usr/bin/env python

#Author: Sameera Devulapalli
#Repository of Tomato Genomics Resources, University of Hyderabad

#finding the common entries between all pipelines

import glob

filename_dict = {}
common_entries_dict = {}
op_file = open("common_between_pipelines.csv", "w+")
filename_list = glob.glob("*uniq_le_2.xlsx")
for filename in filename_list:
	key = filename
	filename_dict[key] = open(filename, 'r')
for key in filename_dict.keys():
	for line in filename_dict[key]:
		line_list = line.split(' ')
		entry_list = line_list[1:3]
		entry_list.extend(line_list[4:])
		entry = '\t'.join(entry_list)
		if entry == '':
			print "Warning:", line
		if entry in common_entries_dict.keys():
			common_entries_dict[entry][0]+=1
			common_entries_dict[entry].append(key)
		else:
			common_entries_dict[entry]= [1, key]

header = "Gene" + "\t" + "pos" + "\t" + "ref" + "\t" + "alt" + "\t" + "count" + "\t" + "filenames of pipelines" + "\n"
op_file.write(header)
for entry_key in common_entries_dict.keys():
	#Change the number in if you want to change the number of pipelines that are being compared
	if common_entries_dict[entry_key][0] >= 2:
		filenames_str = ','.join(str(e) for e in common_entries_dict[entry_key][1:])
		count = common_entries_dict[entry_key][0]
		op_file.write(entry_key[:-1] + '\t' + str(count) + '\t' + filenames_str + '\n')

op_file.close()
