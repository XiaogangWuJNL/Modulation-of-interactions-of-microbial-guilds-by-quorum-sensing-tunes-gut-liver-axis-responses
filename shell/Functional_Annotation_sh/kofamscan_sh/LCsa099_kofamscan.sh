#!/bin/bash
for i in $(tail -n+2 /mnt/hwdata/Users/wuxg/LC_re/LC_qsub_sh/binning_sh/sa_099_sh/annotation_sh/kegg_sh/sa099_kegg.txt | cut -f1); 
do  
export TMPDIR=/mnt/hwdata/Users/wuxg/tmp/keggtmp
mamba run -n kofamscan \
exec_annotation --cpu 80 -E 1e-5 -f detail-tsv \
-o /mnt/hwdata/Users/wuxg/LC_re/binning/sa_099/Functional_Annotation/KofamScan_results/${i}_kofamscan_result.tsv \
-c /mnt/hwdata/Users/wuxg/database/kofam_db/config.yml \
--tmp-dir /mnt/hwdata/Users/wuxg/tmp/keggtmp \
/mnt/hwdata/Users/wuxg/LC_re/binning/drep_faa/${i}.gene.faa
done