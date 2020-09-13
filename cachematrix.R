## Put comments here that give an overall description of what your
## functions do

#Returns a matrix object
makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y) {
  x <<- y
  inv <<- NULL
}
getmat <- function() x
setinv <- function(x) inv <<- solve(x)
getinv <- function() inv
list(getmat = getmat, setinv = setinv, getinv = getinv)
}


## Returns cached inverse if already computed, else solves inverse and caches it

cacheSolve <- function(x, ...) {
  inv <- x$getinv()
  if((!is.null(inv))) {
    message("Getting matrix inverse from Cache!")
    return(inv)
  }
  mat <- x$getmat()
  message("Computing matrix inverse")
  x$setinv(mat)
  x$getinv()
        ## Return a matrix that is the inverse of 'x'
}
