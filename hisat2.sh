#!/bin/bash



# hisat2 \
# -p 4 \
# -x ~/makenzie_analysis/Analysis/2_HISAT/index/ZM_ref \
# -1 ~/makenzie_analysis/Analysis/1_Trim/trimmedReads/combinedPaired_Po_CO_R1.fastq.gz \
# -2 ~/makenzie_analysis/Analysis/1_Trim/trimmedReads/combinedPaired_Po_CO_R2.fastq.gz \
# -U ~/makenzie_analysis/Analysis/1_Trim/trimmedReads/combinedUnpaired_Po_CO.fastq.gz \
# --phred33 \
# --dta \
# --summary-file ~/makenzie_analysis/Analysis/2_HISAT/outputFiles/PoCOalignmentSummary.out \
# -S ~/makenzie_analysis/Analysis/2_HISAT/outputFiles/PoCOtranscriptAlignments.sam


hisat2 \
-p 4 \
-x ~/makenzie_analysis/Analysis/2_HISAT/index/ZM_ref \
-1 ~/makenzie_analysis/Analysis/1_Trim/trimmedReads/combinedPaired_Po_HS_R1.fastq.gz \
-2 ~/makenzie_analysis/Analysis/1_Trim/trimmedReads/combinedPaired_Po_HS_R2.fastq.gz \
-U ~/makenzie_analysis/Analysis/1_Trim/trimmedReads/combinedUnpaired_Po_HS.fastq.gz \
--phred33 \
--dta \
--summary-file ~/makenzie_analysis/Analysis/2_HISAT/outputFiles/PoHSalignmentSummary.out \
-S ~/makenzie_analysis/Analysis/2_HISAT/outputFiles/PoHStranscriptAlignments.sam


hisat2 \
-p 4 \
-x ~/makenzie_analysis/Analysis/2_HISAT/index/ZM_ref \
-1 ~/makenzie_analysis/Analysis/1_Trim/trimmedReads/combinedPaired_An_CO_R1.fastq.gz \
-2 ~/makenzie_analysis/Analysis/1_Trim/trimmedReads/combinedPaired_An_CO_R2.fastq.gz \
-U ~/makenzie_analysis/Analysis/1_Trim/trimmedReads/combinedUnpaired_An_CO.fastq.gz \
--phred33 \
--dta \
--summary-file ~/makenzie_analysis/Analysis/2_HISAT/outputFiles/AnCOalignmentSummary.out \
-S ~/makenzie_analysis/Analysis/2_HISAT/outputFiles/AnCOtranscriptAlignments.sam


hisat2 \
-p 4 \
-x ~/makenzie_analysis/Analysis/2_HISAT/index/ZM_ref \
-1 ~/makenzie_analysis/Analysis/1_Trim/trimmedReads/combinedPaired_An_HS_R1.fastq.gz \
-2 ~/makenzie_analysis/Analysis/1_Trim/trimmedReads/combinedPaired_An_HS_R2.fastq.gz \
-U ~/makenzie_analysis/Analysis/1_Trim/trimmedReads/combinedUnpaired_An_HS.fastq.gz \
--phred33 \
--dta \
--summary-file ~/makenzie_analysis/Analysis/2_HISAT/outputFiles/AnHSalignmentSummary.out \
-S ~/makenzie_analysis/Analysis/2_HISAT/outputFiles/AnHStranscriptAlignments.sam
