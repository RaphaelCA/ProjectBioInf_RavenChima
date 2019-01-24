#! /bin/bash
#Author: Cammenga R. Nwaogu C.
#purpose: clean the directories.
#for each directory go into each folder mentioned
#and remove everything
for d in STEP_1 STEP_2 STEP_3 STEP_4; do
	cd $d
	for i in DATA RESULTS; do
		rm -rf $i
	done
	cd ../
done
