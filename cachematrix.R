## The following functions sets and gets the value of the matrix. 
##It also sets and gets the value of the inverse of the matrix.

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) inv <<- solve
        getinverse <- function() inv
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)

}


## The following function calculates the inverse of the special matrix created in the above function. 
##It first checks whether the inverse is previously calculated.
##If so, it gets the inverse from the cache and skips the computation. 
##Otherwise, it calculates the inverse of the matrix and sets the value of the inverse in the cache via the setinverse function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinverse()
        if(!is.null(inv)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        inv <- solve(data, ...)
        x$setinverse(inv)
}
