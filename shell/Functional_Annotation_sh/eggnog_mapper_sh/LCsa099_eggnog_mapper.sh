#!/bin/bash
for i in $(tail -n+2 /mnt/hwdata/Users/wuxg/LC_re/LC_qsub_sh/binning_sh/sa_099_sh/annotation_sh/eggnog_sh/sa099_eggnog.txt | cut -f1); 
do 
export TMPDIR=/mnt/hwdata/Users/wuxg/tmp/emappertmp
mamba run -n eggnog \
emapper.py -o /mnt/hwdata/Users/wuxg/LC_re/binning/sa_099/Functional_Annotation/eggnog_mapper_results/${i} \
--cpu 80 -i /mnt/hwdata/Users/wuxg/LC_re/binning/drep_faa/${i}.gene.faa \
--seed_ortholog_evalue 1e-5 --override -m diamond --dmnd_db /mnt/hwdata/Users/wuxg/database/eggnog-data/eggnog_proteins.dmnd \
--data_dir /mnt/hwdata/Users/wuxg/database/eggnog-data --temp_dir /mnt/hwdata/Users/wuxg/tmp/emappertmp
done