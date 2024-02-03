\name{get.dist}
\alias{get.dist}
\title{
Get Mahalanobis distance with respect to a group of background samples.
}
\description{
Get Mahalanobis distance with respect to a group of background samples. When computing distance for cell free RNA, use raw cell type fraction computed by BayesPrism.
}
\usage{
	get.dist (train,
		      test,
		      maxit= 100000)	
}
\arguments{
  \item{train}{The data matrix used for modeling the background distribution. Each row is a sample, while each column is a feature. When computing distance for cell free RNA, use raw cell type fraction computed by BayesPrism.}
  \item{test}{The data matrix used for computing the distance respect to the background distribution. Each row is a sample, while each column is a feature.}
  \item{maxit}{The max iteration for projecting to the nearest positive definite matrix. Default= 100000}
}

\value{
	return a numeric vector of length = nrow(test). 
}

