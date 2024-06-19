mamba activate snippy

mkdir -p Results2

for samples in SRR2584863;do

snippy \
 --cpus 64 \
 --mincov 1 \
 --report \
 --outdir ./Results2/${samples}/ \
 --ref ./Reference/Ecoli_genbank.gb \
 --R1 ./Reads/${samples}_1.trim.sub.fastq \
 --R2 ./Reads/${samples}_2.trim.sub.fastq;

done

