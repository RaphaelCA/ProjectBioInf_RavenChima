#!/usr/bin/env Rscript
#Author Cammenga R. Nwaogu C.
#Purpose: This script prepare data for the descriptive statistics
#This script is similair to the other R merge script however merges the raw unformated data.

HOST_MAL <- read.delim('/home/raven/Documents/Project_MAL/Project_mal_avi/STEP_3/DATA/HOST_MAL.txt',header=T,sep="\t")
SPP_MAL <- read.delim('/home/raven/Documents/Project_MAL/Project_mal_avi/STEP_3/DATA/SPP_MAL.txt',header=T,sep="\t")

HOST_MAL1 <- HOST_MAL[, c(2,4,8,13,14)]
SPP_MAL1 <- SPP_MAL[, c(1,5)]

HOSTSPP_MAL <-merge(HOST_MAL1,SPP_MAL1, by= c("species"))

write.table(HOSTSPP_MAL,'/home/raven/Documents/Project_MAL/Project_mal_avi/STEP_3/RESULTS/HOSTSPP_MAL.txt',row.names=F)
