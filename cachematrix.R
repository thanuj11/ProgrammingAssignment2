## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(y = matrix()) {
m <- NULL
      set <- function(x) {
            y <<- x
            m <<- NULL
      }
      get <- function() y
      setinverse <- function(solve) m <<- solve
      getinverse <- function() m
      list(set = set, get = get,
           setinverse = setinverse,
           getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(y, ...) {
   
        ## Return a matrix that is the inverse of 'x'
         m <- y$getinverse()
      if(!is.null(m)) {
            message("getting cached data")
            return(m)
      }
      data <- y$get()
      m <- solve(data, ...)
      y$setinverse(m)
      m
}
