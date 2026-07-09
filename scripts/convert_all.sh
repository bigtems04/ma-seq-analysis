#!/bin/bash

mkdir -p data/raw/fastq

for sra in data/raw/SRR*/SRR*.sra
do
    echo "Converting $sra"
    fasterq-dump "$sra" -O data/raw/fastq
done
