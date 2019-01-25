#!/usr/bin/env Rscript

#rm(list = ls()) #clears the memory of the prompt

#install.packages("ape")
#install.packages("seqinr")
#install.packages("stringr")
#install.packages("leaflet")

library(ape)
library(seqinr)
library(stringr)
library(leaflet)

the_fasta<-read.fasta("NODUPSEQSPP_MAL.fas",seqonly = FALSE)

parasite_names<-NULL
for(i in 1:length(the_fasta)){
  one<-getName(the_fasta)[i]
  
  start_in<-gregexpr("_T",one)[[1]][1]
  parasite_names <- c(parasite_names,str_sub(one, end = nchar(one),start =start_in))
}


my_colors<-c("blue","red","black","green","yellow","orange","gray","pink","purple","navy",
             "seashell","brown","tan","slateblue4","slategray","sienna","thistle","tomato","turquoise4","violet",
             "plum","pink4","orchid","salmon4","red4","orchid4","orange4","khaki4","darkorange","yellow4","tomato4")

the_unique_parasite<-unique(parasite_names)

for(i in 1:length(the_unique_parasite)){
  parasite_names[which(the_unique_parasite[i]==parasite_names)]<-my_colors[i]
}

tree <- ape::read.tree("out_ali.phy_phyml_tree.txt")
#tree$tip.label

plot.phylo(tree, show.tip=F, type="unrooted",use.edge.length = T) 
tiplabels(pch = 20, col = parasite_names, adj = .52, cex = 1.5)

plot.phylo(tree,show.tip.label = FALSE,type = "fan",use.edge.length = T)
tiplabels(pch = 20, col = parasite_names, adj = .52, cex = 1.5)


plot(tree, no.margin = F,show.tip.label = F,label.offset = .1,use.edge.length = FALSE,type = "unrooted")
tiplabels(pch = 20, col = parasite_names, adj = .52, cex = 1.5)


plot(tree, no.margin = TRUE,show.tip.label = F,label.offset = .1,use.edge.length = FALSE,type = "phylogram")
tiplabels(pch = 20, col = parasite_names, adj = .52, cex = 1.5)
