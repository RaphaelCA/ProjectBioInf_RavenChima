#! /bin/bash
#Author: Cammenga R. Nwaogu C.
#Purpse: To create a file which gives information about the amount of sequences and length of each sequence

#First get the document
cp ~/Documents/Project_MAL/Project_mal_avi/STEP_2/RESULTS/HOSTSEQSPP_MAL1.fas ./

#Then get the total of sequences and nucleotides
echo "The total number of sequences are:"
grep -c ">" HOSTSEQSPP_MAL1.fas
echo "The total number of nucleotides are:"
grep -v ">" HOSTSEQSPP_MAL1.fas | wc | awk '{print $3-$1}' 

#Then calculate each nucleotide in each sequence with the following bash command;
while read line; do echo $line | grep -v '>' | grep -o "[ACGTN]" | sort | uniq -c | paste - - - - - | awk '{print $1+$3+$5+$7+$9}' ; done < HOSTSEQSPP_MAL1.fas > SEQ_LENGTH.txt 

#lets move the file and remove the old.
mv SEQ_LENGTH.txt ~/Documents/Project_MAL/Project_mal_avi/STEP_2/RESULTS/
rm HOSTSEQSPP_MAL1.fas

