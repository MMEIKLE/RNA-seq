#!/bin/bash

STAR \
--runThreadN 4 \
--runMode genomeGenerate \
--genomeDir ~/makenzie_analysis/Analysis/2_STAR/refGen \
--genomeFastaFiles ~/makenzie_analysis/Analysis/0_referenceGenome/Zm-B73-REFERENCE-NAM-5.0.fa \
--sjdbGTFfile ~/makenzie_analysis/Analysis/0_referenceGenome/Zm-B73-REFERENCE-NAM-5.0_Zm00001eb.1.gff3 \
--sjdbGTFtagExonParentTranscript Parent \
--sjdbGTFtagExonParentGene Name \
--sjdbOverhang 99 \
--genomeChrBinNbits 10 \
--genomeSAsparseD 2
