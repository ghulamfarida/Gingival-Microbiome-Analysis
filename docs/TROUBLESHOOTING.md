# Troubleshooting & Technical Log

This document tracks technical challenges encountered during the development of the Gingival Microbiome Analysis pipeline and their corresponding solutions.

### 1. Taxonomy Classifier Compatibility
* **Issue**: Encountered warnings related to `pkg_resources` deprecation when using the SILVA 138-99 classifier.
* **Diagnosis**: The classifier was potentially mismatched or needed updated dependency environments to function correctly within the `qiime2-amplicon-2025.10` environment.
* **Resolution**: Verified environment compatibility. Ensured the classifier file (`silva-138-99-nb-classifier.qza`) was correctly imported and compatible with the installed version of QIIME 2.

### 2. DADA2 Parameter Optimization
* **Issue**: Missing `--o-base-transition-stats` output in the initial DADA2 command.
* **Diagnosis**: The command was incomplete as the DADA2 plugin requires explicit declaration of all output artifacts.
* **Resolution**: Updated the command to include the `--o-base-transition-stats` flag to ensure complete denoising statistics were generated.

### 3. Alpha Diversity Sampling Depth
* **Issue**: Error when setting `--p-sampling-depth`.
* **Diagnosis**: The parameter was left as a placeholder `[CHOOSE_A_NUMBER]` in the command line, which caused an argument type mismatch.
* **Resolution**: Analyzed the distribution of read counts per sample to determine an appropriate rarefaction depth (3375), ensuring maximum sample retention while maintaining normalization.

### 4. File System Navigation (WSL/Windows)
* **Issue**: `cp` command failed to copy files due to directory path syntax.
* **Diagnosis**: Attempted to use relative paths like `d/` which were not recognized as valid target directories.
* **Resolution**: Used explicit absolute paths (e.g., `/mnt/d/IBD_northamerica/gingiva/`) to ensure reliable file transfer between the WSL filesystem and the Windows host.