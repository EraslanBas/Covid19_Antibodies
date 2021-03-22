dataDir="./DATA/"

samples <- read.csv(paste0(dataDir, "Samples.csv"), stringsAsFactors = F)
samples <- samples[samples$use == 1,]
rdsysM <- list(progenitorBcell=c("CD34", "CD117", "CD127", "CD10", "Pax5", "BSAP", "Sca-1", "Ly6"),
               preBcell=c("B220", "CD45R", "CD93", "CD19", "CD24", "CD34", "CD38", "CD43", "CD117", "CXCR4", "CD127", "CD10", "Pax5", "BSAP"),
               immatureBcell=c("B220", "CD45R","CD93", "CD19", "CD21", "CD23", "CD24", "CD27", "CD38", "CD40", "CD43", "CD117", "CD20", "CD127", "CD10"),
               transitionalBCell=c("CD93","CD5","CD19","CD21","CD23","CD24","CD27","CD38","CD10","TACI"),
               marginalZoneBCell=c("B220", "CD45R","CD93","BDCA-1","CD1d","CD19","CD21","CD23","CD27","CD43","CD20","FCRL3","TACI","TNFRSF13B"),
               follicularBCell=c("B220","CD45R", "CD1d","CD19","CD21","CD23","CD24","CD27","TNFRSF7","CD38","CD43","CD20","CXCR5","CD10","Cd22","TACI", "TNFRSF13B"),
               activatedGerminalCenterBCell=c("B220", "CD45R", "CD19", "CD27", "TNFRSF7","CD38","CD40","TNFRSF5","CD83","CD20", "TACI", "TNFRSF13B"),
               memoryBCell=c("B220","CD45R","CD93","CD19","CD21","CD27","TNFRSF7","CD40","TNFRSF5","CD20", "TACI", "TNFRSF13B", "CD40"),
               plasmablast=c("B220","CD45R","BCMA","TNFRSF17","CD93","CD19","CD27","TNFRSF7","CD38","CD138"),
               plasmaCell=c("B220","CD45R","BCMA","TNFRSF17","BLIMP1","PRDM1","CD19","CD27","TNFRSF7","CD38","CD20","CXCR4","CD138"),
               regulatoryBCell=c("B220","CD45R","B7-1","CD80","B7-2","CD86","BLIMP1","PRDM1","CD1d","CD5","CD11b","CD19","CD21","CD23","CD24","CD27","TNFRSF7",
                                 "CD38","CD40","TNFRSF5","CD44","CD69","CD72","CD20","CD25","CXCR4","CD148","EBI3","CD147","IL-10","IL-21","IRF4","STAT1",
                                 "STAT3","CD138", "TACI","TNFRSF13B", "TLR4"))

IG_genes <- read.csv(paste0(dataDir,"/GeneSets/IG_Genes.txt"), sep = '\t', stringsAsFactors = F)
IgGenes <- c(as.character(IG_genes$Gene.name),"IGHV2-70.1","CH17-262H11.1", "AC233755.1","CH17-212P11.4", "AC233755.2", "CH17-224D4.1", "CH17-224D4.2", "IGHV2-70.1")