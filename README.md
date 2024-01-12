# RNA-seq
### These shell scripts are purposed for paired-end (PE) bulk RNAseq data. Raw, untrimmed FASTQ files are not available for open-access but scripts can be repurposed for any paired-end Illumina FASTQ RNAseq data. The goal of this project is to verify which aligner is more efficient for high-throughput RNA seq data from plant RNA sequences

### trim.sh 
TrimmomaticPE utilized to trim the primers of the paired-end FASTQ data with quality threshold SLIDINGWINDOW:10:20 (cuts leftmost position after quality drops below 20 in a window of 10 base pairs. Minimum length sequences to keep = 50bp

### build.sh 
Builds HISAT2 genome reference library
### genomeBuild.sh 
Builds STAR genome reference library

### STAR.sh
Runs STAR aligner and delineates output files
### hisat2.sh
Runs HISAT2 aligner and delineates output files

### dataProcessing.sh
Post-processing of bam output files from aligners. Paths are absolute. I definitely got lazy here my bad.

### prepDEseq.py
Script utilized from.... somewhere in the BioStars forums... I did not write this script. 
