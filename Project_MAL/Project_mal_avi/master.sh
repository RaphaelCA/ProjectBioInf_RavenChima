#! /bin/bash
#!Author: Cammenga R. Nwaogu C.
#purpose: Runs all masters scripts from step 1 to 4 in order.

./STEP_1/master.sh
./STEP_2/master.sh
./STEP_3/master.sh
mv Rplots.pdf ./STEP_3/RESULTS
./STEP_4/master.sh

mv *.pdf ./STEP_4/RESULTS

mv all_seq_ali.phy_phyml_tree.svg ~/Documents/Project_MAL/Project_mal_avi/STEP_4/RESULTS
mv NODUPSEQSPP_MAL.dnd ~/Documents/Project_MAL/Project_mal_avi/STEP_4/RESULTS
mv out_ali.phy ~/Documents/Project_MAL/Project_mal_avi/STEP_4/RESULTS
mv out_ali.phy_phyml_stats.txt ~/Documents/Project_MAL/Project_mal_avi/STEP_4/RESULTS
mv out_ali.phy_phyml_tree.txt ~/Documents/Project_MAL/Project_mal_avi/STEP_4/RESULTS


