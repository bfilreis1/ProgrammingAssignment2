
## This builds a special matrix to
##   1. set its value 
##   2. get its value 
##   3. set the inverse 
##   4. get its inverse

makeCacheMatrix <- function(x = matrix()) {

  inv= NULL
  set = function(a){
  
## sets value of matrix 
    x <<- a
    inv <<- NULL
    
  }
  get <-function() x
  setinvfun <- function(inverse) a <<- inv
## A as inverse of function of X
  getinvfun <- function() a
  list(set = set, get = get, setinvfun = setinvfun, getinvfun = getinvfun)
              }

## computes inverse of the special matrix returned above

cacheSolve <- function(x, ...) {
  inv <- x$getinvfun()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- inv(data, ...)
  x$setinv(inv)
  inv
}
