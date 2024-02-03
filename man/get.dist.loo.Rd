\name{get.dist.loo}
\alias{get.dist.loo}
\title{
Compute the leave-on-out Mahalanobis distance.
}
\description{
Compute the leave-on-out Mahalanobis distance. The background distribution is computed by leaving out each test sample. The function is used to provide a approximation of the distribution of Mahalanobis distance for samples within the control group.   
}
\usage{
	get.dist.loo (input,
				  maxit= 100000)	
}
\arguments{
  \item{input}{The data matrix of samples from the control group. Each row is a sample, while each column is a feature.}  	
  \item{maxit}{The max iteration for projecting to the nearest positive definite matrix. Default= 100000}
}

\value{
	return a numeric vector of length = nrow(input). 
}

