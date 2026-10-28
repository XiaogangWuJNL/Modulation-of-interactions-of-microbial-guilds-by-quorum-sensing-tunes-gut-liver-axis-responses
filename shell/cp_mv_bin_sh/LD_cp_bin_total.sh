#!/bin/bash
for i in $(tail -n+2 /mnt/hwdata/Users/wuxg/LC_re/LC_qsub_sh/binning_sh/mkdir_cp_sh/LD_sh/LD_samples.txt | cut -f1); 
do  
cp -r /mnt/hwdata/Users/wuxg/LC_re/binning/bin_samples/LD/${i}/. \
/mnt/hwdata/Users/wuxg/LC_re/binning/total_bin/
done