#!/bin/sh
# Astrid M Manuel 11/29/2018
# creates files containg the corresponding variants for each gene
# this script is edited depending on content of variant files for each study

# pertaining to variant files:
# must contain variant id, position, and closest gene to the intergenic variant for matching

# pertaining to files created:
# will contain variant id, chromosome number, and position in 3 respective columns
# will be named by the gene closest to where variants are located


file="/mnt/c/Users/Nereida/Dev/Bioinformatics/SBMI Fall 2018/BMI5330/TD/TardiveDyskinesia/TDgenes_GWAS21826085.txt"

while IFS= read -r gene
do
	        awk -v gene="$gene" {'if(match($6, gene)) print$2,$4,$5'} TDvariants_GWAS21826085.txt > "$gene"_variants.txt
	done <"$file"
