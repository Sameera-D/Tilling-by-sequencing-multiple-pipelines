#/usr/bin/env python

#Author: Sameera Devulapalli
#Repository of Tomato Genomics Resources, University of Hyderabad

#Generate the excel files based on the vcf files using pooling strategy
import glob

#Change the pooling strategy here
if True:
	well_combination_tuple_list = []
	well_combination_tuple_list.append((range(1, 9), range(1, 9), range(1, 17)))
	well_combination_tuple_list.append((range(9, 17), range(9, 17), range(1, 17)))

	global_well_list = []
	for tuple in well_combination_tuple_list:
		(row_num_list, col_num_list, d_num_list) = tuple
		for row_num in row_num_list:
			for col_num in col_num_list:
				for d_num in d_num_list:
					well_string = 'R%d\tC%d\tD%d' % (row_num, col_num, d_num)
					global_well_list.append(well_string)
else:
	global_well_list = 'NA'

print "No of entries in the pooling strategy created: ", len(global_well_list)
print global_well_list[0]

for item in global_well_list:
	item_list = item.split('\t')
	row_filename = glob.glob(item_list[0]+'_*.vcf')[0]
	col_filename = glob.glob(item_list[1]+'_*.vcf')[0]
	d_filename = glob.glob(item_list[2]+'_*.vcf')[0]
	row_file_pointer = open(row_filename)
	col_file_pointer = open(col_filename)
	d_file_pointer = open(d_filename)
	row_file_list = []
	col_file_list = []
	d_file_list = []
	combined_file_name = row_filename+';'+col_filename+';'+d_filename
	output_file_name = '_'.join(item_list)+'.xlsx'
	output_file = open(output_file_name, 'w+')
	for col_line in col_file_pointer:
		if col_line[0:2] != '##':
			line_trimmed_col = '\t'.join(col_line.split('\t')[0:5])
			col_file_list.append(line_trimmed_col)
	for d_line in d_file_pointer:
		if d_line[0:2] != '##':
			line_trimmed_d = '\t'.join(d_line.split('\t')[0:5])
			d_file_list.append(line_trimmed_d)
	for row_line in row_file_pointer:
		if row_line[0:2] != '##':
			line_trimmed_row = '\t'.join(row_line.split('\t')[0:5])
			row_file_list.append(line_trimmed_row)
			if line_trimmed_row in d_file_list and line_trimmed_row in col_file_list:
				final_line = line_trimmed_row+'\t'+combined_file_name+'\n'
				output_file.write(final_line)
	row_file_pointer.close()
	col_file_pointer.close()
	d_file_pointer.close()
	output_file.close()	
	





