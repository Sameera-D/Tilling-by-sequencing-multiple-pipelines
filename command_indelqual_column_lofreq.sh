#Author: Sameera Devulapalli
#Repository of Tomato Genomics Resources, University of Hyderabad

#Running all Lofreq commands for C-pools

lofreq indelqual --dindel -f tilling.fa -o C1_S1.indelqual.sorted.bam C1_S1.sorted.bam
lofreq index C1_S1.indelqual.sorted.bam 
lofreq call -f tilling.fa -o C1_S1_lofreq.vcf --call-indels C1_S1.indelqual.sorted.bam
lofreq indelqual --dindel -f tilling.fa -o C2_S2.indelqual.sorted.bam C2_S2.sorted.bam
lofreq index C2_S2.indelqual.sorted.bam 
lofreq call -f tilling.fa -o C2_S2_lofreq.vcf --call-indels C2_S2.indelqual.sorted.bam
lofreq indelqual --dindel -f tilling.fa -o C3_S3.indelqual.sorted.bam C3_S3.sorted.bam
lofreq index C3_S3.indelqual.sorted.bam 
lofreq call -f tilling.fa -o C3_S3_lofreq.vcf --call-indels C3_S3.indelqual.sorted.bam
lofreq indelqual --dindel -f tilling.fa -o C4_S4.indelqual.sorted.bam C4_S4.sorted.bam
lofreq index C4_S4.indelqual.sorted.bam 
lofreq call -f tilling.fa -o C4_S4_lofreq.vcf --call-indels C4_S4.indelqual.sorted.bam
lofreq indelqual --dindel -f tilling.fa -o C5_S5.indelqual.sorted.bam C5_S5.sorted.bam
lofreq index C5_S5.indelqual.sorted.bam 
lofreq call -f tilling.fa -o C5_S5_lofreq.vcf --call-indels C5_S5.indelqual.sorted.bam
lofreq indelqual --dindel -f tilling.fa -o C6_S6.indelqual.sorted.bam C6_S6.sorted.bam
lofreq index C6_S6.indelqual.sorted.bam 
lofreq call -f tilling.fa -o C6_S6_lofreq.vcf --call-indels C6_S6.indelqual.sorted.bam
lofreq indelqual --dindel -f tilling.fa -o C7_S7.indelqual.sorted.bam C7_S7.sorted.bam
lofreq index C7_S7.indelqual.sorted.bam 
lofreq call -f tilling.fa -o C7_S7_lofreq.vcf --call-indels C7_S7.indelqual.sorted.bam
lofreq indelqual --dindel -f tilling.fa -o C8_S8.indelqual.sorted.bam C8_S8.sorted.bam
lofreq index C8_S8.indelqual.sorted.bam 
lofreq call -f tilling.fa -o C8_S8_lofreq.vcf --call-indels C8_S8.indelqual.sorted.bam
lofreq indelqual --dindel -f tilling.fa -o C9_S9.indelqual.sorted.bam C9_S9.sorted.bam
lofreq index C9_S9.indelqual.sorted.bam 
lofreq call -f tilling.fa -o C9_S9_lofreq.vcf --call-indels C9_S9.indelqual.sorted.bam
lofreq indelqual --dindel -f tilling.fa -o C10_S10.indelqual.sorted.bam C10_S10.sorted.bam
lofreq index C10_S10.indelqual.sorted.bam 
lofreq call -f tilling.fa -o C10_S10_lofreq.vcf --call-indels C10_S10.indelqual.sorted.bam
lofreq indelqual --dindel -f tilling.fa -o C11_S11.indelqual.sorted.bam C11_S11.sorted.bam
lofreq index C11_S11.indelqual.sorted.bam 
lofreq call -f tilling.fa -o C11_S11_lofreq.vcf --call-indels C11_S11.indelqual.sorted.bam
lofreq indelqual --dindel -f tilling.fa -o C12_S12.indelqual.sorted.bam C12_S12.sorted.bam
lofreq index C12_S12.indelqual.sorted.bam 
lofreq call -f tilling.fa -o C12_S12_lofreq.vcf --call-indels C12_S12.indelqual.sorted.bam
lofreq indelqual --dindel -f tilling.fa -o C13_S13.indelqual.sorted.bam C13_S13.sorted.bam
lofreq index C13_S13.indelqual.sorted.bam 
lofreq call -f tilling.fa -o C13_S13_lofreq.vcf --call-indels C13_S13.indelqual.sorted.bam
lofreq indelqual --dindel -f tilling.fa -o C14_S14.indelqual.sorted.bam C14_S14.sorted.bam
lofreq index C14_S14.indelqual.sorted.bam 
lofreq call -f tilling.fa -o C14_S14_lofreq.vcf --call-indels C14_S14.indelqual.sorted.bam
lofreq indelqual --dindel -f tilling.fa -o C15_S15.indelqual.sorted.bam C15_S15.sorted.bam
lofreq index C15_S15.indelqual.sorted.bam 
lofreq call -f tilling.fa -o C15_S15_lofreq.vcf --call-indels C15_S15.indelqual.sorted.bam
lofreq indelqual --dindel -f tilling.fa -o C16_S16.indelqual.sorted.bam C16_S16.sorted.bam
lofreq index C16_S16.indelqual.sorted.bam 
lofreq call -f tilling.fa -o C16_S16_lofreq.vcf --call-indels C16_S16.indelqual.sorted.bam

