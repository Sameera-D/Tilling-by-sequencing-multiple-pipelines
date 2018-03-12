#/usr/bin/env python

#Author: Sameera Devulapalli
#Repository of Tomato Genomics Resources, University of Hyderabad

#create the combined file from camba output file

ip = open('T3_wellonly_mutation_candidates_HQ_thresh_0_std_and_nonstd-transformed_scores.txt', 'r')
ip_lines = ip.readlines()
op_file = open('combined.xlsx', 'w+')
for i in ip_lines:
	i_list = i.split('\t')
	gene = i_list[1]
	ref_nuc = i_list[3][0]
	alt_nuc = i_list[3][-1]
	nuc_id = '.'
	pos = i_list[3][1:-1]
	row = 'R'+i_list[5]
	col = 'C'+i_list[6]
	dpool = 'D'+i_list[7]
	pools = row+';'+col+';'+dpool
	op = gene + '\t' + pos + '\t' + nuc_id + '\t' + ref_nuc + '\t' + alt_nuc + '\t' + pools + '\n'
	op_file.write(op)

op_file.close()
ip.close()
	
