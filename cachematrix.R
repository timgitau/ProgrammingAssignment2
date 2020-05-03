## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#makeCacheMatrix :This function creates a special"matrix" object that can cache it's inverse
Programming Assignment 2: Lexical Scoping

makeCacheMatrix <- function(x = matrix()) {
#First initialize the inverse property t (set)
#Get the matrix and return the matrix x (get)
#Set the inverse of the matrix (setInv)
#Get the inverse of the matrix returning the inverse property t (getInv)
#Return the lists of set,get,setInv and getInv (list)

}
makeCacheMatrix <-function(x = matrix()){

t<-NULL
set <-function(y){
x <<-y
t <<-NULL
 }
get <- function()x
setInv <- function(inverse) t <<- inverse
getInv <-function() t

list(set=set,get=get,setInv=setInv,getInv=getInv)

## Write a short comment describing this function
#cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
#If the inverse has already been calculated (and the matrix has not changed),
#then the cachesolve should retrieve the inverse from the cache.
#Return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {

        t<- x$getInverse()
        if (!is.null(t)) {
                message("getting cached data")
                return(t)
        }
        mat <- x$get()
        t <- solve(mat, ...)
        x$setInverse(t)
        t
}
