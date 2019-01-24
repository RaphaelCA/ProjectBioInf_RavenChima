#!/usr/bin/env Rscript
#Define Host_Mal and SEQ_MAL
HOST_MAL <-read.delim('/home/raven/Documents/Project_MAL/Project_mal_avi/STEP_2/DATA/HOST_MAL.txt',header=T, sep="\t")
SEQ_MAL <-read.delim('/home/raven/Documents/Project_MAL/Project_mal_avi/STEP_2/DATA/SEQ_MAL.txt',header=T, sep="\t")
SPP_MAL <-read.delim('/home/raven/Documents/Project_MAL/Project_mal_avi/STEP_2/DATA/SPP_MAL.txt',header=T, sep="\t")

#Take colums that we need
HOST_MAL1 <- HOST_MAL[, c(2,4,8,13,14)]
SEQ_MAL1 <- SEQ_MAL[, c(2,25)]
SPP_MAL1 <- SPP_MAL[, c(1,5)]
 
#Merge by common collum
HOSTSEQ_MAL <-merge(HOST_MAL1,SEQ_MAL1, by= c("Lineage_Name"))
HOSTSEQSPP_MAL <-merge(HOSTSEQ_MAL,SPP_MAL1, by= c("species"))


#generate output .txt
write.table(HOSTSEQ_MAL,'/home/raven/Documents/Project_MAL/Project_mal_avi/STEP_2/RESULTS/HOSTSEQ_MAL.txt',row.names=F)
write.table(HOSTSEQSPP_MAL,'/home/raven/Documents/Project_MAL/Project_mal_avi/STEP_2/RESULTS/HOSTSEQSPP_MAL.txt',row.names=F)
