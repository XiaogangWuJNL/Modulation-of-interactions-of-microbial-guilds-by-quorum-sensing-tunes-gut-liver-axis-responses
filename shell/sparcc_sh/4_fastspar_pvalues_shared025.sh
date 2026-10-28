#!/bin/bash
export TMPDIR=/mnt/hwdata/Users/wuxg/tmp
mamba run -n fastspar \
fastspar_pvalues --otu_table /mnt/hwdata/Users/wuxg/LC_re/LC_qsub_sh/binning_sh/sa_099_sh/guild_025_analysis_sh/guild025_sparcc_sh/sa099_shared_025.txt \
--correlation /mnt/hwdata/Users/wuxg/LC_re/binning/sa_099/guild_025_analysis/fastspar_output/correlation_covariance_pvalue/shared_025_median_correlation.tsv \
--prefix /mnt/hwdata/Users/wuxg/LC_re/binning/sa_099/guild_025_analysis/fastspar_output/bootstrap_correlation/cor_shared_025_ \
--permutations 1000 --outfile /mnt/hwdata/Users/wuxg/LC_re/binning/sa_099/guild_025_analysis/fastspar_output/correlation_covariance_pvalue/shared_025_pvalues.tsv

