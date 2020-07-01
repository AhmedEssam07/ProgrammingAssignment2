# cm stands for Cashed matrix 

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  cm <- NULL
  set <- function(y) {
    x <<- y
    cm <<- NULL
  }
  get <- function() x
  setCM <- function(solve) cm <<- solve
  getinverse <- function() cm
  list(set = set, get = get,
       setCM = setCM,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  cm <- x$getinverse()
  if(!is.null(cm)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  cm <- solve(data, ...)
  x$setCM(cm)
  cm
}
