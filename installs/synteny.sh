#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 <APACHE_ROOT>"
  exit 1
fi

APACHE_ROOT=$1

minimap2 -x map-ont SARS-CoV-2.fa SARS-CoV.fa > SARS-CoV-2_vs_SARS-CoV.paf
minimap2 -x map-ont SARS-CoV-2.fa MERS-CoV.fa > SARS-CoV-2_vs_MERS-CoV.paf 
minimap2 -x map-ont SARS-CoV-2.fa HCoV-229E.fa > SARS-CoV-2_vs_HCoV-229E.paf
minimap2 -x map-ont SARS-CoV-2.fa HCoV-NL63.fa > SARS-CoV-2_vs_HCoV-NL63.paf
minimap2 -x map-ont SARS-CoV-2.fa HCoV-OC43.fa > SARS-CoV-2_vs_HCoV-OC43.paf

jbrowse add-track SARS-CoV-2_vs_SARS-CoV.paf --assemblyNames SARS-CoV,SARS-CoV-2  --load copy --out $APACHE_ROOT/jbrowse2 --force
jbrowse add-track SARS-CoV-2_vs_MERS-CoV.paf --assemblyNames MERS-CoV,SARS-CoV-2 --load copy --out $APACHE_ROOT/jbrowse2 --force
jbrowse add-track SARS-CoV-2_vs_HCoV-229E.paf --assemblyNames HCoV-229E,SARS-CoV-2 --load copy --out $APACHE_ROOT/jbrowse2 --force
jbrowse add-track SARS-CoV-2_vs_HCoV-NL63.paf --assemblyNames HCoV-NL63,SARS-CoV-2 --load copy --out $APACHE_ROOT/jbrowse2 --force
jbrowse add-track SARS-CoV-2_vs_HCoV-OC43.paf --assemblyNames HCoV-OC43-CoV,SARS-CoV-2 --load copy --out $APACHE_ROOT/jbrowse2 --force

minimap2 -x map-ont SARS-CoV.fa MERS-CoV.fa > SARS-CoV_vs_MERS-CoV.paf 
minimap2 -x map-ont SARS-CoV.fa HCoV-229E.fa > SARS-CoV_vs_HCoV-229E.paf
minimap2 -x map-ont SARS-CoV.fa HCoV-NL63.fa > SARS-CoV_vs_HCoV-NL63.paf
minimap2 -x map-ont SARS-CoV.fa HCoV-OC43.fa > SARS-CoV_vs_HCoV-OC43.paf

jbrowse add-track SARS-CoV_vs_MERS-CoV.paf --assemblyNames MERS-CoV,SARS-CoV --load copy --out $APACHE_ROOT/jbrowse2 --force
jbrowse add-track SARS-CoV_vs_HCoV-229E.paf --assemblyNames HCoV-229E,SARS-CoV --load copy --out $APACHE_ROOT/jbrowse2 --force
jbrowse add-track SARS-CoV_vs_HCoV-NL63.paf --assemblyNames HCoV-NL63,SARS-CoV --load copy --out $APACHE_ROOT/jbrowse2 --force
jbrowse add-track SARS-CoV_vs_HCoV-OC43.paf --assemblyNames HCoV-OC43-CoV,SARS-CoV --load copy --out $APACHE_ROOT/jbrowse2 --force

minimap2 -x map-ont MERS-CoV.fa HCoV-229E.fa > MERS-CoV_vs_HCoV-229E.paf
minimap2 -x map-ont MERS-CoV.fa HCoV-NL63.fa > MERS-CoV_vs_HCoV-NL63.paf
minimap2 -x map-ont MERS-CoV.fa HCoV-OC43.fa > MERS-CoV_vs_HCoV-OC43.paf

jbrowse add-track MERS-CoV_vs_HCoV-229E.paf --assemblyNames HCoV-229E,MERS-CoV --load copy --out $APACHE_ROOT/jbrowse2 --force
jbrowse add-track MERS-CoV_vs_HCoV-NL63.paf --assemblyNames HCoV-NL63,MERS-CoV --load copy --out $APACHE_ROOT/jbrowse2 --force
jbrowse add-track MERS-CoV_vs_HCoV-OC43.paf --assemblyNames HCoV-OC43-CoV,MERS-CoV --load copy --out $APACHE_ROOT/jbrowse2 --force

minimap2 -x map-ont HCoV-229E.fa HCoV-NL63.fa > HCoV-229E_vs_HCoV-NL63.paf
minimap2 -x map-ont HCoV-229E.fa HCoV-OC43.fa > HCoV-229E_vs_HCoV-OC43.paf

jbrowse add-track HCoV-229E_vs_HCoV-NL63.paf --assemblyNames HCoV-NL63,HCoV-229E --load copy --out $APACHE_ROOT/jbrowse2 --force
jbrowse add-track HCoV-229E_vs_HCoV-OC43.paf --assemblyNames HCoV-OC43-CoV,HCoV-229E --load copy --out $APACHE_ROOT/jbrowse2 --force

minimap2 -x map-ont HCoV-NL63.fa HCoV-OC43.fa > HCoV-NL63_vs_HCoV-OC43.paf

jbrowse add-track HCoV-NL63_vs_HCoV-OC43.paf --assemblyNames HCoV-OC43-CoV,HCoV-NL63 --load copy --out $APACHE_ROOT/jbrowse2 --force


minimap2 -x asm5 MERS-CoV.fa BCov-HKU4.fa > MERS-CoV_vs_BCov-HKU4.paf
jbrowse add-track MERS-CoV_vs_BCov-HKU4.paf --assemblyNames BCov-HKU4,MERS-CoV --load copy --out $APACHE_ROOT/jbrowse2 --force

minimap2 -x asm5 SARS-CoV-2.fa BCov-RaTG13.fa > SARS-CoV-2_vs_BCov-RaTG13.paf
jbrowse add-track SARS-CoV-2_vs_BCov-RaTG13.paf --assemblyNames BCov-RaTG13,SARS-CoV-2 --load copy --out $APACHE_ROOT/jbrowse2 --force

minimap2 -x asm5 SARS-CoV-2.fa BCov-WIV16.fa > SARS-CoV-2_vs_BCov-WIV16.paf
jbrowse add-track SARS-CoV-2_vs_BCov-WIV16.paf --assemblyNames BCov-WIV16,SARS-CoV-2 --load copy --out $APACHE_ROOT/jbrowse2 --force

