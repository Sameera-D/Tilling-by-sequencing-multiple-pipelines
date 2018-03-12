#Author: Prateek Gupta
#Repository of Tomato Genomics Resources, University of Hyderabad

#Running all Lofreq commands for R-pools

lofreq indelqual --dindel -f tilling.fa -o R1_S17.indelqual.sorted.bam R1_S17.sorted.bam
lofreq index R1_S17.indelqual.sorted.bam 
lofreq call -f tilling.fa -o R1_S17_lofreq.vcf --call-indels R1_S17.indelqual.sorted.bam
lofreq indelqual --dindel -f tilling.fa -o R2_S18.indelqual.sorted.bam R2_S18.sorted.bam
lofreq index R2_S18.indelqual.sorted.bam 
lofreq call -f tilling.fa -o R2_S18_lofreq.vcf --call-indels R2_S18.indelqual.sorted.bam
lofreq indelqual --dindel -f tilling.fa -o R3_S19.indelqual.sorted.bam R3_S19.sorted.bam
lofreq index R3_S19.indelqual.sorted.bam 
lofreq call -f tilling.fa -o R3_S19_lofreq.vcf --call-indels R3_S19.indelqual.sorted.bam
lofreq indelqual --dindel -f tilling.fa -o R4_S20.indelqual.sorted.bam R4_S20.sorted.bam
lofreq index R4_S20.indelqual.sorted.bam 
lofreq call -f tilling.fa -o R4_S20_lofreq.vcf --call-indels R4_S20.indelqual.sorted.bam
lofreq indelqual --dindel -f tilling.fa -o R5_S21.indelqual.sorted.bam R5_S21.sorted.bam
lofreq index R5_S21.indelqual.sorted.bam 
lofreq call -f tilling.fa -o R5_S21_lofreq.vcf --call-indels R5_S21.indelqual.sorted.bam
lofreq indelqual --dindel -f tilling.fa -o R6_S22.indelqual.sorted.bam R6_S22.sorted.bam
lofreq index R6_S22.indelqual.sorted.bam 
lofreq call -f tilling.fa -o R6_S22_lofreq.vcf --call-indels R6_S22.indelqual.sorted.bam
lofreq indelqual --dindel -f tilling.fa -o R7_S23.indelqual.sorted.bam R7_S23.sorted.bam
lofreq index R7_S23.indelqual.sorted.bam 
lofreq call -f tilling.fa -o R7_S23_lofreq.vcf --call-indels R7_S23.indelqual.sorted.bam
lofreq indelqual --dindel -f tilling.fa -o R8_S24.indelqual.sorted.bam R8_S24.sorted.bam
lofreq index R8_S24.indelqual.sorted.bam 
lofreq call -f tilling.fa -o R8_S24_lofreq.vcf --call-indels R8_S24.indelqual.sorted.bam
lofreq indelqual --dindel -f tilling.fa -o R9_S25.indelqual.sorted.bam R9_S25.sorted.bam
lofreq index R9_S25.indelqual.sorted.bam 
lofreq call -f tilling.fa -o R9_S25_lofreq.vcf --call-indels R9_S25.indelqual.sorted.bam
lofreq indelqual --dindel -f tilling.fa -o R10_S26.indelqual.sorted.bam R10_S26.sorted.bam
lofreq index R10_S26.indelqual.sorted.bam 
lofreq call -f tilling.fa -o R10_S26_lofreq.vcf --call-indels R10_S26.indelqual.sorted.bam
lofreq indelqual --dindel -f tilling.fa -o R11_S27.indelqual.sorted.bam R11_S27.sorted.bam
lofreq index R11_S27.indelqual.sorted.bam 
lofreq call -f tilling.fa -o R11_S27_lofreq.vcf --call-indels R11_S27.indelqual.sorted.bam
lofreq indelqual --dindel -f tilling.fa -o R12_S28.indelqual.sorted.bam R12_S28.sorted.bam
lofreq index R12_S28.indelqual.sorted.bam 
lofreq call -f tilling.fa -o R12_S28_lofreq.vcf --call-indels R12_S28.indelqual.sorted.bam
lofreq indelqual --dindel -f tilling.fa -o R13_S29.indelqual.sorted.bam R13_S29.sorted.bam
lofreq index R13_S29.indelqual.sorted.bam 
lofreq call -f tilling.fa -o R13_S29_lofreq.vcf --call-indels R13_S29.indelqual.sorted.bam
lofreq indelqual --dindel -f tilling.fa -o R14_S30.indelqual.sorted.bam R14_S30.sorted.bam
lofreq index R14_S30.indelqual.sorted.bam 
lofreq call -f tilling.fa -o R14_S30_lofreq.vcf --call-indels R14_S30.indelqual.sorted.bam
lofreq indelqual --dindel -f tilling.fa -o R15_S31.indelqual.sorted.bam R15_S31.sorted.bam
lofreq index R15_S31.indelqual.sorted.bam 
lofreq call -f tilling.fa -o R15_S31_lofreq.vcf --call-indels R15_S31.indelqual.sorted.bam
lofreq indelqual --dindel -f tilling.fa -o R16_S32.indelqual.sorted.bam R16_S32.sorted.bam
lofreq index R16_S32.indelqual.sorted.bam 
lofreq call -f tilling.fa -o R16_S32_lofreq.vcf --call-indels R16_S32.indelqual.sorted.bam

