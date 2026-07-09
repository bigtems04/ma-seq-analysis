# ma-seq-analysis

## Student Information
Name: Temitope Atselefun Igben

## Program
Bio-Coding

## Project Description
This repository contains an end-to-end analysis pipeline for RNA sequencing (RNA-seq) data using Bash scripting and R.

## What is RNA-seq?
RNA sequencing (RNA-seq) is a powerful next-generation sequencing technique used to study gene expression by analyzing RNA molecules present in a biological sample. It enables researchers to identify active genes, measure expression levels, discover novel transcripts, and compare gene activity between different biological conditions. RNA-seq is widely used in genomics, medicine, biotechnology, and biological research to better understand cellular processes and disease mechanisms.
## Dataset Information

This project uses the RNA-seq dataset GSE96870 obtained from the NCBI Sequence Read Archive (SRA). The dataset contains six samples representing two experimental conditions with three biological replicates each (SRR5364316, SRR5364317, SRR5364318, SRR5364321, SRR5364323, and SRR5364330). The sequencing data were generated using paired-end RNA sequencing, producing approximately 45 million read pairs per sample. The organism studied in this dataset is Homo sapiens (human). The dataset is used to demonstrate a complete RNA-seq quality control workflow, including data download, FASTQ conversion, FastQC quality assessment, and MultiQC report generation.
# Differential Gene Expression Analysis

This analysis was performed using the DESeq2 package in R.

## DEG Summary

- Total genes tested: **78,348**
- Significant DEGs (padj < 0.05): **1,682**
  - Upregulated: **832**
  - Downregulated: **850**

## Output Files

- significant_DEGs.csv
- upregulated_DEGs.csv
- downregulated_DEGs.csv
- VST_normalized_counts.csv
