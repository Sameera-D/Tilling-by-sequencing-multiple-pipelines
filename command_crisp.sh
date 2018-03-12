#Author: Sameera Devulapalli
#Repository of Tomato Genomics Resources, University of Hyderabad

#Running all CRISP commands for R, C and D-pools

CRISP --bam D1_S33.sorted.bam --bam D2_S34.sorted.bam --bam D3_S35.sorted.bam --bam D4_S36.sorted.bam --bam D5_S37.sorted.bam --bam D6_S38.sorted.bam --bam D7_S39.sorted.bam --bam D8_S40.sorted.bam --bam D9_S41.sorted.bam --bam D10_S42.sorted.bam --bam D11_S43.sorted.bam --bam D12_S44.sorted.bam --ref tilling.fa --OPE 0 --VCF Dpool1.VCF --poolsize 128 --qvoffset 33 > variantcalls_dpool1_qoffset33.log

CRISP --bam R1_S17.sorted.bam --bam R2_S18.sorted.bam --bam R3_S19.sorted.bam --bam R4_S20.sorted.bam --bam R5_S21.sorted.bam --bam R6_S22.sorted.bam --bam R7_S23.sorted.bam --bam R8_S24.sorted.bam --bam R9_S25.sorted.bam --bam R10_S26.sorted.bam --bam R11_S27.sorted.bam --bam R12_S28.sorted.bam --bam R13_S29.sorted.bam --bam R14_S30.sorted.bam --bam R15_S31.sorted.bam --bam R16_S32.sorted.bam --ref tilling.fa --OPE 0 --VCF row1.VCF --poolsize 96 --qvoffset 33 > variantcalls_row1_qoffset33.log

CRISP --bam C1_S1.sorted.bam --bam C2_S2.sorted.bam --bam C3_S3.sorted.bam --bam C4_S4.sorted.bam --bam C5_S5.sorted.bam --bam C6_S6.sorted.bam --bam C7_S7.sorted.bam --bam C8_S8.sorted.bam --bam C9_S9.sorted.bam --bam C10_S10.sorted.bam --bam C11_S11.sorted.bam --bam C12_S12.sorted.bam --bam C13_S13.sorted.bam --bam C14_S14.sorted.bam --bam C15_S15.sorted.bam --bam C16_S16.sorted.bam --ref tilling.fa --OPE 0 --VCF column1.VCF --poolsize 96 --qvoffset 33 > variantcalls_column1_qoffset33.log
