## Both the functions work together to return inverse of a matrix
## in least possible amount of computation and time

# "makeCacheMatrix" returns an object which has setters and getters 
# to compute the inverse of matrix
# Along with this, the function initializes the inverse to NULL

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


## This "cacheSolve" function returns cached inverse if already computed, 
## else solves inverse, returns inverse and caches it

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
