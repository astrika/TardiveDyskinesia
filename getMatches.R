#Astrid M Manuel 12/03/2018
#Get matches for variants located within specified ENCODE regulatory regions
#Contains three nested for loops, O(n)=n^3

#Specify study
study <- "2018GWAS"

#Reads a list of genes from study. Specify path to file with gene list.
genefile <- read.table(paste("c:\\Users\\Nereida\\Dev\\Bioinformatics\\SBMI Fall 2018\\BMI5330\\TD\\TardiveDyskinesia\\TDgenes_",study, ".txt",sep=""))
genes <- genefile[,1]

#Loops through list of genes
for(gene in genes){
  
  #Reads list of assocatiated variants. Specify path to variants file.
  variantsfile <- read.table(paste("c:\\Users\\Nereida\\Dev\\Bioinformatics\\SBMI Fall 2018\\BMI5330\\TD\\TardiveDyskinesia\\AssociatedVariants\\",gene,"_variants.txt", sep=""))
  variants <- variantsfile[,3]
  
  #Reads list of regulatory regions. Specify path to SCREEN by ENCODE bed files.
  regRegions <- read.table(paste("c:\\Users\\Nereida\\Dev\\Bioinformatics\\SBMI Fall 2018\\BMI5330\\TD\\TardiveDyskinesia\\SCREENbyENCODEdata\\",gene,"_bed.txt", sep=""))
  colnames(regRegions) <- c("CHR", "START", "END", "ID", "Z")
  
  #Loops through regulatory regions
  for(i in seq(1,nrow(regRegions))){
    
    #assigns a sequence to each regulatory region, based of start and end positions of each regRegion
    start <- regRegions[i,2]
    end <- regRegions[i,3]
    regioni <- seq(start,end)
    
    #Loops through variants respective to each gene
    for(variant in variants){
      
      #Matches any variants contained within region, and prints gene name, variant position, and regulatory region
      if(variant %in% regioni){
        message(paste("Pertaining to gene:", gene))
        message(paste("Variant with position",variant,"is found within the following regulatory region:"))
        print(regRegions[i,])
      }
      
    }
    
  }
  
}
