#! /bin/bash

mkdir -p STEP_4/DATA
mkdir -p STEP_4/RESULTS

ln -s ~/Documents/Project_MAL/Project_mal_avi/STEP_2/RESULTS/*.fas STEP_4/DATA/.

./STEP_4/CODE/Rem_Duplicate.sh
./STEP_4/CODE/malaviphyml.sh
./STEP_4/CODE/Rscript_ggcolour.R
