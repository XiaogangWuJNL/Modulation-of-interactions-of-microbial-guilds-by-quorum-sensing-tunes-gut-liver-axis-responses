#!/bin/bash
for i in $(tail -n+2 /mnt/hwdata/Users/wuxg/LC_re/LC_qsub_sh/binning_sh/megahit_sh/LD_sh/LD_samples.txt | cut -f1); 
do  
    echo -e "export TMPDIR=/mnt/hwdata/Users/wuxg/tmp/megahit\nmamba run -n megahit \
    megahit -1 /mnt/hwdata/Users/wuxg/LC_re/fq_fa/LD_fq/${i}_host_removed_1.fastq \
    -2 /mnt/hwdata/Users/wuxg/LC_re/fq_fa/LD_fq/${i}_host_removed_2.fastq \
    -o /mnt/hwdata/Users/wuxg/LC_re/binning/Megahit/LD/${i}_coassembly -t 16" > "/mnt/hwdata/Users/wuxg/LC_re/LC_qsub_sh/binning_sh/megahit_sh/LD_sh/${i}-megahit.sh"
    chmod 775 "/mnt/hwdata/Users/wuxg/LC_re/LC_qsub_sh/binning_sh/megahit_sh/LD_sh/${i}-megahit.sh"
done