#!/bin/bash
export TMPDIR=/mnt/hwdata/Users/wuxg/tmp
mamba run -n fastspar \
fastspar_bootstrap --otu_table /mnt/hwdata/Users/wuxg/LC_re/LC_qsub_sh/binning_sh/sa_099_sh/guild_025_analysis_sh/guild025_sparcc_sh/sa099_shared_025.txt \
--number 1000 \
--prefix /mnt/hwdata/Users/wuxg/LC_re/binning/sa_099/guild_025_analysis/fastspar_output/bootstrap_counts/shared_025

