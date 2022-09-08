#!/bin/bash
#SBATCH -A bgmp                ###
#SBATCH --partition=bgmp       ### Partition
#SBATCH --job-name=Demultiplex        ### Job Name
#SBATCH --nodes=1              ### Number of Nodes
#SBATCH --ntasks=1             ### Number of tasks per array job
#SBATCH --mail-type=END              ### Mail events (NONE, BEGIN, END, FA$
#SBATCH --mail-user=jsalguer@uoregon.edu  ### Where to send mail

conda activate bgmp_py310

/usr/bin/time -v ../Demultiplex/Assignment-the-first/Demultiplex_pt1.py -f "/projects/bgmp/shared/2017_sequencing/demultiplexed/15_3C_mbnl_S11_L008_R1_001.fastq.gz" -l 101 -g "15_3C_mbnl_S11_L008 Read1"
/usr/bin/time -v ../Demultiplex/Assignment-the-first/Demultiplex_pt1.py -f "/projects/bgmp/shared/2017_sequencing/demultiplexed/15_3C_mbnl_S11_L008_R2_001.fastq.gz" -l 101 -g "15_3C_mbnl_S11_L008 Read2"
/usr/bin/time -v ../Demultiplex/Assignment-the-first/Demultiplex_pt1.py -f "/projects/bgmp/shared/2017_sequencing/demultiplexed/6_2D_mbnl_S5_L008_R1_001.fastq.gz" -l 101 -g "6_2D_mbnl_S5_L008 Read1"
/usr/bin/time -v ../Demultiplex/Assignment-the-first/Demultiplex_pt1.py -f "/projects/bgmp/shared/2017_sequencing/demultiplexed/6_2D_mbnl_S5_L008_R2_001.fastq.gz" -l 101 -g "6_2D_mbnl_S5_L008 Read2"

