#!/bin/bash
#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --time=01:00:00
#SBATCH --cpus-per-task=8
#SBATCH --nodes=1
#SBATCH --output=STAR-Align-%j.out


read1='/projects/bgmp/jsalguer/bioinfo/Bi622/QAA/trim_6_1P.fq.gz'
read2='/projects/bgmp/jsalguer/bioinfo/Bi622/QAA/trim_6_2P.fq.gz'
genome_directory='/projects/bgmp/jsalguer/bioinfo/Bi621/PS/PS8/Mus_musculus.GRCm39.dna.ens107.STAR_2.7.10a'

conda activate bgmp_py310

/usr/bin/time -v STAR --runThreadN 8 --runMode alignReads \
--outFilterMultimapNmax 3 \
--outSAMunmapped Within KeepPairs \
--alignIntronMax 1000000 --alignMatesGapMax 1000000 \
--readFilesCommand zcat \
--readFilesIn $read1 $read2 \
--genomeDir $genome_directory \
--outFileNamePrefix 6_align

read1_15='/projects/bgmp/jsalguer/bioinfo/Bi622/QAA/trim_15_1P.fq.gz'
read2_15='/projects/bgmp/jsalguer/bioinfo/Bi622/QAA/trim_15_2P.fq.gz'
genome_directory='/projects/bgmp/jsalguer/bioinfo/Bi621/PS/PS8/Mus_musculus.GRCm39.dna.ens107.STAR_2.7.10a'

/usr/bin/time -v STAR --runThreadN 8 --runMode alignReads \
--outFilterMultimapNmax 3 \
--outSAMunmapped Within KeepPairs \
--alignIntronMax 1000000 --alignMatesGapMax 1000000 \
--readFilesCommand zcat \
--readFilesIn $read1_15 $read2_15 \
--genomeDir $genome_directory \
--outFileNamePrefix 15_align