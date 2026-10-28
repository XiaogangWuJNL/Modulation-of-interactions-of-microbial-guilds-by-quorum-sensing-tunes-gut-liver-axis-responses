#!/bin/bash
export TMPDIR=/mnt/hwdata/Users/wuxg/tmp
mamba run -n fastspar \
parallel fastspar --otu_table {} \
--correlation /mnt/hwdata/Users/wuxg/LC_re/binning/sa_099/guild_025_analysis/fastspar_output/bootstrap_correlation/cor_{/} \
--covariance /mnt/hwdata/Users/wuxg/LC_re/binning/sa_099/guild_025_analysis/fastspar_output/bootstrap_correlation/cov_{/} \
-i 5 ::: /mnt/hwdata/Users/wuxg/LC_re/binning/sa_099/guild_025_analysis/fastspar_output/bootstrap_counts/*
