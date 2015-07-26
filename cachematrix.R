## Put comments here that give an overall description of what your
## functions do

## set the value of the matrix
## get the value of the matrix
## set the value of the inverse
## get the value of the inverse

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 invers = NULL 
 set = function(y) {
        x <<- y
        invers <<- NULL
 }
 get = function() x
 setinverse = function(inverse) invers <<- inverse 
 getinverse = function() invers
 list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function

##  Function below computes the inverse of the special matrix returned by function "makeCacheMatrix()" 
cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
 invers = x$getinverse()
 if (!is.null(invers)){ ##if we have inverse matrix
        message("getting cached data")
        return(invers)
        }
## if we do not have inverse matrix, we calculate it        
 data = x$get()
 invers = solve(data, ...)
 x$setinverse(invers)
 return(invers)
}
