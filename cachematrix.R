
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

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
