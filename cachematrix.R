## Put comments here that give an overall description of what your
## functions do

## The below is used to makeCachematrix :

 makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
    }


## the below functions will support to set up/ get  matrix to help compute inv
    get <- function() {x}
    setInverse <- function(inverse) {inv <<- inverse}
    getInverse <- function() {inv}
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
    ## the below will get the cache and compute inverse of the matrix
    

        ## Return a matrix that is the inverse of 'x'
  cacheSolve<- function(x, ...) {
    inv <- x$getInverse()
    if(!is.null(inv)) {
      message("getting cached data")
      return(inv)
    }
    mat <- x$get()
    inv <- solve(mat, ...)
    x$setInverse(inv)
    inv
  }

