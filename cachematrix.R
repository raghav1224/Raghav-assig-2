
## Function below just sets the and gets the values of matrix and inverse

makeCacheMatrix <- function(x = matrix()) {
    
    inv<-NULL
    set<- function(y)
    {
        x<<-y
        inv<<-NULL
    }
    get<-function()x
    setInv<-function(inverseCalulated)inv<<-inverseCalulated
    getInv<-function()inv
    list(set=set,get=get,setInv=setInv,getInv=getInv)
}


## Check the function to cache and calculate the inverse

cacheSolve <- function(x) {
    inv<-x$getInv()
    if(!is.null(inv))
    {
        message("getting cahed data")
        return(inv)
    }
    matrixData<-x$get()
    inv<-solve(matrixData)
    x$setInv(inv)
    inv
}