### Obtain the fastq-dump tool from NBI
wget https://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/3.2.1/sratoolkit.3.2.1-ubuntu64.tar.gz
tar zxvf sratoolkit.3.2.1-ubuntu64.tar.gz 
ln -s sratoolkit.3.2.1-ubuntu64/bin/fastq-dump .

### Download FASTQ files from SRA
./fastq-dump --split-files --gzip SRR1993645 # Harbin35 (1940) Illumina
./fastq-dump --split-files --gzip SRR2124209 # Ulegeica (1974) Ion Torrent
./fastq-dump --split-files --gzip ERR9964466 # Turkey (1964) Illumina
./fastq-dump --split-files --gzip SRR6366793  # Brazil (1972) Illumina
