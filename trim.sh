#!/bin/bash

file1=( $(cat filelist.txt) )
file2=( $(cat filelist.txt | sed 's/_R1_/_R2_/g') )


for ((i = 0; i< ${#file1[@]}; ++i)); do
	 java -jar /home/chabab/Downloads/Trimmomatic-main/dist/jar/trimmomatic-0.40-rc1.jar PE -threads 4 \
	 ~/makenzie_analysis/S287_Seq_Data/${file1[$i]} \
	 ~/makenzie_analysis/S287_Seq_Data/${file2[$i]} \
	 ~/makenzie_analysis/Analysis/1_Trim/trimmedReads/paired_${file1[$i]} \
	 ~/makenzie_analysis/Analysis/1_Trim/trimmedReads/unpaired_${file1[$i]} \
	 ~/makenzie_analysis/Analysis/1_Trim/trimmedReads/paired_${file2[$i]} \
	 ~/makenzie_analysis/Analysis/1_Trim/trimmedReads/unpaired_${file2[$i]} \
	 ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 \
	 MINLEN:50 \
	 SLIDINGWINDOW:10:20
done
