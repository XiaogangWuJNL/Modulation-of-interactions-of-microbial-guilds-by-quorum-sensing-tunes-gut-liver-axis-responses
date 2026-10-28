#!/bin/bash
for i in $(tail -n+2 /mnt/hwdata/Users/wuxg/LC_re/LC_qsub_sh/binning_sh/prodigal_sh/LCre_1914_bin_name.txt | cut -f1); 
do  
cp -r /mnt/hwdata/Users/wuxg/LC_re/binning/prodigal_results/${i}.gene.faa \
/mnt/hwdata/Users/wuxg/LC_re/binning/drep_faa/${i}.gene.faa
done