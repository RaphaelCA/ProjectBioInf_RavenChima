#!/usr/bin/env Rscript

#This script estimates the number of samples per malaria parasite genus per Turdus species,
#the number of unique malaria parasite lineages per malaria parasite genus per Turdus species,
#and the diversity of parasite lineages per Turdus species 


HOSTSPP_MAL <- read.delim("/home/raven/Documents/Project_MAL/Project_mal_avi/STEP_3/RESULTS/HOSTSPP_MAL.txt",header=T,sep=" ")
head(HOSTSPP_MAL)
SPP_MAL <- read.delim('/home/raven/Documents/Project_MAL/Project_mal_avi/STEP_3/DATA/SPP_MAL.txt',header=T,sep="\t")
SPP_MAL1 <- SPP_MAL[, c(1,5)]

##this set of codes totals number of samples per malaria parasite genus per Turdus species 

N_lin <- as.data.frame.table(tapply(HOSTSPP_MAL$Lineage_Name, list(HOSTSPP_MAL$parasiteGenus,HOSTSPP_MAL$species), function(x) length(x)))

names(N_lin) <- c('parasiteGenus','species', 'nlin')

N_lin$nlin[is.na(N_lin$nlin)] <- 0 #assigns zero to na
N_lin


RPlots1 <- boxplot(N_lin$nlin ~ N_lin$parasiteGenus, ylab= 'Number of samples per parasite genus per Turdus species', xlab='Parasite genus', col='grey')


########totaling number of unique parasite lineages per Turdus species

N_spp <- as.data.frame.table(tapply(HOSTSPP_MAL$Lineage_Name, list(HOSTSPP_MAL$parasiteGenus,HOSTSPP_MAL$species), function(x) length(unique(x))))
names(N_spp) <- c('parasiteGenus','species','uniquelineages')

#N_spp$unquelineages[is.na(N_spp$unquelineages)] <- 0 #assigns zero to na

N_spphost <-merge(N_spp,SPP_MAL1, by= c("species"))
head(N_spphost)


RPlots2 <- boxplot(N_spphost$uniquelineages ~ N_spphost$Migratory_Status, ylab= 'Number of unique parasite lineages per species per migratory status', xlab='Miratory status', col='grey')
RPlots3 <- boxplot(N_spphost$uniquelineages ~ N_spphost$parasiteGenus, ylab= 'Number of unique parasite lineages per parasite genus per species', xlab='Parasite genus', col='grey')


########totaling number of unique parasite lineages per malaria parasite genus per continent

N_continent <- as.data.frame.table(tapply(HOSTSPP_MAL$Lineage_Name, list(HOSTSPP_MAL$parasiteGenus,HOSTSPP_MAL$continent), function(x) length(unique(x))))
names(N_continent) <- c('parasiteGenus','continent','uniquelineages')


RPlots4 <- boxplot(N_continent$uniquelineages ~ N_continent$continent, ylab= 'Number of unique parasite lineages per parasite genus per continent', xlab='Continent', col='grey')

head(N_continent)

