#!/bin/bash
export FASTA_ROOT=https://ftp.ncbi.nlm.nih.gov/genomes/all

# SARS-CoV-2
wget $FASTA_ROOT/GCF/009/858/895/GCF_009858895.2_ASM985889v3/GCF_009858895.2_ASM985889v3_genomic.fna.gz
gunzip GCF_009858895.2_ASM985889v3_genomic.fna.gz
mv GCF_009858895.2_ASM985889v3_genomic.fna SARS-CoV-2.fna
cp SARS-CoV-2.fna SARS-CoV-2.fa
samtools faidx SARS-CoV-2.fna

wget $FASTA_ROOT/GCF/009/858/895/GCF_009858895.2_ASM985889v3/GCF_009858895.2_ASM985889v3_genomic.gff.gz
gunzip GCF_009858895.2_ASM985889v3_genomic.gff.gz
jbrowse sort-gff GCF_009858895.2_ASM985889v3_genomic.gff > SARS-CoV-2.gff
bgzip SARS-CoV-2.gff
tabix SARS-CoV-2.gff.gz

# SARS-CoV
wget $FASTA_ROOT/GCF/000/864/885/GCF_000864885.1_ViralProj15500/GCF_000864885.1_ViralProj15500_genomic.fna.gz
gunzip GCF_000864885.1_ViralProj15500_genomic.fna.gz
mv GCF_000864885.1_ViralProj15500_genomic.fna SARS-CoV.fna
cp SARS-CoV.fna SARS-CoV.fa
samtools faidx SARS-CoV.fna

wget $FASTA_ROOT/GCF/000/864/885/GCF_000864885.1_ViralProj15500/GCF_000864885.1_ViralProj15500_genomic.gff.gz
gunzip GCF_000864885.1_ViralProj15500_genomic.gff.gz
jbrowse sort-gff GCF_000864885.1_ViralProj15500_genomic.gff > SARS-CoV.gff
bgzip SARS-CoV.gff
tabix SARS-CoV.gff.gz

# MERS-CoV
wget $FASTA_ROOT/GCF/000/901/155/GCF_000901155.1_ViralProj183710/GCF_000901155.1_ViralProj183710_genomic.fna.gz
gunzip GCF_000901155.1_ViralProj183710_genomic.fna.gz
mv GCF_000901155.1_ViralProj183710_genomic.fna MERS-CoV.fna
cp MERS-CoV.fna MERS-CoV.fa
samtools faidx MERS-CoV.fna

wget $FASTA_ROOT/GCF/000/901/155/GCF_000901155.1_ViralProj183710/GCF_000901155.1_ViralProj183710_genomic.gff.gz
gunzip GCF_000901155.1_ViralProj183710_genomic.gff.gz
jbrowse sort-gff GCF_000901155.1_ViralProj183710_genomic.gff > MERS-CoV.gff
bgzip MERS-CoV.gff
tabix MERS-CoV.gff.gz

# HCoV-229E
wget $FASTA_ROOT/GCF/000/853/505/GCF_000853505.1_ViralProj14913/GCF_000853505.1_ViralProj14913_genomic.fna.gz
gunzip GCF_000853505.1_ViralProj14913_genomic.fna.gz
mv GCF_000853505.1_ViralProj14913_genomic.fna HCoV-229E.fna
cp HCoV-229E.fna HCoV-229E.fa
samtools faidx HCoV-229E.fna

wget $FASTA_ROOT/GCF/000/853/505/GCF_000853505.1_ViralProj14913/GCF_000853505.1_ViralProj14913_genomic.gff.gz
gunzip GCF_000853505.1_ViralProj14913_genomic.gff.gz
jbrowse sort-gff GCF_000853505.1_ViralProj14913_genomic.gff > HCoV-229E.gff
bgzip HCoV-229E.gff
tabix HCoV-229E.gff.gz

# HCoV-NL63
wget $FASTA_ROOT/GCF/000/853/865/GCF_000853865.1_ViralProj14960/GCF_000853865.1_ViralProj14960_genomic.fna.gz
gunzip GCF_000853865.1_ViralProj14960_genomic.fna.gz
mv GCF_000853865.1_ViralProj14960_genomic.fna HCoV-NL63.fna
cp HCoV-NL63.fna HCoV-NL63.fa
samtools faidx HCoV-NL63.fna

wget $FASTA_ROOT/GCF/000/853/865/GCF_000853865.1_ViralProj14960/GCF_000853865.1_ViralProj14960_genomic.gff.gz
gunzip GCF_000853865.1_ViralProj14960_genomic.gff.gz
jbrowse sort-gff GCF_000853865.1_ViralProj14960_genomic.gff > HCoV-NL63.gff
bgzip HCoV-NL63.gff
tabix HCoV-NL63.gff.gz


# HCoV-OC43
wget $FASTA_ROOT/GCF/003/972/325/GCF_003972325.1_ASM397232v1/GCF_003972325.1_ASM397232v1_genomic.fna.gz
gunzip GCF_003972325.1_ASM397232v1_genomic.fna.gz
mv GCF_003972325.1_ASM397232v1_genomic.fna HCoV-OC43.fna
cp HCoV-OC43.fna HCoV-OC43.fa
samtools faidx HCoV-OC43.fna

wget $FASTA_ROOT/GCF/003/972/325/GCF_003972325.1_ASM397232v1/GCF_003972325.1_ASM397232v1_genomic.gff.gz
gunzip GCF_003972325.1_ASM397232v1_genomic.gff.gz
jbrowse sort-gff GCF_003972325.1_ASM397232v1_genomic.gff > HCoV-OC43.gff
bgzip HCoV-OC43.gff
tabix HCoV-OC43.gff.gz

# Bat
wget $FASTA_ROOT/GCA/031/199/515/GCA_031199515.1_ASM3119951v1/GCA_031199515.1_ASM3119951v1_genomic.fna.gz
gunzip GCA_031199515.1_ASM3119951v1_genomic.fna.gz
mv GCA_031199515.1_ASM3119951v1_genomic.fna BCov-RaTG13.fna
cp BCov-RaTG13.fna BCov-RaTG13.fa
samtools faidx BCov-RaTG13.fna

wget $FASTA_ROOT/GCA/031/199/515/GCA_031199515.1_ASM3119951v1/GCA_031199515.1_ASM3119951v1_genomic.gff.gz
gunzip GCA_031199515.1_ASM3119951v1_genomic.gff.gz
jbrowse sort-gff GCA_031199515.1_ASM3119951v1_genomic.gff > BCov-RaTG13.gff
bgzip BCov-RaTG13.gff
tabix BCov-RaTG13.gff.gz

https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/870/505/GCF_000870505.1_ViralProj18863/GCF_000870505.1_ViralProj18863_genomic.fna.gz
# Bat 2
wget $FASTA_ROOT/GCF/000/870/505/GCF_000870505.1_ViralProj18863/GCF_000870505.1_ViralProj18863_genomic.fna.gz
gunzip GCF_000870505.1_ViralProj18863_genomic.fna.gz
mv GCF_000870505.1_ViralProj18863_genomic.fna BCov-HKU4.fna
cp BCov-HKU4.fna BCov-HKU4.fa
samtools faidx BCov-HKU4.fna

wget $FASTA_ROOT/GCF/000/870/505/GCF_000870505.1_ViralProj18863/GCF_000870505.1_ViralProj18863_genomic.gff.gz
gunzip GCF_000870505.1_ViralProj18863_genomic.gff.gz
jbrowse sort-gff GCF_000870505.1_ViralProj18863_genomic.gff > BCov-HKU4.gff
bgzip BCov-HKU4.gff
tabix BCov-HKU4.gff.gz

# Bat 3
wget $FASTA_ROOT/GCA/031/162/155/GCA_031162155.1_ASM3116215v1/GCA_031162155.1_ASM3116215v1_genomic.fna.gz
gunzip GCA_031162155.1_ASM3116215v1_genomic.fna.gz
mv GCA_031162155.1_ASM3116215v1_genomic.fna BCov-WIV16.fna
cp BCov-WIV16.fna BCov-WIV16.fa
samtools faidx BCov-WIV16.fna

wget $FASTA_ROOT/GCA/031/162/155/GCA_031162155.1_ASM3116215v1/GCA_031162155.1_ASM3116215v1_genomic.gff.gz
gunzip GCA_031162155.1_ASM3116215v1_genomic.gff.gz
jbrowse sort-gff GCA_031162155.1_ASM3116215v1_genomic.gff > BCov-WIV16.gff
bgzip BCov-WIV16.gff
tabix BCov-WIV16.gff.gz
