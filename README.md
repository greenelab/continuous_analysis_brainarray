# Continuous Analysis BrainArray CustomCDF Example

This is a sample repository showing a [Continuous Analysis Workflow](https://github.com/greenelab/continuous_analysis) for RNA-Seq analysis. A description of continuous analysis is available as a [pre-print](http://dx.doi.org/10.1101/056473).

In this example we evaluate the effect of different custom chip descript files (CustomCDF). To evaluate the impact of differing CDF versions, we downloaded a recently published public gene expression dataset. This experiment examined differential expression between normal HeLa cells and HeLa cells with TIA1 and TIAR knocked down ([GEO Series Ascension number GSE47664](http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE47664)). We performed a parallel analysis using each of the three versions that we found installed on machines that we could access (18, 19, and 20). Each version identifies a different number of significantly altered genes, demonstrating the challenge of reproducible analysis. 

![](https://raw.githubusercontent.com/greenelab/continuous_analysis_brainarray/master/references/comparison.png)
*Figure:* Current state of research computing vs. container-based approaches. A.) The status quo requires a reader or reviewer to find and install specific versions of dependencies. These dependencies can become difficult to find and may become incompatible with newer versions of other software packages. Different versions of packages identify different numbers of significantly differentially expressed genes from the same source code and data. B.) Containers define a computing environment that captures dependencies. In container-based systems, the results are the same regardless of the host system. 


### Results: 
The truncated output shows the first 100 genes for comparison.

[V19 -> V20](https://github.com/greenelab/continuous_analysis_brainarray/commit/443e8123ca9baa0b72d03c23dc07933ba1a3b5de)

[V18 -> V19](https://github.com/greenelab/continuous_analysis_brainarray/commit/55a63b83b1ee53a89c61a2d7c831f6ad74297620)

## Feedback

Please feel free to email me - (brettbe) at med.upenn.edu with any feedback or raise a github issue with any comments or questions.

## Acknowledgements
This work is supported by the Gordon and Betty Moore Foundation's Data-Driven Discovery Initiative through Grant GBMF4552 to C.S.G. as well as the Commonwealth Universal Research Enhancement (CURE) Program grant from the Pennsylvania Department of Health.
