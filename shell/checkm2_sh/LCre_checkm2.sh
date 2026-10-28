#!/bin/bash
export TMPDIR=/mnt/hwdata/Users/wuxg/tmp/checkMtmp
mamba run -n checkm2 \
checkm2 predict --threads 80 --database_path /mnt/hwdata/Users/wuxg/database/checkm2database/CheckM2_database/uniref100.KO.1.dmnd \
--input /mnt/hwdata/Users/wuxg/LC_re/binning/total_bin --output-directory /mnt/hwdata/Users/wuxg/LC_re/binning/checkm2_out -x fa