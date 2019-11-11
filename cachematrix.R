## Put comments here that give an overall description of what your
## functions do
## the functions check if the matrix has known inverse or not then calculates it
## Write a short comment describing this function
##this is a special function
makeCacheMatrix <- function(x = matrix()) {

	m <- NULL
	set <- function(y){
		x <<- y
		m <<- NULL
	}
	get <- function() x
	setinverse <- function(inverse) m <<- inverse
	getinverse <- function() m
	list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)

}


## Write a short comment describing this function
##this function calculates the matrix inverse
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

        m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- inv(data, ...)
        x$setinverse(m)
        m

}
