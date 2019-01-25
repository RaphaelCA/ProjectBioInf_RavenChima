#! /bin/bash
echo "Description of malaria parasite sequences in file"
grep -c ">" NODUPSEQSPP_MAL.fas

#Start the sequence align and display the unmodified phylogenetic tree.
clustalw -INFILE=NODUPSEQSPP_MAL.fas -TYPE=DNA -OUTFILE=out_ali.phy -OUTPUT=PHYLIP
phyml -i out_ali.phy -d nt -n 1 -m HKY85
nw_display -s -S -v 25 -b 'opacity:0' -i 'font-size:8' out_ali.phy_phyml_tree.txt > all_seq_ali.phy_phyml_tree.svg




