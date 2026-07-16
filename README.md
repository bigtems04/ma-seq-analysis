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

This project uses the RNA-seq dataset GSE96870 obtained from the NCBI Sequence Read Archive (SRA). The dataset contains six samples representing two experimental conditions with three biological replicates each (SRR5364316, SRR5364317, SRR5364318, SRR5364321, SRR5364323, and SRR5364330). The sequencing data were generated using paired-end RNA sequencing, producing approximately 45 million read pairs per sample. The organism studied in this dataset is *Mus musculus* (mouse). The RNA-seq dataset consists of six samples representing two experimental conditions with three biological replicates each. Differential gene expression analysis was performed using the DESeq2 package in R, followed by visualization and functional enrichment analysis using Gene Ontology (GO) and KEGG pathway analysis. The dataset is used to demonstrate a complete RNA-seq quality control workflow, including data download, FASTQ conversion, FastQC quality assessment, and MultiQC report generation.
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

# RNA-seq Differential Gene Expression Analysis

## Project Overview

This project analyzed RNA-seq count data from six mouse samples using DESeq2. Three samples represented the control condition and three represented the treatment condition. Differential expression analysis was followed by visualization and functional enrichment analysis.

## Methods

- Count matrix imported into R
- Differential expression analysis using DESeq2
- Variance stabilizing transformation (VST)
- Principal Component Analysis (PCA)
- Volcano plot
- Top 50 DEG heatmap
- Sample distance heatmap
- GO Biological Process enrichment
- KEGG pathway enrichment

## Results

### Differential Expression

- Total genes tested: **78,348**
- Significant DEGs: **1,682**
- Upregulated: **832**
- Downregulated: **850**

### GO Biological Process (Top 5)

1. Positive regulation of cell projection organization
2. Gliogenesis
3. Glial cell differentiation
4. Ensheathment of neurons
5. Axon ensheathment

### KEGG Pathways (Top 3)

1. IgSF CAM signaling
2. MAPK signaling pathway
3. Cell adhesion molecule (CAM) interaction

## Output Files

- PCA_plot.png
- Volcano_plot.png
- Top50_DEG_heatmap.png
- Sample_distance_heatmap.png
- GO_BP_results.csv
- KEGG_results.csv
- significant_DEGs.csv
- VST_normalized_counts.csv
