### Install GATK
conda config --set auto_update_conda false
conda config --set solver libmamba
wget https://github.com/broadinstitute/gatk/releases/download/4.6.2.0/gatk-4.6.2.0.zip
unzip gatk-4.6.2.0.zip
conda env create -f gatk-4.6.2.0/gatkcondaenv.yml
conda activate gatk

### Check that GATK is installed
./gatk-4.6.2.0/gatk --help
