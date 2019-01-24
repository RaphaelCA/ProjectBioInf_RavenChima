# ProjectBioInf_RavenChima


Program to use data from online data Mal Avi and create phylogenetic trees + some descriptives, read the README for important instructions. 
# Project_Mal_AvI

##Authors: Cammenga R. Nwaogu C.

###Purpose: Create a project that extract malaria parasite sequence lineage and host information from MalAvi database and construct phylogenetic trees and vs distribution descriptives *

### TO RUN THE PROGRAM use clean.sh and then command the master.sh writen inside folder Project_mal_avi

## Here the individual steps are described. 
### STEP 1
Extract the Data from the MalAvi Database :thumbsup:
Link 1 #(parasite lineage) 
mbio-serv2.mbioekol.lu.se/tmp/Malavi6625522.xls
Link 2 #(Host information) 
mbio-serv2.mbioekol.lu.se/tmp/Malavi929681.xls

##IMPORTANT
Note that the file SPP_MAL.txt is not pulled from the website using the curl command.
This is due our own definition of the species distribution given by us based on a check of the species and the given data. This is done because much fields in the online data were missing. This file is manually made and can be a point of discussion for future use!
These files are used for the descriptive statistics.

###STEP 2
Reformat the data for better use and combine both data, first the HOST file is reformated to a fasta file With this all the right sequences from SEQ_MAL.txt are taken. This data is for the phylogeny trees. :thumbsup:

### STEP 3
Here we generate the descriptive’s with graphs which gives insight in the data :thumbsup:

### STEP 4
This step generates the phylogenetic tree’s output can be found in STEP_4 RESULTS

#######IMPORTANT2  Note that we had some issues with the program “ggtree” this might have to do because we work in Ubuntu. Therefore the Phylogenetic trees are very very difficult to interpret. For analysis purposes this program need to be applied to the trees.


Clone me: 
```
git clone https://github.com/RaphaelCA/ProjectBioInf_RavenChima
```

![rug](https://www.rug.nl/_definition/shared/images/logo--en.png)

[Visit me](https://github.com/RaphaelCA)
