#!/bin/bash
for i in $(tail -n+2 /mnt/hwdata/Users/wuxg/LC_re/LC_qsub_sh/binning_sh/sa_099_sh/annotation_sh/dbcan_sh/sa099_dbcan_bin_name.txt | cut -f1); 
do
export TMPDIR=/mnt/hwdata/Users/wuxg/tmp/dbCAN
mamba run -n dbcan_v6 \
run_dbcan /mnt/hwdata/Users/wuxg/LC_re/binning/drep_faa/${i}.gene.faa protein \
--out_dir /mnt/hwdata/Users/wuxg/LC_re/binning/sa_099/Functional_Annotation/dbcan_results/${i}_dbcan_results \
--db_dir /mnt/hwdata/Users/wuxg/database/dbcan414 \
--tools all
done