#!/usr/bin/env bash

# Download FASTQ files using fastq-dl
# Reads accessions from ../inputs/SRR_Acc_List.txt
# Saves all FASTQ files in ../fastq/ directory

mkdir -p ../fastq

while read -r ACC; do
  [[ -z "$ACC" ]] && continue
  echo "Downloading $ACC ..."
  fastq-dl "$ACC" -o ../fastq
done < ../inputs/SRR_Acc_List.txt

echo "All FASTQ files are saved in ../fastq/"

