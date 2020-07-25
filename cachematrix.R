## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i_matrix <- NULL
  set <- function(y) {
    x <<- y
    i_matrix <<- NULL
  }
  get <- function() x
  setmean <- function(invertir) i_matrix <<- invertir
  getmean <- function() i_matrix
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  i_matrix <- x$getmean()
  if(!is.null(i_matrix)) {
    message("getting cached matrix")
    return(i_matrix)
  }
  data <- x$get()
  i_matrix <- mean(data, ...)
  x$setmean(i_matrix)
  i_matrix
}


#Test
matrix <- makeCacheMatrix(matrix(c(5, 6,8,9, 9, 7), 2, 2))
cacheSolve(matrix)


