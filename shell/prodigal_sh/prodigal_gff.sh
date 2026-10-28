#!/bin/bash
for i in $(tail -n+2 /mnt/hwdata/Users/wuxg/LC_re/LC_qsub_sh/binning_sh/prodigal_sh/LCre_1914_bin_name.txt | cut -f1); 
do  
prodigal -i /mnt/hwdata/Users/wuxg/LC_re/binning/drep_high_quality_sa_0999_results/dereplicated_genomes/${i}.fa \
-f gff -o /mnt/hwdata/Users/wuxg/LC_re/binning/prodigal_results/${i}.gff \
-a /mnt/hwdata/Users/wuxg/LC_re/binning/prodigal_results/${i}.gene.faa \
-d /mnt/hwdata/Users/wuxg/LC_re/binning/prodigal_results/${i}.gene.fna 
done