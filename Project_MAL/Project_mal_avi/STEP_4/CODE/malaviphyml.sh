#! /bin/bash
echo "Description of malaria parasite sequences in file"
grep -c ">" NODUPSEQSPP_MAL.fas

#Start the sequence align and display the unmodified phylogenetic tree.
clustalw -INFILE=NODUPSEQSPP_MAL.fas -TYPE=DNA -OUTFILE=out_ali.phy -OUTPUT=PHYLIP
phyml -i out_ali.phy -d nt -n 1 -m HKY85
nw_display -s -S -v 25 -b 'opacity:0' -i 'font-size:8' out_ali.phy_phyml_tree.txt > all_seq_ali.phy_phyml_tree.svg

#move all output to RESULTS and remove original data from CODE
#mv all_seq_ali.phy_phyml_tree.svg ~/Documents/Project_MAL/Project_mal_avi/STEP_4/RESULTS
#mv NODUPSEQSPP_MAL.dnd ~/Documents/Project_MAL/Project_mal_avi/STEP_4/RESULTS
#mv out_ali.phy ~/Documents/Project_MAL/Project_mal_avi/STEP_4/RESULTS
#mv out_ali.my_phyml_stats.txt ~/Documents/Project_MAL/Project_mal_avi/STEP_4/RESULTS
#mv out_ali.phy_phyml_tree.txt ~/Documents/Project_MAL/Project_mal_avi/STEP_4/RESULTS
rm NODUPSEQSPP_MAL.fas


