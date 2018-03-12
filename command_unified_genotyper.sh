#Author: Prateek Gupta
#Repository of Tomato Genomics Resources, University of Hyderabad

#Running all Unified Genotyper commands for R, C and D-pools

bwa index -a is tilling.fa
samtools faidx tilling.fa
java -jar -Xmx8g /home/workstation2/TILLING_workshop/Softwares/picard-2.17.1/picard.jar CreateSequenceDictionary REFERENCE=tilling.fa OUTPUT=tilling.dict
bwa aln -q 20 -k 1 -t 40 tilling.fa C1_S1_L001_R1_001.fastq > C1_S1_R1.sai
bwa aln -q 20 -k 1 -t 40 -t 40 tilling.fa C1_S1_L001_R2_001.fastq > C1_S1_R2.sai
bwa sampe -f C1_S1.sam -r '@RG\tID:C1_S1\tSM:C1_S1\tPL:illumina' tilling.fa C1_S1_R1.sai C1_S1_R2.sai C1_S1_L001_R1_001.fastq C1_S1_L001_R2_001.fastq
samtools view -bS C1_S1.sam > C1_S1.bam
java -jar -Xmx8g /home/workstation2/TILLING_workshop/Softwares/picard-2.17.1/picard.jar SortSam I=C1_S1.bam O=C1_S1.sorted.bam SO=coordinate MAX_RECORDS_IN_RAM=1500000 VALIDATION_STRINGENCY=LENIENT
samtools index C1_S1.sorted.bam
java -jar -Xmx16g /home/workstation2/TILLING_workshop/Softwares/GenomeAnalysisTK-3.8/GenomeAnalysisTK.jar -T UnifiedGenotyper -nct 10 -R tilling.fa -I C1_S1.sorted.bam -o C1_S1.vcf -stand_call_conf 20.0 --max_num_PL_values 1000 -glm BOTH -ploidy 96
bwa aln -q 20 -k 1 -t 40 tilling.fa C2_S2_L001_R1_001.fastq > C2_S2_R1.sai
bwa aln -q 20 -k 1 -t 40 tilling.fa C2_S2_L001_R2_001.fastq > C2_S2_R2.sai
bwa sampe -f C2_S2.sam -r '@RG\tID:C2_S2\tSM:C2_S2\tPL:illumina' tilling.fa C2_S2_R1.sai C2_S2_R2.sai C2_S2_L001_R1_001.fastq C2_S2_L001_R2_001.fastq
samtools view -bS C2_S2.sam > C2_S2.bam
java -jar -Xmx8g /home/workstation2/TILLING_workshop/Softwares/picard-2.17.1/picard.jar SortSam I=C2_S2.bam O=C2_S2.sorted.bam SO=coordinate MAX_RECORDS_IN_RAM=1500000 VALIDATION_STRINGENCY=LENIENT
samtools index C2_S2.sorted.bam
java -jar -Xmx16g /home/workstation2/TILLING_workshop/Softwares/GenomeAnalysisTK-3.8/GenomeAnalysisTK.jar -T UnifiedGenotyper -nct 10 -R tilling.fa -I C2_S2.sorted.bam -o C2_S2.vcf -stand_call_conf 20.0 --max_num_PL_values 1000 -glm BOTH -ploidy 96
bwa aln -q 20 -k 1 -t 40 tilling.fa C3_S3_L001_R1_001.fastq > C3_S3_R1.sai
bwa aln -q 20 -k 1 -t 40 tilling.fa C3_S3_L001_R2_001.fastq > C3_S3_R2.sai
bwa sampe -f C3_S3.sam -r '@RG\tID:C3_S3\tSM:C3_S3\tPL:illumina' tilling.fa C3_S3_R1.sai C3_S3_R2.sai C3_S3_L001_R1_001.fastq C3_S3_L001_R2_001.fastq
samtools view -bS C3_S3.sam > C3_S3.bam
java -jar -Xmx8g /home/workstation2/TILLING_workshop/Softwares/picard-2.17.1/picard.jar SortSam I=C3_S3.bam O=C3_S3.sorted.bam SO=coordinate MAX_RECORDS_IN_RAM=1500000 VALIDATION_STRINGENCY=LENIENT
samtools index C3_S3.sorted.bam
java -jar -Xmx16g /home/workstation2/TILLING_workshop/Softwares/GenomeAnalysisTK-3.8/GenomeAnalysisTK.jar -T UnifiedGenotyper -nct 10 -R tilling.fa -I C3_S3.sorted.bam -o C3_S3.vcf -stand_call_conf 20.0 --max_num_PL_values 1000 -glm BOTH -ploidy 96
bwa aln -q 20 -k 1 -t 40 tilling.fa C4_S4_L001_R1_001.fastq > C4_S4_R1.sai
bwa aln -q 20 -k 1 -t 40 tilling.fa C4_S4_L001_R2_001.fastq > C4_S4_R2.sai
bwa sampe -f C4_S4.sam -r '@RG\tID:C4_S4\tSM:C4_S4\tPL:illumina' tilling.fa C4_S4_R1.sai C4_S4_R2.sai C4_S4_L001_R1_001.fastq C4_S4_L001_R2_001.fastq
samtools view -bS C4_S4.sam > C4_S4.bam
java -jar -Xmx8g /home/workstation2/TILLING_workshop/Softwares/picard-2.17.1/picard.jar SortSam I=C4_S4.bam O=C4_S4.sorted.bam SO=coordinate MAX_RECORDS_IN_RAM=1500000 VALIDATION_STRINGENCY=LENIENT
samtools index C4_S4.sorted.bam
java -jar -Xmx16g /home/workstation2/TILLING_workshop/Softwares/GenomeAnalysisTK-3.8/GenomeAnalysisTK.jar -T UnifiedGenotyper -nct 10 -R tilling.fa -I C4_S4.sorted.bam -o C4_S4.vcf -stand_call_conf 20.0 --max_num_PL_values 1000 -glm BOTH -ploidy 96
bwa aln -q 20 -k 1 -t 40 tilling.fa C5_S5_L001_R1_001.fastq > C5_S5_R1.sai
bwa aln -q 20 -k 1 -t 40 tilling.fa C5_S5_L001_R2_001.fastq > C5_S5_R2.sai
bwa sampe -f C5_S5.sam -r '@RG\tID:C5_S5\tSM:C5_S5\tPL:illumina' tilling.fa C5_S5_R1.sai C5_S5_R2.sai C5_S5_L001_R1_001.fastq C5_S5_L001_R2_001.fastq
samtools view -bS C5_S5.sam > C5_S5.bam
java -jar -Xmx8g /home/workstation2/TILLING_workshop/Softwares/picard-2.17.1/picard.jar SortSam I=C5_S5.bam O=C5_S5.sorted.bam SO=coordinate MAX_RECORDS_IN_RAM=1500000 VALIDATION_STRINGENCY=LENIENT
samtools index C5_S5.sorted.bam
java -jar -Xmx16g /home/workstation2/TILLING_workshop/Softwares/GenomeAnalysisTK-3.8/GenomeAnalysisTK.jar -T UnifiedGenotyper -nct 10 -R tilling.fa -I C5_S5.sorted.bam -o C5_S5.vcf -stand_call_conf 20.0 --max_num_PL_values 1000 -glm BOTH -ploidy 96
bwa aln -q 20 -k 1 -t 40 tilling.fa C6_S6_L001_R1_001.fastq > C6_S6_R1.sai
bwa aln -q 20 -k 1 -t 40 tilling.fa C6_S6_L001_R2_001.fastq > C6_S6_R2.sai
bwa sampe -f C6_S6.sam -r '@RG\tID:C6_S6\tSM:C6_S6\tPL:illumina' tilling.fa C6_S6_R1.sai C6_S6_R2.sai C6_S6_L001_R1_001.fastq C6_S6_L001_R2_001.fastq
samtools view -bS C6_S6.sam > C6_S6.bam
java -jar -Xmx8g /home/workstation2/TILLING_workshop/Softwares/picard-2.17.1/picard.jar SortSam I=C6_S6.bam O=C6_S6.sorted.bam SO=coordinate MAX_RECORDS_IN_RAM=1500000 VALIDATION_STRINGENCY=LENIENT
samtools index C6_S6.sorted.bam
java -jar -Xmx16g /home/workstation2/TILLING_workshop/Softwares/GenomeAnalysisTK-3.8/GenomeAnalysisTK.jar -T UnifiedGenotyper -nct 10 -R tilling.fa -I C6_S6.sorted.bam -o C6_S6.vcf -stand_call_conf 20.0 --max_num_PL_values 1000 -glm BOTH -ploidy 96
bwa aln -q 20 -k 1 -t 40 tilling.fa C7_S7_L001_R1_001.fastq > C7_S7_R1.sai
bwa aln -q 20 -k 1 -t 40 tilling.fa C7_S7_L001_R2_001.fastq > C7_S7_R2.sai
bwa sampe -f C7_S7.sam -r '@RG\tID:C7_S7\tSM:C7_S7\tPL:illumina' tilling.fa C7_S7_R1.sai C7_S7_R2.sai C7_S7_L001_R1_001.fastq C7_S7_L001_R2_001.fastq
samtools view -bS C7_S7.sam > C7_S7.bam
java -jar -Xmx8g /home/workstation2/TILLING_workshop/Softwares/picard-2.17.1/picard.jar SortSam I=C7_S7.bam O=C7_S7.sorted.bam SO=coordinate MAX_RECORDS_IN_RAM=1500000 VALIDATION_STRINGENCY=LENIENT
samtools index C7_S7.sorted.bam
java -jar -Xmx16g /home/workstation2/TILLING_workshop/Softwares/GenomeAnalysisTK-3.8/GenomeAnalysisTK.jar -T UnifiedGenotyper -nct 10 -R tilling.fa -I C7_S7.sorted.bam -o C7_S7.vcf -stand_call_conf 20.0 --max_num_PL_values 1000 -glm BOTH -ploidy 96
bwa aln -q 20 -k 1 -t 40 tilling.fa C8_S8_L001_R1_001.fastq > C8_S8_R1.sai
bwa aln -q 20 -k 1 -t 40 tilling.fa C8_S8_L001_R2_001.fastq > C8_S8_R2.sai
bwa sampe -f C8_S8.sam -r '@RG\tID:C8_S8\tSM:C8_S8\tPL:illumina' tilling.fa C8_S8_R1.sai C8_S8_R2.sai C8_S8_L001_R1_001.fastq C8_S8_L001_R2_001.fastq
samtools view -bS C8_S8.sam > C8_S8.bam
java -jar -Xmx8g /home/workstation2/TILLING_workshop/Softwares/picard-2.17.1/picard.jar SortSam I=C8_S8.bam O=C8_S8.sorted.bam SO=coordinate MAX_RECORDS_IN_RAM=1500000 VALIDATION_STRINGENCY=LENIENT
samtools index C8_S8.sorted.bam
java -jar -Xmx16g /home/workstation2/TILLING_workshop/Softwares/GenomeAnalysisTK-3.8/GenomeAnalysisTK.jar -T UnifiedGenotyper -nct 10 -R tilling.fa -I C8_S8.sorted.bam -o C8_S8.vcf -stand_call_conf 20.0 --max_num_PL_values 1000 -glm BOTH -ploidy 96
bwa aln -q 20 -k 1 -t 40 tilling.fa C9_S9_L001_R1_001.fastq > C9_S9_R1.sai
bwa aln -q 20 -k 1 -t 40 tilling.fa C9_S9_L001_R2_001.fastq > C9_S9_R2.sai
bwa sampe -f C9_S9.sam -r '@RG\tID:C9_S9\tSM:C9_S9\tPL:illumina' tilling.fa C9_S9_R1.sai C9_S9_R2.sai C9_S9_L001_R1_001.fastq C9_S9_L001_R2_001.fastq
samtools view -bS C9_S9.sam > C9_S9.bam
java -jar -Xmx8g /home/workstation2/TILLING_workshop/Softwares/picard-2.17.1/picard.jar SortSam I=C9_S9.bam O=C9_S9.sorted.bam SO=coordinate MAX_RECORDS_IN_RAM=1500000 VALIDATION_STRINGENCY=LENIENT
samtools index C9_S9.sorted.bam
java -jar -Xmx16g /home/workstation2/TILLING_workshop/Softwares/GenomeAnalysisTK-3.8/GenomeAnalysisTK.jar -T UnifiedGenotyper -nct 10 -R tilling.fa -I C9_S9.sorted.bam -o C9_S9.vcf -stand_call_conf 20.0 --max_num_PL_values 1000 -glm BOTH -ploidy 96
bwa aln -q 20 -k 1 -t 40 tilling.fa C10_S10_L001_R1_001.fastq > C10_S10_R1.sai
bwa aln -q 20 -k 1 -t 40 tilling.fa C10_S10_L001_R2_001.fastq > C10_S10_R2.sai
bwa sampe -f C10_S10.sam -r '@RG\tID:C10_S10\tSM:C10_S10\tPL:illumina' tilling.fa C10_S10_R1.sai C10_S10_R2.sai C10_S10_L001_R1_001.fastq C10_S10_L001_R2_001.fastq
samtools view -bS C10_S10.sam > C10_S10.bam
java -jar -Xmx8g /home/workstation2/TILLING_workshop/Softwares/picard-2.17.1/picard.jar SortSam I=C10_S10.bam O=C10_S10.sorted.bam SO=coordinate MAX_RECORDS_IN_RAM=1500000 VALIDATION_STRINGENCY=LENIENT
samtools index C10_S10.sorted.bam
java -jar -Xmx16g /home/workstation2/TILLING_workshop/Softwares/GenomeAnalysisTK-3.8/GenomeAnalysisTK.jar -T UnifiedGenotyper -nct 10 -R tilling.fa -I C10_S10.sorted.bam -o C10_S10.vcf -stand_call_conf 20.0 --max_num_PL_values 1000 -glm BOTH -ploidy 96
bwa aln -q 20 -k 1 -t 40 tilling.fa C11_S11_L001_R1_001.fastq > C11_S11_R1.sai
bwa aln -q 20 -k 1 -t 40 tilling.fa C11_S11_L001_R2_001.fastq > C11_S11_R2.sai
bwa sampe -f C11_S11.sam -r '@RG\tID:C11_S11\tSM:C11_S11\tPL:illumina' tilling.fa C11_S11_R1.sai C11_S11_R2.sai C11_S11_L001_R1_001.fastq C11_S11_L001_R2_001.fastq
samtools view -bS C11_S11.sam > C11_S11.bam
java -jar -Xmx8g /home/workstation2/TILLING_workshop/Softwares/picard-2.17.1/picard.jar SortSam I=C11_S11.bam O=C11_S11.sorted.bam SO=coordinate MAX_RECORDS_IN_RAM=1500000 VALIDATION_STRINGENCY=LENIENT
samtools index C11_S11.sorted.bam
java -jar -Xmx16g /home/workstation2/TILLING_workshop/Softwares/GenomeAnalysisTK-3.8/GenomeAnalysisTK.jar -T UnifiedGenotyper -nct 10 -R tilling.fa -I C11_S11.sorted.bam -o C11_S11.vcf -stand_call_conf 20.0 --max_num_PL_values 1000 -glm BOTH -ploidy 96
bwa aln -q 20 -k 1 -t 40 tilling.fa C12_S12_L001_R1_001.fastq > C12_S12_R1.sai
bwa aln -q 20 -k 1 -t 40 tilling.fa C12_S12_L001_R2_001.fastq > C12_S12_R2.sai
bwa sampe -f C12_S12.sam -r '@RG\tID:C12_S12\tSM:C12_S12\tPL:illumina' tilling.fa C12_S12_R1.sai C12_S12_R2.sai C12_S12_L001_R1_001.fastq C12_S12_L001_R2_001.fastq
samtools view -bS C12_S12.sam > C12_S12.bam
java -jar -Xmx8g /home/workstation2/TILLING_workshop/Softwares/picard-2.17.1/picard.jar SortSam I=C12_S12.bam O=C12_S12.sorted.bam SO=coordinate MAX_RECORDS_IN_RAM=1500000 VALIDATION_STRINGENCY=LENIENT
samtools index C12_S12.sorted.bam
java -jar -Xmx16g /home/workstation2/TILLING_workshop/Softwares/GenomeAnalysisTK-3.8/GenomeAnalysisTK.jar -T UnifiedGenotyper -nct 10 -R tilling.fa -I C12_S12.sorted.bam -o C12_S12.vcf -stand_call_conf 20.0 --max_num_PL_values 1000 -glm BOTH -ploidy 96
bwa aln -q 20 -k 1 -t 40 tilling.fa C13_S13_L001_R1_001.fastq > C13_S13_R1.sai
bwa aln -q 20 -k 1 -t 40 tilling.fa C13_S13_L001_R2_001.fastq > C13_S13_R2.sai
bwa sampe -f C13_S13.sam -r '@RG\tID:C13_S13\tSM:C13_S13\tPL:illumina' tilling.fa C13_S13_R1.sai C13_S13_R2.sai C13_S13_L001_R1_001.fastq C13_S13_L001_R2_001.fastq
samtools view -bS C13_S13.sam > C13_S13.bam
java -jar -Xmx8g /home/workstation2/TILLING_workshop/Softwares/picard-2.17.1/picard.jar SortSam I=C13_S13.bam O=C13_S13.sorted.bam SO=coordinate MAX_RECORDS_IN_RAM=1500000 VALIDATION_STRINGENCY=LENIENT
samtools index C13_S13.sorted.bam
java -jar -Xmx16g /home/workstation2/TILLING_workshop/Softwares/GenomeAnalysisTK-3.8/GenomeAnalysisTK.jar -T UnifiedGenotyper -nct 10 -R tilling.fa -I C13_S13.sorted.bam -o C13_S13.vcf -stand_call_conf 20.0 --max_num_PL_values 1000 -glm BOTH -ploidy 96
bwa aln -q 20 -k 1 -t 40 tilling.fa C14_S14_L001_R1_001.fastq > C14_S14_R1.sai
bwa aln -q 20 -k 1 -t 40 tilling.fa C14_S14_L001_R2_001.fastq > C14_S14_R2.sai
bwa sampe -f C14_S14.sam -r '@RG\tID:C14_S14\tSM:C14_S14\tPL:illumina' tilling.fa C14_S14_R1.sai C14_S14_R2.sai C14_S14_L001_R1_001.fastq C14_S14_L001_R2_001.fastq
samtools view -bS C14_S14.sam > C14_S14.bam
java -jar -Xmx8g /home/workstation2/TILLING_workshop/Softwares/picard-2.17.1/picard.jar SortSam I=C14_S14.bam O=C14_S14.sorted.bam SO=coordinate MAX_RECORDS_IN_RAM=1500000 VALIDATION_STRINGENCY=LENIENT
samtools index C14_S14.sorted.bam
java -jar -Xmx16g /home/workstation2/TILLING_workshop/Softwares/GenomeAnalysisTK-3.8/GenomeAnalysisTK.jar -T UnifiedGenotyper -nct 10 -R tilling.fa -I C14_S14.sorted.bam -o C14_S14.vcf -stand_call_conf 20.0 --max_num_PL_values 1000 -glm BOTH -ploidy 96
bwa aln -q 20 -k 1 -t 40 tilling.fa C15_S15_L001_R1_001.fastq > C15_S15_R1.sai
bwa aln -q 20 -k 1 -t 40 tilling.fa C15_S15_L001_R2_001.fastq > C15_S15_R2.sai
bwa sampe -f C15_S15.sam -r '@RG\tID:C15_S15\tSM:C15_S15\tPL:illumina' tilling.fa C15_S15_R1.sai C15_S15_R2.sai C15_S15_L001_R1_001.fastq C15_S15_L001_R2_001.fastq
samtools view -bS C15_S15.sam > C15_S15.bam
java -jar -Xmx8g /home/workstation2/TILLING_workshop/Softwares/picard-2.17.1/picard.jar SortSam I=C15_S15.bam O=C15_S15.sorted.bam SO=coordinate MAX_RECORDS_IN_RAM=1500000 VALIDATION_STRINGENCY=LENIENT
samtools index C15_S15.sorted.bam
java -jar -Xmx16g /home/workstation2/TILLING_workshop/Softwares/GenomeAnalysisTK-3.8/GenomeAnalysisTK.jar -T UnifiedGenotyper -nct 10 -R tilling.fa -I C15_S15.sorted.bam -o C15_S15.vcf -stand_call_conf 20.0 --max_num_PL_values 1000 -glm BOTH -ploidy 96
bwa aln -q 20 -k 1 -t 40 tilling.fa C16_S16_L001_R1_001.fastq > C16_S16_R1.sai
bwa aln -q 20 -k 1 -t 40 tilling.fa C16_S16_L001_R2_001.fastq > C16_S16_R2.sai
bwa sampe -f C16_S16.sam -r '@RG\tID:C16_S16\tSM:C16_S16\tPL:illumina' tilling.fa C16_S16_R1.sai C16_S16_R2.sai C16_S16_L001_R1_001.fastq C16_S16_L001_R2_001.fastq
samtools view -bS C16_S16.sam > C16_S16.bam
java -jar -Xmx8g /home/workstation2/TILLING_workshop/Softwares/picard-2.17.1/picard.jar SortSam I=C16_S16.bam O=C16_S16.sorted.bam SO=coordinate MAX_RECORDS_IN_RAM=1500000 VALIDATION_STRINGENCY=LENIENT
samtools index C16_S16.sorted.bam
java -jar -Xmx16g /home/workstation2/TILLING_workshop/Softwares/GenomeAnalysisTK-3.8/GenomeAnalysisTK.jar -T UnifiedGenotyper -nct 10 -R tilling.fa -I C16_S16.sorted.bam -o C16_S16.vcf -stand_call_conf 20.0 --max_num_PL_values 1000 -glm BOTH -ploidy 96
bwa aln -q 20 -k 1 -t 40 tilling.fa R1_S17_L001_R1_001.fastq > R1_S17_R1.sai
bwa aln -q 20 -k 1 -t 40 tilling.fa R1_S17_L001_R2_001.fastq > R1_S17_R2.sai
bwa sampe -f R1_S17.sam -r '@RG\tID:R1_S17\tSM:R1_S17\tPL:illumina' tilling.fa R1_S17_R1.sai R1_S17_R2.sai R1_S17_L001_R1_001.fastq R1_S17_L001_R2_001.fastq
samtools view -bS R1_S17.sam > R1_S17.bam
java -jar -Xmx8g /home/workstation2/TILLING_workshop/Softwares/picard-2.17.1/picard.jar SortSam I=R1_S17.bam O=R1_S17.sorted.bam SO=coordinate MAX_RECORDS_IN_RAM=1500000 VALIDATION_STRINGENCY=LENIENT
samtools index R1_S17.sorted.bam
java -jar -Xmx16g /home/workstation2/TILLING_workshop/Softwares/GenomeAnalysisTK-3.8/GenomeAnalysisTK.jar -T UnifiedGenotyper -nct 10 -R tilling.fa -I R1_S17.sorted.bam -o R1_S17.vcf -stand_call_conf 20.0 --max_num_PL_values 1000 -glm BOTH -ploidy 96
bwa aln -q 20 -k 1 -t 40 tilling.fa R2_S18_L001_R1_001.fastq > R2_S18_R1.sai
bwa aln -q 20 -k 1 -t 40 tilling.fa R2_S18_L001_R2_001.fastq > R2_S18_R2.sai
bwa sampe -f R2_S18.sam -r '@RG\tID:R2_S18\tSM:R2_S18\tPL:illumina' tilling.fa R2_S18_R1.sai R2_S18_R2.sai R2_S18_L001_R1_001.fastq R2_S18_L001_R2_001.fastq
samtools view -bS R2_S18.sam > R2_S18.bam
java -jar -Xmx8g /home/workstation2/TILLING_workshop/Softwares/picard-2.17.1/picard.jar SortSam I=R2_S18.bam O=R2_S18.sorted.bam SO=coordinate MAX_RECORDS_IN_RAM=1500000 VALIDATION_STRINGENCY=LENIENT
samtools index R2_S18.sorted.bam
java -jar -Xmx16g /home/workstation2/TILLING_workshop/Softwares/GenomeAnalysisTK-3.8/GenomeAnalysisTK.jar -T UnifiedGenotyper -nct 10 -R tilling.fa -I R2_S18.sorted.bam -o R2_S18.vcf -stand_call_conf 20.0 --max_num_PL_values 1000 -glm BOTH -ploidy 96
bwa aln -q 20 -k 1 -t 40 tilling.fa R3_S19_L001_R1_001.fastq > R3_S19_R1.sai
bwa aln -q 20 -k 1 -t 40 tilling.fa R3_S19_L001_R2_001.fastq > R3_S19_R2.sai
bwa sampe -f R3_S19.sam -r '@RG\tID:R3_S19\tSM:R3_S19\tPL:illumina' tilling.fa R3_S19_R1.sai R3_S19_R2.sai R3_S19_L001_R1_001.fastq R3_S19_L001_R2_001.fastq
samtools view -bS R3_S19.sam > R3_S19.bam
java -jar -Xmx8g /home/workstation2/TILLING_workshop/Softwares/picard-2.17.1/picard.jar SortSam I=R3_S19.bam O=R3_S19.sorted.bam SO=coordinate MAX_RECORDS_IN_RAM=1500000 VALIDATION_STRINGENCY=LENIENT
samtools index R3_S19.sorted.bam
java -jar -Xmx16g /home/workstation2/TILLING_workshop/Softwares/GenomeAnalysisTK-3.8/GenomeAnalysisTK.jar -T UnifiedGenotyper -nct 10 -R tilling.fa -I R3_S19.sorted.bam -o R3_S19.vcf -stand_call_conf 20.0 --max_num_PL_values 1000 -glm BOTH -ploidy 96
bwa aln -q 20 -k 1 -t 40 tilling.fa R4_S20_L001_R1_001.fastq > R4_S20_R1.sai
bwa aln -q 20 -k 1 -t 40 tilling.fa R4_S20_L001_R2_001.fastq > R4_S20_R2.sai
bwa sampe -f R4_S20.sam -r '@RG\tID:R4_S20\tSM:R4_S20\tPL:illumina' tilling.fa R4_S20_R1.sai R4_S20_R2.sai R4_S20_L001_R1_001.fastq R4_S20_L001_R2_001.fastq
samtools view -bS R4_S20.sam > R4_S20.bam
java -jar -Xmx8g /home/workstation2/TILLING_workshop/Softwares/picard-2.17.1/picard.jar SortSam I=R4_S20.bam O=R4_S20.sorted.bam SO=coordinate MAX_RECORDS_IN_RAM=1500000 VALIDATION_STRINGENCY=LENIENT
samtools index R4_S20.sorted.bam
java -jar -Xmx16g /home/workstation2/TILLING_workshop/Softwares/GenomeAnalysisTK-3.8/GenomeAnalysisTK.jar -T UnifiedGenotyper -nct 10 -R tilling.fa -I R4_S20.sorted.bam -o R4_S20.vcf -stand_call_conf 20.0 --max_num_PL_values 1000 -glm BOTH -ploidy 96
bwa aln -q 20 -k 1 -t 40 tilling.fa R5_S21_L001_R1_001.fastq > R5_S21_R1.sai
bwa aln -q 20 -k 1 -t 40 tilling.fa R5_S21_L001_R2_001.fastq > R5_S21_R2.sai
bwa sampe -f R5_S21.sam -r '@RG\tID:R5_S21\tSM:R5_S21\tPL:illumina' tilling.fa R5_S21_R1.sai R5_S21_R2.sai R5_S21_L001_R1_001.fastq R5_S21_L001_R2_001.fastq
samtools view -bS R5_S21.sam > R5_S21.bam
java -jar -Xmx8g /home/workstation2/TILLING_workshop/Softwares/picard-2.17.1/picard.jar SortSam I=R5_S21.bam O=R5_S21.sorted.bam SO=coordinate MAX_RECORDS_IN_RAM=1500000 VALIDATION_STRINGENCY=LENIENT
samtools index R5_S21.sorted.bam
java -jar -Xmx16g /home/workstation2/TILLING_workshop/Softwares/GenomeAnalysisTK-3.8/GenomeAnalysisTK.jar -T UnifiedGenotyper -nct 10 -R tilling.fa -I R5_S21.sorted.bam -o R5_S21.vcf -stand_call_conf 20.0 --max_num_PL_values 1000 -glm BOTH -ploidy 96
bwa aln -q 20 -k 1 -t 40 tilling.fa R6_S22_L001_R1_001.fastq > R6_S22_R1.sai
bwa aln -q 20 -k 1 -t 40 tilling.fa R6_S22_L001_R2_001.fastq > R6_S22_R2.sai
bwa sampe -f R6_S22.sam -r '@RG\tID:R6_S22\tSM:R6_S22\tPL:illumina' tilling.fa R6_S22_R1.sai R6_S22_R2.sai R6_S22_L001_R1_001.fastq R6_S22_L001_R2_001.fastq
samtools view -bS R6_S22.sam > R6_S22.bam
java -jar -Xmx8g /home/workstation2/TILLING_workshop/Softwares/picard-2.17.1/picard.jar SortSam I=R6_S22.bam O=R6_S22.sorted.bam SO=coordinate MAX_RECORDS_IN_RAM=1500000 VALIDATION_STRINGENCY=LENIENT
samtools index R6_S22.sorted.bam
java -jar -Xmx16g /home/workstation2/TILLING_workshop/Softwares/GenomeAnalysisTK-3.8/GenomeAnalysisTK.jar -T UnifiedGenotyper -nct 10 -R tilling.fa -I R6_S22.sorted.bam -o R6_S22.vcf -stand_call_conf 20.0 --max_num_PL_values 1000 -glm BOTH -ploidy 96
bwa aln -q 20 -k 1 -t 40 tilling.fa R7_S23_L001_R1_001.fastq > R7_S23_R1.sai
bwa aln -q 20 -k 1 -t 40 tilling.fa R7_S23_L001_R2_001.fastq > R7_S23_R2.sai
bwa sampe -f R7_S23.sam -r '@RG\tID:R7_S23\tSM:R7_S23\tPL:illumina' tilling.fa R7_S23_R1.sai R7_S23_R2.sai R7_S23_L001_R1_001.fastq R7_S23_L001_R2_001.fastq
samtools view -bS R7_S23.sam > R7_S23.bam
java -jar -Xmx8g /home/workstation2/TILLING_workshop/Softwares/picard-2.17.1/picard.jar SortSam I=R7_S23.bam O=R7_S23.sorted.bam SO=coordinate MAX_RECORDS_IN_RAM=1500000 VALIDATION_STRINGENCY=LENIENT
samtools index R7_S23.sorted.bam
java -jar -Xmx16g /home/workstation2/TILLING_workshop/Softwares/GenomeAnalysisTK-3.8/GenomeAnalysisTK.jar -T UnifiedGenotyper -nct 10 -R tilling.fa -I R7_S23.sorted.bam -o R7_S23.vcf -stand_call_conf 20.0 --max_num_PL_values 1000 -glm BOTH -ploidy 96
bwa aln -q 20 -k 1 -t 40 tilling.fa R8_S24_L001_R1_001.fastq > R8_S24_R1.sai
bwa aln -q 20 -k 1 -t 40 tilling.fa R8_S24_L001_R2_001.fastq > R8_S24_R2.sai
bwa sampe -f R8_S24.sam -r '@RG\tID:R8_S24\tSM:R8_S24\tPL:illumina' tilling.fa R8_S24_R1.sai R8_S24_R2.sai R8_S24_L001_R1_001.fastq R8_S24_L001_R2_001.fastq
samtools view -bS R8_S24.sam > R8_S24.bam
java -jar -Xmx8g /home/workstation2/TILLING_workshop/Softwares/picard-2.17.1/picard.jar SortSam I=R8_S24.bam O=R8_S24.sorted.bam SO=coordinate MAX_RECORDS_IN_RAM=1500000 VALIDATION_STRINGENCY=LENIENT
samtools index R8_S24.sorted.bam
java -jar -Xmx16g /home/workstation2/TILLING_workshop/Softwares/GenomeAnalysisTK-3.8/GenomeAnalysisTK.jar -T UnifiedGenotyper -nct 10 -R tilling.fa -I R8_S24.sorted.bam -o R8_S24.vcf -stand_call_conf 20.0 --max_num_PL_values 1000 -glm BOTH -ploidy 96
bwa aln -q 20 -k 1 -t 40 tilling.fa R9_S25_L001_R1_001.fastq > R9_S25_R1.sai
bwa aln -q 20 -k 1 -t 40 tilling.fa R9_S25_L001_R2_001.fastq > R9_S25_R2.sai
bwa sampe -f R9_S25.sam -r '@RG\tID:R9_S25\tSM:R9_S25\tPL:illumina' tilling.fa R9_S25_R1.sai R9_S25_R2.sai R9_S25_L001_R1_001.fastq R9_S25_L001_R2_001.fastq
samtools view -bS R9_S25.sam > R9_S25.bam
java -jar -Xmx8g /home/workstation2/TILLING_workshop/Softwares/picard-2.17.1/picard.jar SortSam I=R9_S25.bam O=R9_S25.sorted.bam SO=coordinate MAX_RECORDS_IN_RAM=1500000 VALIDATION_STRINGENCY=LENIENT
samtools index R9_S25.sorted.bam
java -jar -Xmx16g /home/workstation2/TILLING_workshop/Softwares/GenomeAnalysisTK-3.8/GenomeAnalysisTK.jar -T UnifiedGenotyper -nct 10 -R tilling.fa -I R9_S25.sorted.bam -o R9_S25.vcf -stand_call_conf 20.0 --max_num_PL_values 1000 -glm BOTH -ploidy 96
bwa aln -q 20 -k 1 -t 40 tilling.fa R10_S26_L001_R1_001.fastq > R10_S26_R1.sai
bwa aln -q 20 -k 1 -t 40 tilling.fa R10_S26_L001_R2_001.fastq > R10_S26_R2.sai
bwa sampe -f R10_S26.sam -r '@RG\tID:R10_S26\tSM:R10_S26\tPL:illumina' tilling.fa R10_S26_R1.sai R10_S26_R2.sai R10_S26_L001_R1_001.fastq R10_S26_L001_R2_001.fastq
samtools view -bS R10_S26.sam > R10_S26.bam
java -jar -Xmx8g /home/workstation2/TILLING_workshop/Softwares/picard-2.17.1/picard.jar SortSam I=R10_S26.bam O=R10_S26.sorted.bam SO=coordinate MAX_RECORDS_IN_RAM=1500000 VALIDATION_STRINGENCY=LENIENT
samtools index R10_S26.sorted.bam
java -jar -Xmx16g /home/workstation2/TILLING_workshop/Softwares/GenomeAnalysisTK-3.8/GenomeAnalysisTK.jar -T UnifiedGenotyper -nct 10 -R tilling.fa -I R10_S26.sorted.bam -o R10_S26.vcf -stand_call_conf 20.0 --max_num_PL_values 1000 -glm BOTH -ploidy 96
bwa aln -q 20 -k 1 -t 40 tilling.fa R11_S27_L001_R1_001.fastq > R11_S27_R1.sai
bwa aln -q 20 -k 1 -t 40 tilling.fa R11_S27_L001_R2_001.fastq > R11_S27_R2.sai
bwa sampe -f R11_S27.sam -r '@RG\tID:R11_S27\tSM:R11_S27\tPL:illumina' tilling.fa R11_S27_R1.sai R11_S27_R2.sai R11_S27_L001_R1_001.fastq R11_S27_L001_R2_001.fastq
samtools view -bS R11_S27.sam > R11_S27.bam
java -jar -Xmx8g /home/workstation2/TILLING_workshop/Softwares/picard-2.17.1/picard.jar SortSam I=R11_S27.bam O=R11_S27.sorted.bam SO=coordinate MAX_RECORDS_IN_RAM=1500000 VALIDATION_STRINGENCY=LENIENT
samtools index R11_S27.sorted.bam
java -jar -Xmx16g /home/workstation2/TILLING_workshop/Softwares/GenomeAnalysisTK-3.8/GenomeAnalysisTK.jar -T UnifiedGenotyper -nct 10 -R tilling.fa -I R11_S27.sorted.bam -o R11_S27.vcf -stand_call_conf 20.0 --max_num_PL_values 1000 -glm BOTH -ploidy 96
bwa aln -q 20 -k 1 -t 40 tilling.fa R12_S28_L001_R1_001.fastq > R12_S28_R1.sai
bwa aln -q 20 -k 1 -t 40 tilling.fa R12_S28_L001_R2_001.fastq > R12_S28_R2.sai
bwa sampe -f R12_S28.sam -r '@RG\tID:R12_S28\tSM:R12_S28\tPL:illumina' tilling.fa R12_S28_R1.sai R12_S28_R2.sai R12_S28_L001_R1_001.fastq R12_S28_L001_R2_001.fastq
samtools view -bS R12_S28.sam > R12_S28.bam
java -jar -Xmx8g /home/workstation2/TILLING_workshop/Softwares/picard-2.17.1/picard.jar SortSam I=R12_S28.bam O=R12_S28.sorted.bam SO=coordinate MAX_RECORDS_IN_RAM=1500000 VALIDATION_STRINGENCY=LENIENT
samtools index R12_S28.sorted.bam
java -jar -Xmx16g /home/workstation2/TILLING_workshop/Softwares/GenomeAnalysisTK-3.8/GenomeAnalysisTK.jar -T UnifiedGenotyper -nct 10 -R tilling.fa -I R12_S28.sorted.bam -o R12_S28.vcf -stand_call_conf 20.0 --max_num_PL_values 1000 -glm BOTH -ploidy 96
bwa aln -q 20 -k 1 -t 40 tilling.fa R13_S29_L001_R1_001.fastq > R13_S29_R1.sai
bwa aln -q 20 -k 1 -t 40 tilling.fa R13_S29_L001_R2_001.fastq > R13_S29_R2.sai
bwa sampe -f R13_S29.sam -r '@RG\tID:R13_S29\tSM:R13_S29\tPL:illumina' tilling.fa R13_S29_R1.sai R13_S29_R2.sai R13_S29_L001_R1_001.fastq R13_S29_L001_R2_001.fastq
samtools view -bS R13_S29.sam > R13_S29.bam
java -jar -Xmx8g /home/workstation2/TILLING_workshop/Softwares/picard-2.17.1/picard.jar SortSam I=R13_S29.bam O=R13_S29.sorted.bam SO=coordinate MAX_RECORDS_IN_RAM=1500000 VALIDATION_STRINGENCY=LENIENT
samtools index R13_S29.sorted.bam
java -jar -Xmx16g /home/workstation2/TILLING_workshop/Softwares/GenomeAnalysisTK-3.8/GenomeAnalysisTK.jar -T UnifiedGenotyper -nct 10 -R tilling.fa -I R13_S29.sorted.bam -o R13_S29.vcf -stand_call_conf 20.0 --max_num_PL_values 1000 -glm BOTH -ploidy 96
bwa aln -q 20 -k 1 -t 40 tilling.fa R14_S30_L001_R1_001.fastq > R14_S30_R1.sai
bwa aln -q 20 -k 1 -t 40 tilling.fa R14_S30_L001_R2_001.fastq > R14_S30_R2.sai
bwa sampe -f R14_S30.sam -r '@RG\tID:R14_S30\tSM:R14_S30\tPL:illumina' tilling.fa R14_S30_R1.sai R14_S30_R2.sai R14_S30_L001_R1_001.fastq R14_S30_L001_R2_001.fastq
samtools view -bS R14_S30.sam > R14_S30.bam
java -jar -Xmx8g /home/workstation2/TILLING_workshop/Softwares/picard-2.17.1/picard.jar SortSam I=R14_S30.bam O=R14_S30.sorted.bam SO=coordinate MAX_RECORDS_IN_RAM=1500000 VALIDATION_STRINGENCY=LENIENT
samtools index R14_S30.sorted.bam
java -jar -Xmx16g /home/workstation2/TILLING_workshop/Softwares/GenomeAnalysisTK-3.8/GenomeAnalysisTK.jar -T UnifiedGenotyper -nct 10 -R tilling.fa -I R14_S30.sorted.bam -o R14_S30.vcf -stand_call_conf 20.0 --max_num_PL_values 1000 -glm BOTH -ploidy 96
bwa aln -q 20 -k 1 -t 40 tilling.fa R15_S31_L001_R1_001.fastq > R15_S31_R1.sai
bwa aln -q 20 -k 1 -t 40 tilling.fa R15_S31_L001_R2_001.fastq > R15_S31_R2.sai
bwa sampe -f R15_S31.sam -r '@RG\tID:R15_S31\tSM:R15_S31\tPL:illumina' tilling.fa R15_S31_R1.sai R15_S31_R2.sai R15_S31_L001_R1_001.fastq R15_S31_L001_R2_001.fastq
samtools view -bS R15_S31.sam > R15_S31.bam
java -jar -Xmx8g /home/workstation2/TILLING_workshop/Softwares/picard-2.17.1/picard.jar SortSam I=R15_S31.bam O=R15_S31.sorted.bam SO=coordinate MAX_RECORDS_IN_RAM=1500000 VALIDATION_STRINGENCY=LENIENT
samtools index R15_S31.sorted.bam
java -jar -Xmx16g /home/workstation2/TILLING_workshop/Softwares/GenomeAnalysisTK-3.8/GenomeAnalysisTK.jar -T UnifiedGenotyper -nct 10 -R tilling.fa -I R15_S31.sorted.bam -o R15_S31.vcf -stand_call_conf 20.0 --max_num_PL_values 1000 -glm BOTH -ploidy 96
bwa aln -q 20 -k 1 -t 40 tilling.fa R16_S32_L001_R1_001.fastq > R16_S32_R1.sai
bwa aln -q 20 -k 1 -t 40 tilling.fa R16_S32_L001_R2_001.fastq > R16_S32_R2.sai
bwa sampe -f R16_S32.sam -r '@RG\tID:R16_S32\tSM:R16_S32\tPL:illumina' tilling.fa R16_S32_R1.sai R16_S32_R2.sai R16_S32_L001_R1_001.fastq R16_S32_L001_R2_001.fastq
samtools view -bS R16_S32.sam > R16_S32.bam
java -jar -Xmx8g /home/workstation2/TILLING_workshop/Softwares/picard-2.17.1/picard.jar SortSam I=R16_S32.bam O=R16_S32.sorted.bam SO=coordinate MAX_RECORDS_IN_RAM=1500000 VALIDATION_STRINGENCY=LENIENT
samtools index R16_S32.sorted.bam
java -jar -Xmx16g /home/workstation2/TILLING_workshop/Softwares/GenomeAnalysisTK-3.8/GenomeAnalysisTK.jar -T UnifiedGenotyper -nct 10 -R tilling.fa -I R16_S32.sorted.bam -o R16_S32.vcf -stand_call_conf 20.0 --max_num_PL_values 1000 -glm BOTH -ploidy 96
bwa aln -q 20 -k 1 -t 40 tilling.fa D1_S33_L001_R1_001.fastq > D1_S33_R1.sai
bwa aln -q 20 -k 1 -t 40 tilling.fa D1_S33_L001_R2_001.fastq > D1_S33_R2.sai
bwa sampe -f D1_S33.sam -r '@RG\tID:D1_S33\tSM:D1_S33\tPL:illumina' tilling.fa D1_S33_R1.sai D1_S33_R2.sai D1_S33_L001_R1_001.fastq D1_S33_L001_R2_001.fastq
samtools view -bS D1_S33.sam > D1_S33.bam
java -jar -Xmx8g /home/workstation2/TILLING_workshop/Softwares/picard-2.17.1/picard.jar SortSam I=D1_S33.bam O=D1_S33.sorted.bam SO=coordinate MAX_RECORDS_IN_RAM=1500000 VALIDATION_STRINGENCY=LENIENT
samtools index D1_S33.sorted.bam
java -jar -Xmx16g /home/workstation2/TILLING_workshop/Softwares/GenomeAnalysisTK-3.8/GenomeAnalysisTK.jar -T UnifiedGenotyper -nct 10 -R tilling.fa -I D1_S33.sorted.bam -o D1_S33.vcf -stand_call_conf 20.0 --max_num_PL_values 1000 -glm BOTH -ploidy 128
bwa aln -q 20 -k 1 -t 40 tilling.fa D2_S34_L001_R1_001.fastq > D2_S34_R1.sai
bwa aln -q 20 -k 1 -t 40 tilling.fa D2_S34_L001_R2_001.fastq > D2_S34_R2.sai
bwa sampe -f D2_S34.sam -r '@RG\tID:D2_S34\tSM:D2_S34\tPL:illumina' tilling.fa D2_S34_R1.sai D2_S34_R2.sai D2_S34_L001_R1_001.fastq D2_S34_L001_R2_001.fastq
samtools view -bS D2_S34.sam > D2_S34.bam
java -jar -Xmx8g /home/workstation2/TILLING_workshop/Softwares/picard-2.17.1/picard.jar SortSam I=D2_S34.bam O=D2_S34.sorted.bam SO=coordinate MAX_RECORDS_IN_RAM=1500000 VALIDATION_STRINGENCY=LENIENT
samtools index D2_S34.sorted.bam
java -jar -Xmx16g /home/workstation2/TILLING_workshop/Softwares/GenomeAnalysisTK-3.8/GenomeAnalysisTK.jar -T UnifiedGenotyper -nct 10 -R tilling.fa -I D2_S34.sorted.bam -o D2_S34.vcf -stand_call_conf 20.0 --max_num_PL_values 1000 -glm BOTH -ploidy 128
bwa aln -q 20 -k 1 -t 40 tilling.fa D3_S35_L001_R1_001.fastq > D3_S35_R1.sai
bwa aln -q 20 -k 1 -t 40 tilling.fa D3_S35_L001_R2_001.fastq > D3_S35_R2.sai
bwa sampe -f D3_S35.sam -r '@RG\tID:D3_S35\tSM:D3_S35\tPL:illumina' tilling.fa D3_S35_R1.sai D3_S35_R2.sai D3_S35_L001_R1_001.fastq D3_S35_L001_R2_001.fastq
samtools view -bS D3_S35.sam > D3_S35.bam
java -jar -Xmx8g /home/workstation2/TILLING_workshop/Softwares/picard-2.17.1/picard.jar SortSam I=D3_S35.bam O=D3_S35.sorted.bam SO=coordinate MAX_RECORDS_IN_RAM=1500000 VALIDATION_STRINGENCY=LENIENT
samtools index D3_S35.sorted.bam
java -jar -Xmx16g /home/workstation2/TILLING_workshop/Softwares/GenomeAnalysisTK-3.8/GenomeAnalysisTK.jar -T UnifiedGenotyper -nct 10 -R tilling.fa -I D3_S35.sorted.bam -o D3_S35.vcf -stand_call_conf 20.0 --max_num_PL_values 1000 -glm BOTH -ploidy 128
bwa aln -q 20 -k 1 -t 40 tilling.fa D4_S36_L001_R1_001.fastq > D4_S36_R1.sai
bwa aln -q 20 -k 1 -t 40 tilling.fa D4_S36_L001_R2_001.fastq > D4_S36_R2.sai
bwa sampe -f D4_S36.sam -r '@RG\tID:D4_S36\tSM:D4_S36\tPL:illumina' tilling.fa D4_S36_R1.sai D4_S36_R2.sai D4_S36_L001_R1_001.fastq D4_S36_L001_R2_001.fastq
samtools view -bS D4_S36.sam > D4_S36.bam
java -jar -Xmx8g /home/workstation2/TILLING_workshop/Softwares/picard-2.17.1/picard.jar SortSam I=D4_S36.bam O=D4_S36.sorted.bam SO=coordinate MAX_RECORDS_IN_RAM=1500000 VALIDATION_STRINGENCY=LENIENT
samtools index D4_S36.sorted.bam
java -jar -Xmx16g /home/workstation2/TILLING_workshop/Softwares/GenomeAnalysisTK-3.8/GenomeAnalysisTK.jar -T UnifiedGenotyper -nct 10 -R tilling.fa -I D4_S36.sorted.bam -o D4_S36.vcf -stand_call_conf 20.0 --max_num_PL_values 1000 -glm BOTH -ploidy 128
bwa aln -q 20 -k 1 -t 40 tilling.fa D5_S37_L001_R1_001.fastq > D5_S37_R1.sai
bwa aln -q 20 -k 1 -t 40 tilling.fa D5_S37_L001_R2_001.fastq > D5_S37_R2.sai
bwa sampe -f D5_S37.sam -r '@RG\tID:D5_S37\tSM:D5_S37\tPL:illumina' tilling.fa D5_S37_R1.sai D5_S37_R2.sai D5_S37_L001_R1_001.fastq D5_S37_L001_R2_001.fastq
samtools view -bS D5_S37.sam > D5_S37.bam
java -jar -Xmx8g /home/workstation2/TILLING_workshop/Softwares/picard-2.17.1/picard.jar SortSam I=D5_S37.bam O=D5_S37.sorted.bam SO=coordinate MAX_RECORDS_IN_RAM=1500000 VALIDATION_STRINGENCY=LENIENT
samtools index D5_S37.sorted.bam
java -jar -Xmx16g /home/workstation2/TILLING_workshop/Softwares/GenomeAnalysisTK-3.8/GenomeAnalysisTK.jar -T UnifiedGenotyper -nct 10 -R tilling.fa -I D5_S37.sorted.bam -o D5_S37.vcf -stand_call_conf 20.0 --max_num_PL_values 1000 -glm BOTH -ploidy 128
bwa aln -q 20 -k 1 -t 40 tilling.fa D6_S38_L001_R1_001.fastq > D6_S38_R1.sai
bwa aln -q 20 -k 1 -t 40 tilling.fa D6_S38_L001_R2_001.fastq > D6_S38_R2.sai
bwa sampe -f D6_S38.sam -r '@RG\tID:D6_S38\tSM:D6_S38\tPL:illumina' tilling.fa D6_S38_R1.sai D6_S38_R2.sai D6_S38_L001_R1_001.fastq D6_S38_L001_R2_001.fastq
samtools view -bS D6_S38.sam > D6_S38.bam
java -jar -Xmx8g /home/workstation2/TILLING_workshop/Softwares/picard-2.17.1/picard.jar SortSam I=D6_S38.bam O=D6_S38.sorted.bam SO=coordinate MAX_RECORDS_IN_RAM=1500000 VALIDATION_STRINGENCY=LENIENT
samtools index D6_S38.sorted.bam
java -jar -Xmx16g /home/workstation2/TILLING_workshop/Softwares/GenomeAnalysisTK-3.8/GenomeAnalysisTK.jar -T UnifiedGenotyper -nct 10 -R tilling.fa -I D6_S38.sorted.bam -o D6_S38.vcf -stand_call_conf 20.0 --max_num_PL_values 1000 -glm BOTH -ploidy 128
bwa aln -q 20 -k 1 -t 40 tilling.fa D7_S39_L001_R1_001.fastq > D7_S39_R1.sai
bwa aln -q 20 -k 1 -t 40 tilling.fa D7_S39_L001_R2_001.fastq > D7_S39_R2.sai
bwa sampe -f D7_S39.sam -r '@RG\tID:D7_S39\tSM:D7_S39\tPL:illumina' tilling.fa D7_S39_R1.sai D7_S39_R2.sai D7_S39_L001_R1_001.fastq D7_S39_L001_R2_001.fastq
samtools view -bS D7_S39.sam > D7_S39.bam
java -jar -Xmx8g /home/workstation2/TILLING_workshop/Softwares/picard-2.17.1/picard.jar SortSam I=D7_S39.bam O=D7_S39.sorted.bam SO=coordinate MAX_RECORDS_IN_RAM=1500000 VALIDATION_STRINGENCY=LENIENT
samtools index D7_S39.sorted.bam
java -jar -Xmx16g /home/workstation2/TILLING_workshop/Softwares/GenomeAnalysisTK-3.8/GenomeAnalysisTK.jar -T UnifiedGenotyper -nct 10 -R tilling.fa -I D7_S39.sorted.bam -o D7_S39.vcf -stand_call_conf 20.0 --max_num_PL_values 1000 -glm BOTH -ploidy 128
bwa aln -q 20 -k 1 -t 40 tilling.fa D8_S40_L001_R1_001.fastq > D8_S40_R1.sai
bwa aln -q 20 -k 1 -t 40 tilling.fa D8_S40_L001_R2_001.fastq > D8_S40_R2.sai
bwa sampe -f D8_S40.sam -r '@RG\tID:D8_S40\tSM:D8_S40\tPL:illumina' tilling.fa D8_S40_R1.sai D8_S40_R2.sai D8_S40_L001_R1_001.fastq D8_S40_L001_R2_001.fastq
samtools view -bS D8_S40.sam > D8_S40.bam
java -jar -Xmx8g /home/workstation2/TILLING_workshop/Softwares/picard-2.17.1/picard.jar SortSam I=D8_S40.bam O=D8_S40.sorted.bam SO=coordinate MAX_RECORDS_IN_RAM=1500000 VALIDATION_STRINGENCY=LENIENT
samtools index D8_S40.sorted.bam
java -jar -Xmx16g /home/workstation2/TILLING_workshop/Softwares/GenomeAnalysisTK-3.8/GenomeAnalysisTK.jar -T UnifiedGenotyper -nct 10 -R tilling.fa -I D8_S40.sorted.bam -o D8_S40.vcf -stand_call_conf 20.0 --max_num_PL_values 1000 -glm BOTH -ploidy 128
bwa aln -q 20 -k 1 -t 40 tilling.fa D9_S41_L001_R1_001.fastq > D9_S41_R1.sai
bwa aln -q 20 -k 1 -t 40 tilling.fa D9_S41_L001_R2_001.fastq > D9_S41_R2.sai
bwa sampe -f D9_S41.sam -r '@RG\tID:D9_S41\tSM:D9_S41\tPL:illumina' tilling.fa D9_S41_R1.sai D9_S41_R2.sai D9_S41_L001_R1_001.fastq D9_S41_L001_R2_001.fastq
samtools view -bS D9_S41.sam > D9_S41.bam
java -jar -Xmx8g /home/workstation2/TILLING_workshop/Softwares/picard-2.17.1/picard.jar SortSam I=D9_S41.bam O=D9_S41.sorted.bam SO=coordinate MAX_RECORDS_IN_RAM=1500000 VALIDATION_STRINGENCY=LENIENT
samtools index D9_S41.sorted.bam
java -jar -Xmx16g /home/workstation2/TILLING_workshop/Softwares/GenomeAnalysisTK-3.8/GenomeAnalysisTK.jar -T UnifiedGenotyper -nct 10 -R tilling.fa -I D9_S41.sorted.bam -o D9_S41.vcf -stand_call_conf 20.0 --max_num_PL_values 1000 -glm BOTH -ploidy 128
bwa aln -q 20 -k 1 -t 40 tilling.fa D10_S42_L001_R1_001.fastq > D10_S42_R1.sai
bwa aln -q 20 -k 1 -t 40 tilling.fa D10_S42_L001_R2_001.fastq > D10_S42_R2.sai
bwa sampe -f D10_S42.sam -r '@RG\tID:D10_S42\tSM:D10_S42\tPL:illumina' tilling.fa D10_S42_R1.sai D10_S42_R2.sai D10_S42_L001_R1_001.fastq D10_S42_L001_R2_001.fastq
samtools view -bS D10_S42.sam > D10_S42.bam
java -jar -Xmx8g /home/workstation2/TILLING_workshop/Softwares/picard-2.17.1/picard.jar SortSam I=D10_S42.bam O=D10_S42.sorted.bam SO=coordinate MAX_RECORDS_IN_RAM=1500000 VALIDATION_STRINGENCY=LENIENT
samtools index D10_S42.sorted.bam
java -jar -Xmx16g /home/workstation2/TILLING_workshop/Softwares/GenomeAnalysisTK-3.8/GenomeAnalysisTK.jar -T UnifiedGenotyper -nct 10 -R tilling.fa -I D10_S42.sorted.bam -o D10_S42.vcf -stand_call_conf 20.0 --max_num_PL_values 1000 -glm BOTH -ploidy 128
bwa aln -q 20 -k 1 -t 40 tilling.fa D11_S43_L001_R1_001.fastq > D11_S43_R1.sai
bwa aln -q 20 -k 1 -t 40 tilling.fa D11_S43_L001_R2_001.fastq > D11_S43_R2.sai
bwa sampe -f D11_S43.sam -r '@RG\tID:D11_S43\tSM:D11_S43\tPL:illumina' tilling.fa D11_S43_R1.sai D11_S43_R2.sai D11_S43_L001_R1_001.fastq D11_S43_L001_R2_001.fastq
samtools view -bS D11_S43.sam > D11_S43.bam
java -jar -Xmx8g /home/workstation2/TILLING_workshop/Softwares/picard-2.17.1/picard.jar SortSam I=D11_S43.bam O=D11_S43.sorted.bam SO=coordinate MAX_RECORDS_IN_RAM=1500000 VALIDATION_STRINGENCY=LENIENT
samtools index D11_S43.sorted.bam
java -jar -Xmx16g /home/workstation2/TILLING_workshop/Softwares/GenomeAnalysisTK-3.8/GenomeAnalysisTK.jar -T UnifiedGenotyper -nct 10 -R tilling.fa -I D11_S43.sorted.bam -o D11_S43.vcf -stand_call_conf 20.0 --max_num_PL_values 1000 -glm BOTH -ploidy 128
bwa aln -q 20 -k 1 -t 40 tilling.fa D12_S44_L001_R1_001.fastq > D12_S44_R1.sai
bwa aln -q 20 -k 1 -t 40 tilling.fa D12_S44_L001_R2_001.fastq > D12_S44_R2.sai
bwa sampe -f D12_S44.sam -r '@RG\tID:D12_S44\tSM:D12_S44\tPL:illumina' tilling.fa D12_S44_R1.sai D12_S44_R2.sai D12_S44_L001_R1_001.fastq D12_S44_L001_R2_001.fastq
samtools view -bS D12_S44.sam > D12_S44.bam
java -jar -Xmx8g /home/workstation2/TILLING_workshop/Softwares/picard-2.17.1/picard.jar SortSam I=D12_S44.bam O=D12_S44.sorted.bam SO=coordinate MAX_RECORDS_IN_RAM=1500000 VALIDATION_STRINGENCY=LENIENT
samtools index D12_S44.sorted.bam
java -jar -Xmx16g /home/workstation2/TILLING_workshop/Softwares/GenomeAnalysisTK-3.8/GenomeAnalysisTK.jar -T UnifiedGenotyper -nct 10 -R tilling.fa -I D12_S44.sorted.bam -o D12_S44.vcf -stand_call_conf 20.0 --max_num_PL_values 1000 -glm BOTH -ploidy 128
