#!/bin/bash
for i in $(tail -n+2 /mnt/hwdata/Users/wuxg/LC_re/LC_qsub_sh/binning_sh/sa_099_sh/annotation_sh/interproscan_sh/1358taxabin_IV.txt | cut -f1); 
do  
export TMPDIR=/mnt/hwdata/Users/wuxg/tmp
mamba run -n interproscan \
interproscan.sh \
  -i /mnt/hwdata/Users/wuxg/LC_re/binning/sa_099/taxabin_clean_1358faa/${i}.faa \
  -b /mnt/hwdata/Users/wuxg/LC_re/binning/sa_099/Functional_Annotation/interproscan_results/${i} \
  -f tsv \
  -appl pfam,smart \
  -cpu 16 \
  -dp
done
