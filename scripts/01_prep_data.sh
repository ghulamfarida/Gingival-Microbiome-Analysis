#!/bin/bash
# 01_prep_data.sh: Extract raw reads and prepare manifest for QIIME 2

# 1. Extraction
cat gingiva_accessions.txt | xargs -I {} fasterq-dump --split-files {}

# 2. Manifest Creation
printf "sample-id\tabsolute-filepath\n" > gingiva_manifest.tsv
for file in $(pwd)/raw_gingiva/*_1.fastq*; do
    sample=$(basename "$file" | cut -d'_' -f1)
    printf "$sample\t$file\n" >> gingiva_manifest.tsv
done

# 3. Import
qiime tools import \
  --type 'SampleData[SequencesWithQuality]' \
  --input-path gingiva_manifest.tsv \
  --output-path demux_gingiva.qza \
  --input-format SingleEndFastqManifestPhred33V2