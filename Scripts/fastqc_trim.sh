#!/bin/bash
#SBATCH -A bgmp                ###
#SBATCH --partition=bgmp       ### Partition
#SBATCH --job-name=fastqc        ### Job Name
#SBATCH --nodes=1              ### Number of Nodes
#SBATCH --ntasks=1             ### Number of tasks per array job
#SBATCH --cpus-per-task=8
#SBATCH --mail-type=END              ### Mail events (NONE, BEGIN, END, FA$
#SBATCH --mail-user=jsalguer@uoregon.edu  ### Where to send mail
conda activate QAA
/usr/bin/time -v fastqc -o fastqc_trim --noextract /projects/bgmp/jsalguer/bioinfo/Bi622/QAA/trim_15_1P.fq.gz \
/projects/bgmp/jsalguer/bioinfo/Bi622/QAA/trim_15_2P.fq.gz \
/projects/bgmp/jsalguer/bioinfo/Bi622/QAA/trim_6_1P.fq.gz \
/projects/bgmp/jsalguer/bioinfo/Bi622/QAA/trim_6_2P.fq.gz