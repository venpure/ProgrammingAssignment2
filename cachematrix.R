## Put comments here that give an overall description of what your
## functions do  
## These functions written in partial fulfillment of Coursera Data Science: R Programming   
## Week 3 Assignment; week beginning Sep 14, 2017; GitHub user:Venpure  
   
## Write a short comment describing this function  
 
## A pair of functions that cache the inverse of a matrix.
## This function creates a special "matrix" object that can cache its inverse.

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
    
## Write a short comment describing this function  
## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.  
## If the inverse has already been calculated (and the matrix has not changed),  
## then cacheSolve will retrieve the inverse from the cache  
    
  cacheSolve <- function(x, ...) {  
          ## Return a matrix that is the inverse of 'x'  
    inv <- x$getinverse()  
    if(!is.null(inv)) {  
        message("getting cached data")  
        return(inv)  
    }  
    data <- x$get()  
  inv <- solve(data, ...)  
 x$setinverse(inv)  
 inv  
  }  

