#Test Driver for cachematrix

m <- matrix(c(-1, -2, 1, 1), 2,2)
x <- makeCacheMatrix(m)
x$get()

#First time to calculate the inverse matrix
inv <- cacheSolve(x)
inv

#The second time should return cached matrix
inv <- cacheSolve(x)
inv

#Inverse of inverse matrix to get original matrix
m <- matrix(inv, 2,2)
x <- makeCacheMatrix(m)
inv <- cacheSolve(x)
inv
