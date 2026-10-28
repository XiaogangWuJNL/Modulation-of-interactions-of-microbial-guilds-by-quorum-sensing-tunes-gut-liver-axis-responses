#!/bin/bash
for i in $(tail -n+2 /mnt/hwdata/Users/wuxg/LC_re/LC_qsub_sh/binning_sh/prodigal_sh/LCre_1914_bin_name.txt | cut -f1); 
do  
export TMPDIR=/mnt/hwdata/Users/wuxg/tmp/abricate
mamba run -n abricate \
abricate -db card --threads 40 /mnt/hwdata/Users/wuxg/LC_re/binning/drep_high_quality_sa_0999_results/dereplicated_genomes/${i}.fa \
> /mnt/hwdata/Users/wuxg/LC_re/binning/Functional_Annotation/abricate_results/card_results/${i}_abricate_card.tab
done