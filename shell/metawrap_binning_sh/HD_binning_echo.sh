#!/bin/bash
for i in $(tail -n+2 /mnt/hwdata/Users/wuxg/LC_re/LC_qsub_sh/binning_sh/intial_sh/HD_sh/HD_samples.txt | cut -f1); 
do  
    echo -e "export TMPDIR=/mnt/hwdata/Users/wuxg/tmp/metawrap\nmamba run -n metawrap_mamba_v2 \
    metawrap binning  -a /mnt/hwdata/Users/wuxg/LC_re/binning/Megahit/HD/${i}_coassembly/final.contigs.fa \
     -o /mnt/hwdata/Users/wuxg/LC_re/binning/intial_binning/HD/${i}-initial_binning \
     -t 16 -m 64 --metabat2 --maxbin2 --concoct \
     /mnt/hwdata/Users/wuxg/LC_re/fq_fa/HD_fq/${i}_host_removed_*.fastq" > "/mnt/hwdata/Users/wuxg/LC_re/LC_qsub_sh/binning_sh/intial_sh/HD_sh/${i}-binning.sh"
    chmod 775 "/mnt/hwdata/Users/wuxg/LC_re/LC_qsub_sh/binning_sh/intial_sh/HD_sh/${i}-binning.sh"
done