# Demultiplexing scRNAseq workshop/demuxSNP package demo

This workshop demonstrates the demuxSNP R/Bioconductor package for demultiplexing scRNAseq data. An introductory vignette to visualise the relevant data types and a benchmarking vignette to motivate the package's use are also included.

## Intro

Single-cell RNA sequencing allows for understanding of cell sub populations, interactions and heterogeneity not previously possible using bulk methods. Despite decreasing considerably, the cost of sequencing still remains a barrier for large scale single-cell studies. Multiplexing, where cells from different biological samples are pooled then sequenced on the same lane goes some way towards reducing sequencing costs. Cells must then be demultiplexed, or assigned back to their biological sample of origin.

Two broad approaches exist to demultiplex, using either experimental cell tagging (hashing) or exploiting natural genetic variation (SNPs). Many methods have been developed in both categories, however, a universally robust algorithm has yet to be developed due to issues in tagging quality.

Some but not all cells may be confidently classified using cell hashing algorithms.
demuxSNP trains a knn classifier on the SNP profiles of cells assigned with high confidence from hashing algorithms and uses these to assign remaining cells.

## Workshop installation

* link to workshop on Galazy
* docker

## Syllabus

1.  Intro to demultiplexing: 
Here we will introduce the main categories for demultiplexing cells, as well as different techniques for visualising the data.

2.  Cell hashing: 
Next, we will benchmark some existing hashing based methods on simulated data to identify trends in different algorithm's performance.

3.  demuxSNP package demo:
Finally, we will demonstrate the capabilities of our package "demuxSNP" and where it might be useful in practice.

The workshop material is available on: <https://michaelplynch.github.io/demultiplexing-bioc23/index.html>
