#! /bin/bash

#script to convert data into a file that is ready for sequence alignment and phylogenetic analysis.
cp ~/Documents/Project_MAL/Project_mal_avi/STEP_2/RESULTS/HOSTSEQSPP_MAL.txt ./

# We want to grep everything except the header
grep -v "species" HOSTSEQSPP_MAL.txt > HOSTSEQSPP_MAL1.fas 
# Remove the old file
rm HOSTSEQSPP_MAL.txt
#Apply the regular expression (Note that spaces were favored but if this is not wanted the regular expresion should be changed accordingly for us it worked in our phylogeny.
perl -p -i -e 's/(\-)/ /g' HOSTSEQSPP_MAL1.fas
perl -p -i -e 's/(\,)//g' HOSTSEQSPP_MAL1.fas
perl -p -i -e 's/.(\w)\w+\s(\w+).\s.(\w+).\s.(\w{3})\w+.\s.[\w+\s\w+]*.\s.[\w+\ã\é\í\s\w+]*.\s.([\s+AGTCN]+)*.+/>\3_\4_\1.\2\n\5/g' HOSTSEQSPP_MAL1.fas
#move the fil to results.
mv HOSTSEQSPP_MAL1.fas ~/Documents/Project_MAL/Project_mal_avi/STEP_2/RESULTS
