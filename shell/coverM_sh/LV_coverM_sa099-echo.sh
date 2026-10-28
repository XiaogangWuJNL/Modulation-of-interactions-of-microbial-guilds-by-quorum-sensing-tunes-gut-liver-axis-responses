#!/bin/bash
for i in $(tail -n+2 /mnt/hwdata/Users/wuxg/LC_re/LC_qsub_sh/binning_sh/sa_099_sh/coverM_sh/LV_sh/LV_samples.txt | cut -f1); do
    echo -e "export TMPDIR=/mnt/hwdata/Users/wuxg/tmp/coverM\nmamba run -n coverm \
coverm genome -1 /mnt/hwdata/Users/wuxg/LC_re/fq_fa/LV_fq/${i}_host_removed_1.fastq \
-2 /mnt/hwdata/Users/wuxg/LC_re/fq_fa/LV_fq/${i}_host_removed_2.fastq \
--genome-fasta-directory /mnt/hwdata/Users/wuxg/LC_re/binning/sa_099/drep_high_quality_sa_099_results/dereplicated_genomes/ \
--methods tpm --threads 16 \
--genome-fasta-extension fa \
-o /mnt/hwdata/Users/wuxg/LC_re/binning/sa_099/coverM_results/${i}_coverM_output.tsv" > "/mnt/hwdata/Users/wuxg/LC_re/LC_qsub_sh/binning_sh/sa_099_sh/coverM_sh/LV_sh/${i}-coverM.sh"
    chmod 775 "/mnt/hwdata/Users/wuxg/LC_re/LC_qsub_sh/binning_sh/sa_099_sh/coverM_sh/LV_sh/${i}-coverM.sh"
done