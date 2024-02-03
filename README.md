cfRNA_dist
========

* This R package computes distance of cell type fraction profiles between a cell type fraction profile and a group of control samples based on Mahalanobis distance.

###  Functions to use
* get.dist: Get Mahalanobis distance with respect to a group of background samples.
* get.dist.loo: Compute the leave-on-out Mahalanobis distance. The background distribution is computed by leaving out each test sample. The function is used to provide a approximation of the distribution of Mahalanobis distance for samples within the control group.

Installation
--------
* R packages:
	
	Matrix, matrixcalc

* If all dependent packages and commands have been installed, please do git clone and use the following command line to install. 

```````
R CMD INSTALL cfRNA_dist
```````
