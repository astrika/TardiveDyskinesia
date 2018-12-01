
study <- "GWAS20939080"
genefile <- read.table(paste("c:\\Users\\Nereida\\Dev\\Bioinformatics\\SBMI Fall 2018\\BMI5330\\TD\\TardiveDyskinesia\\TDgenes_",study, ".txt",sep=""))
genes <- genefile[,1]

for(gene in genes){
  
  variantsfile <- read.table(paste("c:\\Users\\Nereida\\Dev\\Bioinformatics\\SBMI Fall 2018\\BMI5330\\TD\\TardiveDyskinesia\\",gene,"_variants.txt", sep=""))
  variants <- variantsfile[,3]
  
  regRegions <- read.table(paste("c:\\Users\\Nereida\\Dev\\Bioinformatics\\SBMI Fall 2018\\BMI5330\\TD\\TardiveDyskinesia\\",gene,"_bed.txt", sep=""))
  colnames(regRegions) <- c("CHR", "START", "END", "ID", "Z")
  
  for(i in seq(1,nrow(regRegions))){
    start <- regRegions[i,2]
    end <- regRegions[i,3]
    regioni <- seq(start,end)
    
    for(variant in variants){
      if(variant %in% regioni){
        message(paste("Pertaining to gene:", gene))
        message(paste("Variant with position",variant,"is found within the following regulatory region:"))
        print(regRegions[i,])
      }
    }
    
  }
  
}
