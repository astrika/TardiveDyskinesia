


file="/mnt/c/Users/Nereida/Dev/Zhao Lab/ID/Gene_list.txt"

while IFS= read -r gene
do
	        awk -v gene="$gene" {'if(match($5, gene)) print'} miRTarBase_MTI_HS.txt > "$gene"_miRTarBase.txt
	done <"$file"


awk {'if($13=="ARID5B") print'} TDvariants_GWAS20939080.txt | awk {'pirint $1,$4,$5,$13'} > ARID5B_variants.txt
