#!/bin/bash
# 03_classify.sh: Assign taxonomy and generate interactive plots

# Taxonomy classification
qiime feature-classifier classify-sklearn \
  --i-classifier silva-138-99-nb-classifier.qza \
  --i-reads rep-seqs-gingiva.qza \
  --o-classification taxonomy-gingiva.qza

# Create barplots
qiime taxa barplot \
  --i-table table-gingiva.qza \
  --i-taxonomy taxonomy-gingiva.qza \
  --m-metadata-file cleaned_metadata.tsv \
  --o-visualization taxa-bar-plots-gingiva.qzv