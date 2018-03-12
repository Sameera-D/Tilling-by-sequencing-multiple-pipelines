#Author: Prateek Gupta
#Repository of Tomato Genomics Resources, University of Hyderabad

#Running all Lofreq commands for D-pools

lofreq indelqual --dindel -f tilling.fa -o D1_S33.indelqual.sorted.bam D1_S33.sorted.bam
lofreq index D1_S33.indelqual.sorted.bam 
lofreq call -f tilling.fa -o D1_S33_lofreq.vcf --call-indels D1_S33.indelqual.sorted.bam
lofreq indelqual --dindel -f tilling.fa -o D2_S34.indelqual.sorted.bam D2_S34.sorted.bam
lofreq index D2_S34.indelqual.sorted.bam 
lofreq call -f tilling.fa -o D2_S34_lofreq.vcf --call-indels D2_S34.indelqual.sorted.bam
lofreq indelqual --dindel -f tilling.fa -o D3_S35.indelqual.sorted.bam D3_S35.sorted.bam
lofreq index D3_S35.indelqual.sorted.bam 
lofreq call -f tilling.fa -o D3_S35_lofreq.vcf --call-indels D3_S35.indelqual.sorted.bam
lofreq indelqual --dindel -f tilling.fa -o D4_S36.indelqual.sorted.bam D4_S36.sorted.bam
lofreq index D4_S36.indelqual.sorted.bam 
lofreq call -f tilling.fa -o D4_S36_lofreq.vcf --call-indels D4_S36.indelqual.sorted.bam
lofreq indelqual --dindel -f tilling.fa -o D5_S37.indelqual.sorted.bam D5_S37.sorted.bam
lofreq index D5_S37.indelqual.sorted.bam 
lofreq call -f tilling.fa -o D5_S37_lofreq.vcf --call-indels D5_S37.indelqual.sorted.bam
lofreq indelqual --dindel -f tilling.fa -o D6_S38.indelqual.sorted.bam D6_S38.sorted.bam
lofreq index D6_S38.indelqual.sorted.bam 
lofreq call -f tilling.fa -o D6_S38_lofreq.vcf --call-indels D6_S38.indelqual.sorted.bam
lofreq indelqual --dindel -f tilling.fa -o D7_S39.indelqual.sorted.bam D7_S39.sorted.bam
lofreq index D7_S39.indelqual.sorted.bam 
lofreq call -f tilling.fa -o D7_S39_lofreq.vcf --call-indels D7_S39.indelqual.sorted.bam
lofreq indelqual --dindel -f tilling.fa -o D8_S40.indelqual.sorted.bam D8_S40.sorted.bam
lofreq index D8_S40.indelqual.sorted.bam 
lofreq call -f tilling.fa -o D8_S40_lofreq.vcf --call-indels D8_S40.indelqual.sorted.bam
lofreq indelqual --dindel -f tilling.fa -o D9_S41.indelqual.sorted.bam D9_S41.sorted.bam
lofreq index D9_S41.indelqual.sorted.bam 
lofreq call -f tilling.fa -o D9_S41_lofreq.vcf --call-indels D9_S41.indelqual.sorted.bam
lofreq indelqual --dindel -f tilling.fa -o D10_S42.indelqual.sorted.bam D10_S42.sorted.bam
lofreq index D10_S42.indelqual.sorted.bam 
lofreq call -f tilling.fa -o D10_S42_lofreq.vcf --call-indels D10_S42.indelqual.sorted.bam
lofreq indelqual --dindel -f tilling.fa -o D11_S43.indelqual.sorted.bam D11_S43.sorted.bam
lofreq index D11_S43.indelqual.sorted.bam 
lofreq call -f tilling.fa -o D11_S43_lofreq.vcf --call-indels D11_S43.indelqual.sorted.bam
lofreq indelqual --dindel -f tilling.fa -o D12_S44.indelqual.sorted.bam D12_S44.sorted.bam
lofreq index D12_S44.indelqual.sorted.bam 
lofreq call -f tilling.fa -o D12_S44_lofreq.vcf --call-indels D12_S44.indelqual.sorted.bam

