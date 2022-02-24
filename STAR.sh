#!/bin/bash

file1=( $(cat filelist.txt) )
file2=( $(cat filelist.txt | sed 's/_R1_/_R2_/g') )


for ((i = 0; i< ${#file1[@]}; ++i)); do


	STAR \
	--runMode alignReads \
	--runThreadN 4 \
	--genomeDir ~/makenzie_analysis/Analysis/2_STAR/refGen \
	--readFilesIn ~/makenzie_analysis/Analysis/1_Trim/trimmedReads/paired_${file1[$i]} ~/makenzie_analysis/Analysis/1_Trim/trimmedReads/paired_${file2[$i]} \
	--readFilesCommand zcat \
	--quantMode TranscriptomeSAM GeneCounts \
	--peOverlapNbasesMin 10 \
	--peOverlapMMp 0.05 \
	--outFilterType BySJout \
	--outFilterMultimapNmax 20 \
	--alignSJoverhangMin 8 \
	--alignSJDBoverhangMin 1 \
	--outFilterMismatchNoverReadLmax 0.04 \
	--outSAMtype BAM SortedByCoordinate \
	--limitBAMsortRAM 16000000000 \
	--limitIObufferSize 16000000000
done
