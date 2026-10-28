#!/bin/bash
for i in $(tail -n+2 /mnt/hwdata/Users/wuxg/LC_re/LC_qsub_sh/binning_sh/mkdir_cp_sh/LV_sh/LV_samples.txt | cut -f1); 
do  
mkdir /mnt/hwdata/Users/wuxg/LC_re/binning/bin_samples/LV/${i}/
done