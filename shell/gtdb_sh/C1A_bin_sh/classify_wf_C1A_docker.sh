#!/bin/bash
path_1='/mnt/hwdata/Users/wuxg/LC_re/binning/sa_099/guild_025_analysis/bin/C1A_bin_fa'
path_2='/mnt/hwdata/Users/wuxg/LC_re/binning/sa_099/guild_025_analysis/gtdb_results/C1A_classify_wf_results'

export TMPDIR=/mnt/hwdata/Users/wuxg/tmp/gtdbtk
export GTDBTK_DATA_PATH="/mnt/hwdata/databases/metagenomics/gtdbtk-database/release220"
gtdbtk classify_wf --genome_dir ${path_1} --out_dir ${path_2} --pplacer_cpus 40 --extension fa --skip_ani_screen --force
