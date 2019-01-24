#! /bin/bash

#Author: Cammenga R. Nwaogu C.
#purpose: Run the dupplicate_remover.py on our data to remove duplicate /
# sequences for sequence align and phyl. 
 
#We copy the data here
cp ~/Documents/Project_MAL/Project_mal_avi/STEP_4/DATA/HOSTSEQSPP_MAL1.fas ./
#Run the duplicate py program 
./STEP_4/CODE/duplicate_remover.py HOSTSEQSPP_MAL1.fas NODUPSEQSPP_MAL.fas
#remove the data file and send the result to RESULTS.
rm HOSTSEQSPP_MAL1.fas


