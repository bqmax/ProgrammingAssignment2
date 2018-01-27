## These two functions make and cache a matrix and inverse of the matrix

# In this part of code two objects 'x' and 'm' are initialazed, 'x' will contain a matrix when makeCacheMatrix() will be runned, 's' will contain inverse of a matrix when cacheSolve() will be runned. An output object will contain
# set the value of the matrix
# get the value of the matrix
# set the value of the inverse of the matrix
# get the value of the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
      s <- NULL
      set <- function(y) {
            x <<- y
            s <<- NULL
      }
      get <- function() x
      setsolve <- function(solve) s <<- solve
      getsolve <- function() s
      list(set = set, get = get,
           setsolve = setsolve,
           getsolve = getsolve)
}


## In this part of code inverse of matrix will be cached

cacheSolve <- function(x, ...) {
      s <- x$getsolve()
      if(!is.null(s)) {
            message("getting cached data")
            return(s)
      }
      data <- x$get()
      s <- solve(data, ...)
      x$setsolve(s)
      s
}
