#!/bin/bash
# 04_diversity.sh: Phylogeny and diversity analysis

# Tree construction
qiime phylogeny align-to-tree-mafft-fasttree \
  --i-sequences rep-seqs-gingiva.qza \
  --o-alignment aligned-rep-seqs.qza \
  --o-masked-alignment masked-aligned-rep-seqs.qza \
  --o-tree unrooted-tree.qza \
  --o-rooted-tree rooted-tree.qza

# Core diversity metrics
qiime diversity core-metrics-phylogenetic \
  --i-phylogeny rooted-tree.qza \
  --i-table table-gingiva.qza \
  --p-sampling-depth 3375 \
  --m-metadata-file cleaned_metadata.tsv \
  --output-dir core-metrics-results