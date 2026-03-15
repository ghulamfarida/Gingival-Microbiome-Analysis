#!/bin/bash
# 02_denoise.sh: Quality control and ASV generation using DADA2

# Summarize quality
qiime demux summarize \
  --i-data demux_gingiva.qza \
  --o-visualization demux_gingiva.qzv

# Denoising
qiime dada2 denoise-single \
  --i-demultiplexed-seqs demux_gingiva.qza \
  --p-trim-left 0 \
  --p-trunc-len 150 \
  --o-representative-sequences rep-seqs-gingiva.qza \
  --o-table table-gingiva.qza \
  --o-denoising-stats stats-dada2-gingiva.qza