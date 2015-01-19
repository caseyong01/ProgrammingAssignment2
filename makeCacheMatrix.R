require("R.cache")
makeCacheMatrix <-function(x=matrix(),...){

	message("Generating inverse matrix")
	key<-list(x)
	data <- solve(x)
	saveCache(data, key=key)
	data

}
