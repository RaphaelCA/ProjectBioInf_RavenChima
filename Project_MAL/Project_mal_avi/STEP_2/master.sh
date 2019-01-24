#! /bin/bash

#Create new directories which were cleaned from the clean command.
mkdir -p STEP_2/DATA
mkdir -p STEP_2/RESULTS
#pull the data from repository to data file and put it into data.
ln -s ~/Documents/Project_MAL/DATA_REPOSITORY/*.txt STEP_2/DATA/.

#cp DATA/*txt RESULTS/.

./STEP_2/CODE/Rscript_Merge.R
./STEP_2/CODE/prep_mal.sh


