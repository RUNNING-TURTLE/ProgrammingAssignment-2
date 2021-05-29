## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) { # set the value of the matrix
    x <<- y
    i <<- NULL
  }
  get <- function() x # get the value of the matrix
  seti <- function(inverse) i <<- inverse # set inverse of the matrix
  geti <- function() i # get the inverse matrix
  list(set = set, get = get, seti = seti, geti = geti) # return a list
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) { # Return a matrix that is the inverse of 'x'
  i <- x$geti() # get the inverse
  if(!is.null(i)) { # check whether the inverse of the matrix already be calculated
    message("getting inverse")
    return(i) # return the inverse of the matrix
  }
  data <- x$get() # if inverse is null, we first get the value of the matrix
  i <- solve(data, ...) # find the inverse
  x$seti(i)
  i 
}















