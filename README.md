# Demultiplexing scRNAseq workshop/demuxSNP package demo

This workshop demonstrates the demuxSNP R/Bioconductor package for demultiplexing scRNAseq data. An introductory vignette to visualise the relevant data types and a benchmarking vignette to motivate the package's use are also included.

## Intro

Single-cell RNA sequencing allows for understanding of cell sub populations, interactions and heterogeneity not previously possible using bulk methods. Despite decreasing considerably, the cost of sequencing still remains a barrier for large scale single-cell studies. Multiplexing, where cells from different biological samples are pooled then sequenced on the same lane goes some way towards reducing sequencing costs. Cells must then be demultiplexed, or assigned back to their biological sample of origin.

Two broad approaches exist to demultiplex, using either experimental cell tagging (hashing) or exploiting natural genetic variation (SNPs). Many methods have been developed in both categories, however, a universally robust algorithm has yet to be developed due to issues in tagging quality.

Some but not all cells may be confidently classified using cell hashing algorithms.
demuxSNP trains a knn classifier on the SNP profiles of cells assigned with high confidence from hashing algorithms and uses these to assign remaining cells.

## Workshop installation

* Galaxy: https://workshop.bioconductor.org/
* Docker:
`sudo docker run -e PASSWORD=<choose_your_password> -p 8787:8787 ghcr.io/michaelplynch/demultiplexing-bioc23` with rstudio:<choose_your_password>

## Prerequisites

* Familiarity with R/Bioconductor
* Familiarity with scRNAseq data analysis
* Previous demultiplexing experience is helpful but not necessary


## Syllabus

1.  Intro to demultiplexing: 
Learn what the different data types used to demultiplex look like, understand some of the different ways low quality data can appear and the implications this has on designing demultiplexing algorithms.

2.  Cell hashing: 
Understand the usefulness of simulated data in benchmarking, particularly in the absence of comprehensive real data with ground truth.
Understand how hashing quality impacts demultiplexing performance.

3.  demuxSNP package demo:
Understand how SNP data from cells confidently assigned using cell hashing methods

The workshop material is available on: <https://michaelplynch.github.io/demultiplexing-bioc23/index.html>
