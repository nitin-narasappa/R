## Programming Assignment 2 

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
    myInverseMatrix <- NULL
    set <- function(y) {
        x <<- y
        myInverseMatrix <<- NULL
    }
    get <- function() x
    setInverse <- function(solve) myInverseMatrix <<- solve
    getInverse <- function() myInverseMatrix
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}


# This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
# If the inverse has already been calculated (and the matrix has not changed), then 
# the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    myInverseMatrix <- x$getInverse()
    if(!is.null(myInverseMatrix)) {
        message("getting cached data")
        return(myInverseMatrix)
    }
    data <- x$get()
    myInverseMatrix <- solve(data, ...)
    x$setInverse(myInverseMatrix)
    myInverseMatrix
}

