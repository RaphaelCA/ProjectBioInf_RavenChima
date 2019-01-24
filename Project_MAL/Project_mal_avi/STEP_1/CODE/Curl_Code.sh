#! /bin/bash

#With this curl we pull the data from MalAvi data which is the parasite sequence and deposit in data repository
curl mbio-serv2.mbioekol.lu.se/tmp/Malavi6625522.xls > SEQ_MAL.txt
#We also want to move it to DATA_REPOSITORY
mv SEQ_MAL.txt ~/Documents/Project_MAL/DATA_REPOSITORY
#With this curl we also pull data but this is the host information.
#This is ordered from sample nr.
curl mbio-serv2.mbioekol.lu.se/tmp/Malavi1175023.xls > HOST_MAL_TEMP
mv HOST_MAL_TEMP ~/Documents/Project_MAL/DATA_REPOSITORY
#This file contains many other species which is extra storage therefore we want to grep turdus
grep Lineage_Name ~/Documents/Project_MAL/DATA_REPOSITORY/HOST_MAL_TEMP > HOST_MAL.txt
grep Turdus ~/Documents/Project_MAL/DATA_REPOSITORY/HOST_MAL_TEMP >> HOST_MAL.txt
mv HOST_MAL.txt ~/Documents/Project_MAL/DATA_REPOSITORY
#Now we want to remove the old file.
rm ~/Documents/Project_MAL/DATA_REPOSITORY/HOST_MAL_TEMP
