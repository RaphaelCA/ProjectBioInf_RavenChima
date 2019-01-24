#! /bin/bash

#Create new directories which were cleaned from the clean command.
mkdir -p STEP_3/DATA
mkdir -p STEP_3/RESULTS
#pull the data from repository to data file and put it into data.
ln -s ~/Documents/Project_MAL/DATA_REPOSITORY/*.txt STEP_3/DATA/.

#cp DATA/*txt RESULTS/.

./STEP_3/CODE/Rscript_Merge1.R
./STEP_3/CODE/Rscript_desc.R


