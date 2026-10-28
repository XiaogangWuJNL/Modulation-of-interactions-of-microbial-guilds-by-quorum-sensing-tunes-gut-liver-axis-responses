#!/bin/bash
for i in $(tail -n+2 /mnt/hwdata/Users/wuxg/LC_re/LC_qsub_sh/binning_sh/checkm_sh/LCre_high_quality_bin_name.txt | cut -f1); 
do  
cp -r /mnt/hwdata/Users/wuxg/LC_re/binning/total_bin/${i}.fa \
/mnt/hwdata/Users/wuxg/LC_re/binning/High_quality_bin/${i}.fa
done