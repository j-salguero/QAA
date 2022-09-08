#!/bin/bash
#SBATCH -A bgmp                ###
#SBATCH --partition=bgmp       ### Partition
#SBATCH --job-name=cutadapt        ### Job Name
#SBATCH --nodes=1              ### Number of Nodes
#SBATCH --ntasks=1             ### Number of tasks per array job
#SBATCH --cpus-per-task=8
#SBATCH --mail-type=END              ### Mail events (NONE, BEGIN, END, FA$
#SBATCH --mail-user=jsalguer@uoregon.edu  ### Where to send mail
conda activate QAA
/usr/bin/time -v cutadapt -a AGATCGGAAGAGCACACGTCTGAACTCCAGTCA -A AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT \
-o outputR1_15_3C_mbnl_S11_L008.fastq -p outputR2_15_3C_mbnl_S11_L008.fastq \
/projects/bgmp/shared/2017_sequencing/demultiplexed/15_3C_mbnl_S11_L008_R1_001.fastq.gz \
/projects/bgmp/shared/2017_sequencing/demultiplexed/15_3C_mbnl_S11_L008_R2_001.fastq.gz

/usr/bin/time -v cutadapt -a AGATCGGAAGAGCACACGTCTGAACTCCAGTCA -A AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT \
-o outputR1_6_2D_mbnl_S5_L008.fastq -p outputR2_6_2D_mbnl_S5_L008.fastq \
/projects/bgmp/shared/2017_sequencing/demultiplexed/6_2D_mbnl_S5_L008_R1_001.fastq.gz \
/projects/bgmp/shared/2017_sequencing/demultiplexed/6_2D_mbnl_S5_L008_R2_001.fastq.gz