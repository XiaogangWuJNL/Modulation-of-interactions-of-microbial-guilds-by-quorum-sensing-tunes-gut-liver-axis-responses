#!/bin/bash
for i in $(tail -n+2 /mnt/hwdata/Users/wuxg/LC_re/LC_qsub_sh/binning_sh/sa_099_sh/guild_025_analysis_sh/gtdb_sh/C1B_sh/C1B_bin.txt | cut -f1); 
do  
cp -r /mnt/hwdata/Users/wuxg/LC_re/binning/sa_099/drep_high_quality_sa_099_results/dereplicated_genomes/${i}.fa \
/mnt/hwdata/Users/wuxg/LC_re/binning/sa_099/guild_025_analysis/bin/C1B_bin_fa/${i}.fa
done