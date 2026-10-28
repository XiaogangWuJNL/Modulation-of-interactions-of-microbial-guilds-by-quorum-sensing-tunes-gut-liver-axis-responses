#!/bin/bash
path_1='/mnt/hwdata/Users/wuxg/LC_re/binning/sa_099/drep_high_quality_sa_099_results/dereplicated_genomes'
path_2='/mnt/hwdata/Users/wuxg/LC_re/binning/sa_099/classify_wf_results'

export TMPDIR=/mnt/hwdata/Users/wuxg/tmp/gtdbtk
export GTDBTK_DATA_PATH="/mnt/hwdata/databases/metagenomics/gtdbtk-database/release220"
gtdbtk classify_wf --genome_dir ${path_1} --out_dir ${path_2} --pplacer_cpus 80 --extension fa --skip_ani_screen --force
