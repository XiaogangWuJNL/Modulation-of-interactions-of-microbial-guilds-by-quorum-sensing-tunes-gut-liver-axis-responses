#!/bin/bash
for i in $(tail -n+2 /mnt/hwdata/Users/wuxg/LC_re/LC_qsub_sh/binning_sh/mkdir_cp_sh/HV_sh/HV_samples.txt | cut -f1); 
do  
cp -r /mnt/hwdata/Users/wuxg/LC_re/binning/bin_refinement/HV/${i}--bin_refinement/metawrap_70_10_bins/. \
/mnt/hwdata/Users/wuxg/LC_re/binning/bin_samples/HV/${i}/
done