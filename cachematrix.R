## MAtrix inversion calculation and cahching functions


## makeCacheMatrix, expesct an invertable matrix as input and
## contructs functions to
## 1. set the cached value of the matrix
## 2. get the value of the cached matrix
## 3. set the value of the inverted matrix (solve)
## 4. get the value of the resultant inversion

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
              x <<- y
              inv <<- NULL
  }
  get <- function() x
  setinv <- function(solve) inv <<- solve
  getinv <- function() inv
  list(set = set, get = get, 
      setinv = setinv, 
      getinv = getinv)
}


## Uses the functions returned by makeCacheMatrix to
## Get the inverted matrix from cache if already created, if not it builds the inversion caches it and returns the result

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getinv()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setenv(inv)
  m
}
