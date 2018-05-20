#This function,  creates a special "vector", which is really a list containing a function to
# set the value of the vector
# get the value of the vector
# set the value of the mean
# get the value of the mean

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse  <- function(solveMatrix) inv <<- solveMatrix
  getInverse  <- function() inv
  list(set = set, get = get, setInverse  = setInverse , getInverse  = getInverse )
}