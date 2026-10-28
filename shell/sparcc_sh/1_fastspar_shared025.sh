#!/bin/bash
export TMPDIR=/mnt/hwdata/Users/wuxg/tmp/coverM
mamba run -n fastspar \
fastspar --otu_table /mnt/hwdata/Users/wuxg/LC_re/LC_qsub_sh/binning_sh/sa_099_sh/guild_025_analysis_sh/guild025_sparcc_sh/sa099_shared_025.txt \
--correlation /mnt/hwdata/Users/wuxg/LC_re/binning/sa_099/guild_025_analysis/fastspar_output/correlation_covariance_pvalue/shared_025_median_correlation.tsv \
--covariance /mnt/hwdata/Users/wuxg/LC_re/binning/sa_099/guild_025_analysis/fastspar_output/correlation_covariance_pvalue/shared_025_median_covariance.tsv \
--threads 16