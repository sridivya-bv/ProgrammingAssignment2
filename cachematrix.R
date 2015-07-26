## Put comments here that give an overall description of what your
## functions do

setwd("~/code/ProgrammingAssignment2")


## The function creates a matrix object, and an inverse which is initially 
## set to null. It has four functions to get and set the matrix, as well get and ## set the inverse.

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
      x <<- y
      m <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) m <<- inverse
    getinverse <- function() inverse
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## The function calculates the inverse of the matrix. It first checks to see
## if the inverse already has been calculated, if yes, it gets the inverse from
## the cache, if no, it calculates the inverse, and sets the inverse value in the 
## cache and returns the inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
  
}
