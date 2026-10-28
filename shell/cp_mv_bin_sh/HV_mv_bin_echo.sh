#!/bin/bash
for i in $(tail -n+2 /mnt/hwdata/Users/wuxg/LC_re/LC_qsub_sh/binning_sh/mv_bin_name_sh/HV_sh/HV_samples.txt | cut -f1); 
do  
    echo -e "cd /mnt/hwdata/Users/wuxg/LC_re/binning/bin_samples/HV/${i}/\nfor file in *.fa; do mv \"\$file\" \"${i}_\$file\"; done" > "/mnt/hwdata/Users/wuxg/LC_re/LC_qsub_sh/binning_sh/mv_bin_name_sh/HV_sh/${i}-mv.sh"
    chmod 775 "/mnt/hwdata/Users/wuxg/LC_re/LC_qsub_sh/binning_sh/mv_bin_name_sh/HV_sh/${i}-mv.sh"
done