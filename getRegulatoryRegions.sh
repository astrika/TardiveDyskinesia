variantFile= "/mnt/c/Users/Nereida/Dev/Bioinformatics/SBMI Fall 2018/BMI5330/TD/TardiveDyskinesia/"
geneFile="/mnt/c/Users/Nereida/Dev/Bioinformatics/SBMI Fall 2018/BMI5330/TD/TardiveDyskinesia/TDgenes_GWAS21826085.txt"

while IFS= read -r gene
	do
	while IFS= read -r variant
		do
			position= awk {'print $3'}	
        	        awk -v variant="$variant" {'if(match($6, gene)) print$2,$4,$5'} TDvariants_GWAS21826085.txt > "$variant"_RR.txt
        	done <"$variantfile"
	done<"$geneFile"


awk {'if($2 >= 76360371 && $3 <= 76360371) print'} ANXA1_bed.txt
