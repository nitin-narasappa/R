## Programming Assignment 2 

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
    myInverseMatrix <- NULL
    set <- function(y) {
        x <<- y
        myInverseMatrix <<- NULL
    }
    get <- function() x
    # Make use of cacheSolve() instead of direct solve()
    setInverse <- function(cacheSolve) myInverseMatrix <<- cacheSolve
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
    # If variable is not null, inverse is cached, so return it.
    if(!is.null(myInverseMatrix)) {
        message("getting cached data")
        return(myInverseMatrix)
    }
    # Inverse variable is null, continue calculating it and cache it.
    else{
        message("new inverse data")
    }
    data <- x$get()
    myInverseMatrix <- solve(data, ...)
    x$setInverse(myInverseMatrix)
    myInverseMatrix
}

