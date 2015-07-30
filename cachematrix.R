## To inverse a Matrix

##Assignment: Caching the Inverse of a Matrix

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function(y) {
    x <<- y ; inverse <<- NULL
  }
  get <- function() return(x)
  setinverse <- function(inverse) 
  getinverse <- function() 
    return(inverse)
}


## Computes the inverse of the above function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inverse <- x$getinv()
  if(!is.null(inverse)) {
    message("Displaying cached data")
  }
  
  input <- x$get()
  inverse <- solve(input, ...)
  x$setinv(inverse)
  
  return(inverse)
}
