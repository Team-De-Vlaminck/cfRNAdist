
get.dist <- function(train,
					 test,
					 maxit= 100000){
	
	stopifnot(all(colnames(train)==colnames(test)))
	
	mu <- colMeans(train)
	sigma <- cov(train)
	sigma <- as.matrix(nearPD(sigma, corr = FALSE, keepDiag = TRUE, maxit= maxit)$mat)
	stopifnot(is.positive.definite(sigma,1E-20))
		
	dist <- sqrt(mahalanobis(x=test, center=mu, cov= sigma,inverted = FALSE))
					
	return(dist)
}



get.dist.loo <- function(input,
						 maxit= 100000){

		cat("computing sample id= ")
		
		loo.dist <- sapply(1:nrow(input), function(idx){
			cat(idx," ")
			train <- input[-idx,]
			test <- input[idx,,drop=F]
			
			get.dist (train= train,
					  test= test,
					  maxit= maxit)
		})
		
		cat("\n")
		loo.dist		
}




 