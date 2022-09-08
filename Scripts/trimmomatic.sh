#!/bin/bash
#SBATCH -A bgmp                ###
#SBATCH --partition=bgmp       ### Partition
#SBATCH --job-name=trim        ### Job Name
#SBATCH --nodes=1              ### Number of Nodes
#SBATCH --ntasks=1             ### Number of tasks per array job
#SBATCH --cpus-per-task=8
#SBATCH --mail-type=END              ### Mail events (NONE, BEGIN, END, FA$
#SBATCH --mail-user=jsalguer@uoregon.edu  ### Where to send mail

conda activate QAA
module load Trimmomatic/0.36-Java-1.8.0_131

/usr/bin/time -v trimmomatic PE \
/projects/bgmp/jsalguer/bioinfo/Bi622/QAA/outputR1_6_2D_mbnl_S5_L008.fastq \
/projects/bgmp/jsalguer/bioinfo/Bi622/QAA/outputR2_6_2D_mbnl_S5_L008.fastq \
-baseout trim_6.fq.gz \
LEADING:3 TRAILING:3 SLIDINGWINDOW:5:15 MINLEN:35;

/usr/bin/time -v trimmomatic PE \
/projects/bgmp/jsalguer/bioinfo/Bi622/QAA/outputR1_15_3C_mbnl_S11_L008.fastq \
/projects/bgmp/jsalguer/bioinfo/Bi622/QAA/outputR2_15_3C_mbnl_S11_L008.fastq \
-baseout trim_15.fq.gz \
LEADING:3 TRAILING:3 SLIDINGWINDOW:5:15 MINLEN:35;

