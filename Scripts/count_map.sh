#!/bin/bash
#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --time=01:00:00
#SBATCH --cpus-per-task=8
#SBATCH --nodes=1
#SBATCH --output=count_map-%j.out

#sample 6 alignment
/usr/bin/time -v ../../Bi621/PS/PS8/ps8-j-salguero/Mapped.py -f "/projects/bgmp/jsalguer/bioinfo/Bi622/QAA/6_alignAligned.out.sam"

#sample 15 alignment
/usr/bin/time -v ../../Bi621/PS/PS8/ps8-j-salguero/Mapped.py -f "/projects/bgmp/jsalguer/bioinfo/Bi622/QAA/15_alignAligned.out.sam"