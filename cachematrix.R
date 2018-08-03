<<<<<<< Updated upstream
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
=======
## My functions cache potentially time consuming functions on matrix
## These function "makeCacheMatrix" and "cacheSolve" that cache the inverse of a matrix.

## This function creates a special matrix object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function(solveMatrix) inv <<- solveMatrix
  getInverse <- function() inv
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}



## cacheSolve is a function which computes the inverse of the special matrix"
## returned by makeCacheMatrix above. If the inverse has already been calculated 
## and if the matrix is not changed  then the cachesolve should retrieve the 
## inverse from the cache . Thus decreasing the cmoputations needed.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setInverse(inv)
  inv   
}
>>>>>>> Stashed changes
