library(DESeq2)
Loading required package: S4Vectors
Loading required package: stats4
Loading required package: BiocGenerics
Loading required package: generics

Attaching package: ‘generics’

The following objects are masked from ‘package:base’:
  
  as.difftime, as.factor, as.ordered, intersect, is.element,
setdiff, setequal, union


Attaching package: ‘BiocGenerics’

The following objects are masked from ‘package:stats’:
  
  IQR, mad, sd, var, xtabs

The following objects are masked from ‘package:base’:
  
  anyDuplicated, aperm, append, as.data.frame, basename, cbind,
colnames, dirname, do.call, duplicated, eval, evalq, Filter, Find,
get, grep, grepl, is.unsorted, lapply, Map, mapply, match, mget,
order, paste, pmax, pmax.int, pmin, pmin.int, Position, rank,
rbind, Reduce, rownames, sapply, saveRDS, table, tapply, unique,
unsplit, which.max, which.min


Attaching package: ‘S4Vectors’

The following object is masked from ‘package:utils’:
  
  findMatches

The following objects are masked from ‘package:base’:
  
  expand.grid, I, unname

Loading required package: IRanges

Attaching package: ‘IRanges’

The following object is masked from ‘package:grDevices’:
  
  windows

Loading required package: GenomicRanges
Loading required package: Seqinfo
Loading required package: SummarizedExperiment
Loading required package: MatrixGenerics
Loading required package: matrixStats

Attaching package: ‘MatrixGenerics’

The following objects are masked from ‘package:matrixStats’:
  
  colAlls, colAnyNAs, colAnys, colAvgsPerRowSet, colCollapse,
colCounts, colCummaxs, colCummins, colCumprods, colCumsums,
colDiffs, colIQRDiffs, colIQRs, colLogSumExps, colMadDiffs,
colMads, colMaxs, colMeans2, colMedians, colMins, colOrderStats,
colProds, colQuantiles, colRanges, colRanks, colSdDiffs, colSds,
colSums2, colTabulates, colVarDiffs, colVars, colWeightedMads,
colWeightedMeans, colWeightedMedians, colWeightedSds,
colWeightedVars, rowAlls, rowAnyNAs, rowAnys, rowAvgsPerColSet,
rowCollapse, rowCounts, rowCummaxs, rowCummins, rowCumprods,
rowCumsums, rowDiffs, rowIQRDiffs, rowIQRs, rowLogSumExps,
rowMadDiffs, rowMads, rowMaxs, rowMeans2, rowMedians, rowMins,
rowOrderStats, rowProds, rowQuantiles, rowRanges, rowRanks,
rowSdDiffs, rowSds, rowSums2, rowTabulates, rowVarDiffs, rowVars,
rowWeightedMads, rowWeightedMeans, rowWeightedMedians,
rowWeightedSds, rowWeightedVars

Loading required package: Biobase
Welcome to Bioconductor

Vignettes contain introductory material; view with
'browseVignettes()'. To cite Bioconductor, see
'citation("Biobase")', and for packages 'citation("pkgname")'.


Attaching package: ‘Biobase’

The following object is masked from ‘package:MatrixGenerics’:
  
  rowMedians

The following objects are masked from ‘package:matrixStats’:
  
  anyMissing, rowMedians
> 
  > # Use Geneid as row names
  > rownames(count_matrix) <- count_matrix$Geneid
> 
  > # Remove the Geneid column
  > count_matrix <- count_matrix[, -1]
> 
  > # Make sure counts are integers
  > count_matrix <- as.matrix(count_matrix)
> storage.mode(count_matrix) <- "integer"
> 
  > # Check dimensions
  > dim(count_matrix)
[1] 78348     6
> head(count_matrix)
SRR5364316 SRR5364317 SRR5364318 SRR5364321 SRR5364323
ENSMUSG00000000001       2279       2040       2084       1792       1962
ENSMUSG00000000003          0          0          0          0          0
ENSMUSG00000000028         96        102        100         93         96
ENSMUSG00000000031         46         56         33         32         65
ENSMUSG00000000037         31         34         36         21         23
ENSMUSG00000000049          8         15         10         11          9
SRR5364330
ENSMUSG00000000001       2190
ENSMUSG00000000003          0
ENSMUSG00000000028        111
ENSMUSG00000000031         42
ENSMUSG00000000037         25
ENSMUSG00000000049         17
> library(DESeq2)
> library(DESeq2)
> 
  > dds <- DESeqDataSetFromMatrix(
    +   countData = count_matrix,
    +   colData = metadata,
    +   design = ~ condition
    + )
Warning message:
  In DESeqDataSet(se, design = design, ignoreRank) :
  some variables in design formula are characters, converting to factors
> 
  > dds
class: DESeqDataSet 
dim: 78348 6 
metadata(1): version
assays(1): counts
rownames(78348): ENSMUSG00000000001 ENSMUSG00000000003 ...
ENSMUSG00002076991 ENSMUSG00002076992
rowData names(0):
  colnames(6): SRR5364316 SRR5364317 ... SRR5364323 SRR5364330
colData names(1): condition
> dds <- DESeqDataSetFromMatrix(
  +     countData = count_matrix,
  +     colData = metadata,
  +     design = ~ condition
  + )
Warning message:
  In DESeqDataSet(se, design = design, ignoreRank) :
  some variables in design formula are characters, converting to factors
> 
  > dds
class: DESeqDataSet 
dim: 78348 6 
metadata(1): version
assays(1): counts
rownames(78348): ENSMUSG00000000001 ENSMUSG00000000003 ...
ENSMUSG00002076991 ENSMUSG00002076992
rowData names(0):
  colnames(6): SRR5364316 SRR5364317 ... SRR5364323 SRR5364330
colData names(1): condition
> dds <- DESeq(dds)
estimating size factors
estimating dispersions
gene-wise dispersion estimates
mean-dispersion relationship
final dispersion estimates
fitting model and testing
> res <- results(dds)
> 
  > head(res)
log2 fold change (MLE): condition Treatment vs Control 
Wald test p-value: condition Treatment vs Control 
DataFrame with 6 rows and 6 columns
baseMean log2FoldChange     lfcSE       stat     pvalue
<numeric>      <numeric> <numeric>  <numeric>  <numeric>
  ENSMUSG00000000001 2046.0286     -0.2119550 0.0803675 -2.6373231 0.00835632
ENSMUSG00000000003    0.0000             NA        NA         NA         NA
ENSMUSG00000000028   99.0425     -0.0961034 0.2077828 -0.4625186 0.64370950
ENSMUSG00000000031   45.5013     -0.0633020 0.3606538 -0.1755202 0.86067089
ENSMUSG00000000037   28.3607     -0.6548799 0.3763031 -1.7402987 0.08180658
ENSMUSG00000000049   11.5453      0.0431056 0.6045698  0.0712996 0.94315930
padj
<numeric>
  ENSMUSG00000000001 0.0692097
ENSMUSG00000000003        NA
ENSMUSG00000000028 0.8284544
ENSMUSG00000000031 0.9409361
ENSMUSG00000000037 0.2726594
ENSMUSG00000000049        NA
> total_genes <- nrow(res)
> total_genes
[1] 78348
> sig <- subset(as.data.frame(res), padj < 0.05)
> 
  > nrow(sig)
[1] 1682
> up <- subset(sig, log2FoldChange > 0)
> down <- subset(sig, log2FoldChange < 0)
> 
  > nrow(up)
[1] 832
> nrow(down)
[1] 850
> write.csv(sig,
            +           "significant_DEGs.csv")
> 
  > write.csv(up,
              +           "upregulated_DEGs.csv")
> 
  > write.csv(down,
              +           "downregulated_DEGs.csv")
> vsd <- vst(dds)
> 
  > vst_counts <- assay(vsd)
> 
  > write.csv(vst_counts,
              +           "VST_normalized_counts.csv")
> 