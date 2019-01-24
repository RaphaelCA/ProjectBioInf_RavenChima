#! /usr/bin/env python
import os
import time
import sys

#Here we create the loop to delete duplicate sequence title and sequences
from collections import OrderedDict
dct = OrderedDict()
with open(sys.argv[1]) as f:
    for line in f:
        if line == "" or line == "\n": continue
        if line.startswith(">"):
            key = line
        else:
            dct[key] = line

out_file = open(sys.argv[2],"w")
for k in dct.keys():
    out_file.write("%s%s" %(k,dct[k]))
out_file.close()
