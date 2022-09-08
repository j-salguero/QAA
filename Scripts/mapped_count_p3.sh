#!/bin/bash
#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --time=01:00:00
#SBATCH --cpus-per-task=8
#SBATCH --nodes=1
#SBATCH --output=rev_htseq-%j.out

echo 'Sample 6 Mapped'
cat /projects/bgmp/jsalguer/bioinfo/Bi622/QAA/htseq/6_rev.txt | awk '$1~"ENS" {feature_sum+=$2} END {print feature_sum}'
cat /projects/bgmp/jsalguer/bioinfo/Bi622/QAA/htseq/6_stranded.txt | awk '$1~"ENS" {feature_sum+=$2} END {print feature_sum}'
echo 'Sample 15 Mapped'
cat /projects/bgmp/jsalguer/bioinfo/Bi622/QAA/htseq/15_rev.txt | awk '$1~"ENS" {feature_sum+=$2} END {print feature_sum}'
cat /projects/bgmp/jsalguer/bioinfo/Bi622/QAA/htseq/15_stranded.txt | awk '$1~"ENS" {feature_sum+=$2} END {print feature_sum}'
echo 'Sample 6 Total'
cat /projects/bgmp/jsalguer/bioinfo/Bi622/QAA/htseq/6_rev.txt | awk '$1~"ENS" {feature_sum+=$2} $1~"__" {noMatch_sum+=$2} END {print feature_sum + noMatch_sum}'
cat /projects/bgmp/jsalguer/bioinfo/Bi622/QAA/htseq/6_stranded.txt | awk '$1~"ENS" {feature_sum+=$2} $1~"__" {noMatch_sum+=$2} END {print feature_sum + noMatch_sum}'
echo 'Sample 15 Total'
cat /projects/bgmp/jsalguer/bioinfo/Bi622/QAA/htseq/15_rev.txt | awk '$1~"ENS" {feature_sum+=$2} $1~"__" {noMatch_sum+=$2} END {print feature_sum + noMatch_sum}'
cat /projects/bgmp/jsalguer/bioinfo/Bi622/QAA/htseq/15_stranded.txt | awk '$1~"ENS" {feature_sum+=$2} $1~"__" {noMatch_sum+=$2} END {print feature_sum + noMatch_sum}'


