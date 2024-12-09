#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 <APACHE_ROOT>"
  exit 1
fi

APACHE_ROOT=$1

# SARS-CoV-2
jbrowse add-assembly SARS-CoV-2.fna --name "SARS-CoV-2" --load copy --out $APACHE_ROOT/jbrowse2 --force
jbrowse add-track SARS-CoV-2.gff.gz --out $APACHE_ROOT/jbrowse2 --load copy --assemblyNames SARS-CoV-2 --force

# SARS-CoV
jbrowse add-assembly SARS-CoV.fna --name "SARS-CoV" --load copy --out $APACHE_ROOT/jbrowse2 --force
jbrowse add-track SARS-CoV.gff.gz --out $APACHE_ROOT/jbrowse2 --load copy --assemblyNames SARS-CoV --force

# MERS-CoV
jbrowse add-assembly MERS-CoV.fna --name "MERS-CoV" --load copy --out $APACHE_ROOT/jbrowse2 --force
jbrowse add-track MERS-CoV.gff.gz --out $APACHE_ROOT/jbrowse2 --load copy --assemblyNames MERS-CoV --force


# HCoV-229E
jbrowse add-assembly HCoV-229E.fna --name "HCoV-229E" --load copy --out $APACHE_ROOT/jbrowse2 --force
jbrowse add-track HCoV-229E.gff.gz --out $APACHE_ROOT/jbrowse2 --load copy --assemblyNames HCoV-229E --force


# HCoV-NL63
jbrowse add-assembly HCoV-NL63.fna --name "HCoV-NL63" --load copy --out $APACHE_ROOT/jbrowse2 --force
jbrowse add-track HCoV-NL63.gff.gz --out $APACHE_ROOT/jbrowse2 --load copy --assemblyNames HCoV-NL63 --force


# HCoV-OC43
jbrowse add-assembly HCoV-OC43.fna --name "HCoV-OC43" --load copy --out $APACHE_ROOT/jbrowse2 --force
jbrowse add-track HCoV-OC43.gff.gz --out $APACHE_ROOT/jbrowse2 --load copy --assemblyNames HCoV-OC43 --force


# BCov-HKU4
jbrowse add-assembly BCov-HKU4.fna --name "BCov-HKU4" --load copy --out $APACHE_ROOT/jbrowse2 --force
jbrowse add-track BCov-HKU4.gff.gz --out $APACHE_ROOT/jbrowse2 --load copy --assemblyNames BCov-HKU4 --force


# HCoV-NL63
jbrowse add-assembly BCov-RaTG13.fna --name "BCov-RaTG13" --load copy --out $APACHE_ROOT/jbrowse2 --force
jbrowse add-track BCov-RaTG13.gff.gz --out $APACHE_ROOT/jbrowse2 --load copy --assemblyNames BCov-RaTG13 --force


# HCoV-OC43
jbrowse add-assembly BCov-WIV16.fna --name "BCov-WIV16" --load copy --out $APACHE_ROOT/jbrowse2 --force
jbrowse add-track BCov-WIV16.gff.gz --out $APACHE_ROOT/jbrowse2 --load copy --assemblyNames BCov-WIV16 --force
