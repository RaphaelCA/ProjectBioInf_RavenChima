#!/usr/bin/env Rscript

install.packages("ape")

library(ape)

tree <- ape::read.tree("out_ali.phy_phyml_tree.txt")
Phylplot <- plot(tree, show.tip=F, type="fan") 

Phylplot
