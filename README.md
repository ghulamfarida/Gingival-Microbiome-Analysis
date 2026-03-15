# Gingival-Microbiome-Analysis

## Project Overview
This pipeline performs comprehensive 16S rRNA gene amplicon analysis to investigate microbial community shifts in the gingival microbiome. The study focuses on identifying biomarkers associated with Inflammatory Bowel Disease (IBD).

## Pipeline Workflow
The analysis is automated using **QIIME 2** within a Linux/WSL environment. The workflow is divided into four modular stages:

1. **Data Preparation**: Extraction of raw reads and generation of a manifest file for sample tracking.
2. **Denoising**: Quality control and generation of Amplicon Sequence Variants (ASVs) using DADA2.
3. **Taxonomic Classification**: Feature classification using the SILVA 138-99 database.
4. **Diversity Analysis**: Phylogenetic reconstruction and calculation of alpha/beta diversity metrics.



## Prerequisites
* **Environment**: Ubuntu/WSL with QIIME 2 (e.g., `qiime2-amplicon-2025.10`)
* **Dependencies**: `pandas`, `openpyxl`

## Execution
Run the scripts in the `scripts/` directory in numerical order:
```bash
bash scripts/01_prep_data.sh
bash scripts/02_denoise.sh
bash scripts/03_classify.sh
bash scripts/04_diversity.sh
