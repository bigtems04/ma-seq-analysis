#!/bin/bash

mkdir -p data/raw

while read SRR
do
    echo "Downloading $SRR..."
    prefetch $SRR -O data/raw
done < data/metadata/SRR_accessions.txt

echo "Download complete."
