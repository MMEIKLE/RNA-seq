#!/bin/bash

#samtools view -bS ~/makenzie_analysis/Analysis/2_HISAT/outputFiles/PoCOtranscriptAlignments.sam > ~/makenzie_analysis/Analysis/2_HISAT/outputFiles/PoCOtranscriptAlignments.bam
#samtools view -bS ~/makenzie_analysis/Analysis/2_HISAT/outputFiles/PoHStranscriptAlignments.sam > ~/makenzie_analysis/Analysis/2_HISAT/outputFiles/PoHStranscriptAlignments.bam
#samtools view -bS ~/makenzie_analysis/Analysis/2_HISAT/outputFiles/AnCOtranscriptAlignments.sam > ~/makenzie_analysis/Analysis/2_HISAT/outputFiles/AnCOtranscriptAlignments.bam
#samtools view -bS ~/makenzie_analysis/Analysis/2_HISAT/outputFiles/AnHStranscriptAlignments.sam > ~/makenzie_analysis/Analysis/2_HISAT/outputFiles/AnHStranscriptAlignments.bam



#samtools sort ~/makenzie_analysis/Analysis/2_HISAT/outputFiles/PoCOtranscriptAlignments.bam -o ~/makenzie_analysis/Analysis/2_HISAT/outputFiles/sorted_PoCOtranscriptAlignments.bam
#samtools sort ~/makenzie_analysis/Analysis/2_HISAT/outputFiles/PoHStranscriptAlignments.bam -o ~/makenzie_analysis/Analysis/2_HISAT/outputFiles/sorted_PoHStranscriptAlignments.bam
#samtools sort ~/makenzie_analysis/Analysis/2_HISAT/outputFiles/AnCOtranscriptAlignments.bam -o ~/makenzie_analysis/Analysis/2_HISAT/outputFiles/sorted_AnCOtranscriptAlignments.bam
#samtools sort ~/makenzie_analysis/Analysis/2_HISAT/outputFiles/AnHStranscriptAlignments.bam -o ~/makenzie_analysis/Analysis/2_HISAT/outputFiles/sorted_AnHStranscriptAlignments.bam



stringtie -p 4 ~/makenzie_analysis/Analysis/2_HISAT/outputFiles/sorted_PoCOtranscriptAlignments.bam \
-G ~/makenzie_analysis/Analysis/0_referenceGenome/Zm-B73-REFERENCE-NAM-5.0_Zm00001eb.1.gff3 \
-o ~/makenzie_analysis/Analysis/2_HISAT/outputFiles/PoCOassembledSortedAlignments.gtf \
-A ~/makenzie_analysis/Analysis/2_HISAT/outputFiles/PoCOabundanceEstimations.out \
-e

stringtie -p 4 ~/makenzie_analysis/Analysis/2_HISAT/outputFiles/sorted_PoHStranscriptAlignments.bam \
-G ~/makenzie_analysis/Analysis/0_referenceGenome/Zm-B73-REFERENCE-NAM-5.0_Zm00001eb.1.gff3 \
-o ~/makenzie_analysis/Analysis/2_HISAT/outputFiles/PoHSassembledSortedAlignments.gtf \
-A ~/makenzie_analysis/Analysis/2_HISAT/outputFiles/PoHSabundanceEstimations.out \
-e

stringtie -p 4 ~/makenzie_analysis/Analysis/2_HISAT/outputFiles/sorted_AnCOtranscriptAlignments.bam \
-G ~/makenzie_analysis/Analysis/0_referenceGenome/Zm-B73-REFERENCE-NAM-5.0_Zm00001eb.1.gff3 \
-o ~/makenzie_analysis/Analysis/2_HISAT/outputFiles/AnCOassembledSortedAlignments.gtf \
-A ~/makenzie_analysis/Analysis/2_HISAT/outputFiles/AnCOabundanceEstimations.out \
-e

stringtie -p 4 ~/makenzie_analysis/Analysis/2_HISAT/outputFiles/sorted_AnHStranscriptAlignments.bam \
-G ~/makenzie_analysis/Analysis/0_referenceGenome/Zm-B73-REFERENCE-NAM-5.0_Zm00001eb.1.gff3 \
-o ~/makenzie_analysis/Analysis/2_HISAT/outputFiles/AnHSassembledSortedAlignments.gtf \
-A ~/makenzie_analysis/Analysis/2_HISAT/outputFiles/AnHSabundanceEstimations.out \
-e

