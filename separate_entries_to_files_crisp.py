#!/usr/bin/env python

#Author: Sameera Devulapalli
#Repository of Tomato Genomics Resources, University of Hyderabad

#create separate files for each pool from combined files generated as output of crisp

def writing_line(file_pointer, ip_filename):
	filename_list= {}
	for line in file_pointer:
		if line[0:2] == '#C':
			header = line.split('\t')[9:]
			header[-1] = header[-1][:-2]
			break
	for i in range(0, len(header)):
		var_name = str(i+1)
		file_name = ip_filename[0].upper() + header[i]+'_crispr.vcf'
		filename_list[var_name] = open(file_name, 'w+')	

	for line in file_pointer:
		line_list = line.split('\t')
		for entry in line_list[9:len(line_list)-1]:
			if entry[0] != '0':
				index = line_list.index(entry)
				final_line = '\t'.join(line_list[0:9]) + '\t' + entry
				if final_line[-1:] == '\n':
					pass
				else:
					final_line = final_line + '\n'
				num = str(index-9+1)
				filename_list[num].write(final_line)
					
	closing_files(filename_list)
		

def closing_files(filename_list):
	for key in filename_list.keys():
		filename_list[key].close()
	
row_filename = 'row1.VCF'
col_filename = 'column1.VCF'
d_filename = 'Dpool1.VCF'

row_file_pointer = open(row_filename)
writing_line(row_file_pointer, row_filename)
row_file_pointer.close()
col_file_pointer = open(col_filename)
writing_line(col_file_pointer, col_filename)
col_file_pointer.close()
d_file_pointer = open(d_filename)
writing_line(d_file_pointer, d_filename)
d_file_pointer.close()


