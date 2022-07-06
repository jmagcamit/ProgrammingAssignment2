## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##creates a cache of the matrix and initialize some functions
makeCacheMatrix <- function(x = matrix()) {
    z <- NULL ##z is inverse of matrix
    set <- function(y)
    {
      x <<- y
      z <<- NULL
    }
    get <- function() x
    setInvMatrix = function(solve) 
    z <<- solve
    getInvMatrix = function() z
    list(set=set, get=get, setInvMatrix=setInvMatrix, getInvMatrix=getInvMatrix)
}


## Write a short comment describing this function

##solves for the inverse of matrix
cacheSolve <- function(x, ...) {
       z <- x$getInvMatrix()
       if(!is.null(z)) #return cached inverse of matrix if not null
       {
         z 
       }
       data <- x$get
       z <- solve(data, ...) #solve for inverse of matrix if null
       x$setInvMatrix(z)
       z
## Return a matrix that is the inverse of 'x'
}
