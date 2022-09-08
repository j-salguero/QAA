#!/bin/bash
#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --time=01:00:00
#SBATCH --cpus-per-task=8
#SBATCH --nodes=1
#SBATCH --output=rev_htseq-%j.out

conda activate QAA
/usr/bin/time -v htseq-count --stranded=reverse /projects/bgmp/jsalguer/bioinfo/Bi622/QAA/6_alignAligned.out.sam /projects/bgmp/jsalguer/bioinfo/Bi622/QAA/Mus_musculus.GRCm39.107.gtf > /projects/bgmp/jsalguer/bioinfo/Bi622/QAA/htseq/6_rev.txt
/usr/bin/time -v htseq-count --stranded=reverse /projects/bgmp/jsalguer/bioinfo/Bi622/QAA/15_alignAligned.out.sam /projects/bgmp/jsalguer/bioinfo/Bi622/QAA/Mus_musculus.GRCm39.107.gtf > /projects/bgmp/jsalguer/bioinfo/Bi622/QAA/htseq/15_rev.txt