conda create -n bwa_env
conda activate bwa_env
conda install bioconda::bwa
conda list -n bwa_env > bwa_env_packages.txt
conda env export > bwa_env.yaml


ln -s ../01-sequence-reads/*.fastq.gz .
ln -s ../02-reference-genome/*.fna.gz .


bwa index GCF_000009065.1_ASM906v1_genomic.fna.gz

for i in ERR9964466_1 ERR9964466_2 ERR9964466_1 SRR6366793_2 SRR1993645_2 SRR2124209_1
do
    bwa aln -l 9999 -n 0.1 -o2  GCF_000009065.1_ASM906v1_genomic.fna.gz $i.fastq.gz > $i.sai
    bwa samse GCF_000009065.1_ASM906v1_genomic.fna.gz $i.sai > $i.sam
    samtools view -b $i.sam > $i.bam
done






