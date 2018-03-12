#!/usr/bin/env python

#Author: Sameera Devulapalli
#Repository of Tomato Genomics Resources, University of Hyderabad

#create separate files for each pool from combined files generated as output of vipr

def writing_line(file_pointer):
	filename_list= {}
	for line in file_pointer:
		header = line.split('\t')[7:]
		header[-1] = header[-1][:-2]
		break
	for i in range(0, len(header)):
		var_name = str(i+1)
		file_name = header[i]+'_vipr.vcf'
		filename_list[var_name] = open(file_name, 'w+')	
	for line in file_pointer:
		line_list = line.split('\t')
		pf = ((line_list[5]).split(';')[1][3:]).split('-')
		for num in pf:
			final_line = '\t'.join(line_list[:6]) + '\t' + line_list[6+int(num)]
			if final_line[-1:] == '\n':
				pass
			else:
				final_line = final_line + '\n'
			filename_list[num].write(final_line)
	closing_files(filename_list)


def closing_files(filename_list):
	for key in filename_list.keys():
		filename_list[key].close()

	
row_filename = 'myrow.vcf'
col_filename = 'mycolumn.vcf'
d_filename = 'myd-pool.vcf'

row_file_pointer = open(row_filename)
writing_line(row_file_pointer)
row_file_pointer.close()
col_file_pointer = open(col_filename)
writing_line(col_file_pointer)
col_file_pointer.close()
d_file_pointer = open(d_filename)
writing_line(d_file_pointer)
d_file_pointer.close()


