#!/bin/bash
for i in $(tail -n+2 /mnt/hwdata/Users/wuxg/LC_re/LC_qsub_sh/binning_sh/sa_099_sh/annotation_sh/metabolic_sh/1358bin_name.txt | cut -f1); 
do  
diamond blastp -d /mnt/hwdata/Users/wuxg/database/BCG_wuxg_DB/LsrB.dmnd \
-q /mnt/hwdata/Users/wuxg/LC_re/binning/sa_099/1358faa/${i}.gene.faa \
-o /mnt/hwdata/Users/wuxg/LC_re/binning/sa_099/Functional_Annotation/blastp_BCG_results/LsrB/${i}_LsrB.out \
--sensitive -e 1e-5 -f 6 -k 1 --threads 80
done



