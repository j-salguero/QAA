#!/bin/bash
#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --time=01:00:00
#SBATCH --cpus-per-task=8
#SBATCH --output=STAR-Database-%j.out

conda activate bgmp_py310

#unzip the files, doesnt take zipped files

/usr/bin/time -v STAR \
--runThreadN 8 \
--runMode genomeGenerate \
--genomeDir /projects/bgmp/jsalguer/bioinfo/Bi621/PS/PS8/Mus_musculus.GRCm39.dna.ens107.STAR_2.7.10a \
--genomeFastaFiles /projects/bgmp/jsalguer/bioinfo/Bi622/QAA/Mus_musculus.GRCm39.dna.primary_assembly.fa \
--sjdbGTFfile /projects/bgmp/jsalguer/bioinfo/Bi622/QAA/Mus_musculus.GRCm39.107.gtf