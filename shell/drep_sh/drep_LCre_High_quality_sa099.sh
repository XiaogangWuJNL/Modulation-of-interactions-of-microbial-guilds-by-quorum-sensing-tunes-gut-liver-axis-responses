#!/bin/bash
path_1='/mnt/hwdata/Users/wuxg/LC_re/binning/High_quality_bin'
path_2='/mnt/hwdata/Users/wuxg/LC_re/binning/sa_099/drep_high_quality_sa_099_results'
export TMPDIR=/mnt/hwdata/Users/wuxg/tmp
mamba run -n drep \
dRep dereplicate ${path_2} -g ${path_1}/*.fa -p 80 -sa 0.99 --ignoreGenomeQuality 
