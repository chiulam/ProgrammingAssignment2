## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Create a special "matrix", which is really a list, 
## containing functions to
## 1. get the matrix
## 2. set the matrix
## 3. set the inverse of matrix
## 4. get the inverse of matrix
makeCacheMatrix <- function(x = matrix()) {
    s <- NULL
    set <- function (y) {
        x <<- y
        s <<- NULL
    }
    get <- function() xcache
    setSolve <- function(solve) s <<- solve
    getSolve <- function() s
    list(set = set, get = get,
         setSolve = setSolve, 
         getSolve = getSolve)
}

## Write a short comment describing this function
## Compute the inverse of the special "matrix" created by
## makeCacheMatrix. If the inverse has already been calculated,
## return the cached inverse matrix.
cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    s <- x$getSolve()
    if(!is.null(s)) {
        message("getting cached data")
        return(s)
    }
    data <- x$get()
    s <- solve(data)
    x$setSolve(s)
    s
}
