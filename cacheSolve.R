require("R.cache")
cacheSolve <-function(x=matrix(),...){

## If x is already in the cache, retrieve the inverse of x
	key <- list(x)
	data <- loadCache(key)
	if (!is.null(data)) {
	message("getting cached data")
	return(data)
	}
## otherwise, generate the inverse matrix and save to the cache.
	message("Generating inverse matrix")
	data <- solve(x)
	saveCache(data, key=key)
	data

}