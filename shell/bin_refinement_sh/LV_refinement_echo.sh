#!/bin/bash
for i in $(tail -n+2 /mnt/hwdata/Users/wuxg/LC_re/LC_qsub_sh/binning_sh/refinement_sh/LV_sh/LV_samples.txt | cut -f1); 
do  
    echo -e "export TMPDIR=/mnt/hwdata/Users/wuxg/tmp/metawrap\nmamba run -n metawrap_mamba_v2 \
    metawrap bin_refinement -o /mnt/hwdata/Users/wuxg/LC_re/binning/bin_refinement/LV/${i}--bin_refinement -t 16 \
    -A /mnt/hwdata/Users/wuxg/LC_re/binning/intial_binning/LV/${i}-initial_binning/metabat2_bins/ \
    -B /mnt/hwdata/Users/wuxg/LC_re/binning/intial_binning/LV/${i}-initial_binning/maxbin2_bins/ \
    -C /mnt/hwdata/Users/wuxg/LC_re/binning/intial_binning/LV/${i}-initial_binning/concoct_bins/ \
    -c 70 -x 10" > "/mnt/hwdata/Users/wuxg/LC_re/LC_qsub_sh/binning_sh/refinement_sh/LV_sh/${i}-refinement.sh"
    chmod 775 "/mnt/hwdata/Users/wuxg/LC_re/LC_qsub_sh/binning_sh/refinement_sh/LV_sh/${i}-refinement.sh"
done