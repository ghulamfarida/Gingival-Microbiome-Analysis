# Environment Setup & Dependencies

This pipeline requires a dedicated **QIIME 2** environment to ensure compatibility between bioinformatics tools and their dependencies.

## 1. Prerequisites
* **Operating System**: Ubuntu 20.04+ (or WSL2 on Windows)
* **Package Manager**: `conda` (Miniconda or Anaconda)

## 2. Environment Installation
Follow these steps to create the necessary bioinformatics environment:

```bash
# 1. Update your package list
sudo apt update && sudo apt upgrade -y

# 2. Download and install Miniconda (if not already installed)
wget [https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh](https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh)
bash Miniconda3-latest-Linux-x86_64.sh

# 3. Create the QIIME 2 environment (using the 2025.10 version)
conda create -n qiime2-amplicon-2025.10 --no-channel-priority

# 4. Activate the environment
conda activate qiime2-amplicon-2025.10
