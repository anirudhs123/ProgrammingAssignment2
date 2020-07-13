makeCacheMatrix <- function(x = matrix()) {
     m<-NULL
     set<-function(y) {
           x<<-y
           m<<-NULL
     }
     get<-function() x
     setinverse<-function(solve) m<<-solve
     getinverse<-function() m
     list(set=set, get=get,
          setinverse=setinverse,
          getinvesre=getinverse)
}



}


## Write a short comment describing this function
##This function is used to Find the inverse of the given matrix
##We try to find the inverse of the cacahed matrix
cacheSolve <- function(x, ...) {
     m<-x$getinverse
     if(!is.null(m)){
        message('getting cached data')
        return(m)
         }
     data<-x$get()
     m<-solve(data,...)
     x$setinverse(m)
     m
        ## Return a matrix that is the inverse of 'x'
}
