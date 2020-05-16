## solve a simple Euclidean TSP (using the default method)
etsp <- ETSP(data.frame(x = runif(20), y = runif(20)))
tour <- solve_TSP(etsp)
tour
tour_length(tour)
plot(etsp, tour)
## compare methods
x = c(0, 40, 10,50,80,80, 30)
y = c(0, 55, 50, 40, 20, 70, 30)

tourMAT = ETSP(data.frame(x, y))
tourSolve = solve_TSP(tourMAT)
tour_length(tourSolve)
plot(tourMAT, tourSolve )

data <- matrix(runif(10^2), ncol = 10, dimnames = list(1:10, 1:10))
etsp <- ETSP(data)
etsp
## use some methods
n_of_cities(etsp)
labels(etsp)
## calculate a tour
tour <- solve_TSP(etsp, method = "nn")
tour
tour_length(tour)
plot( etsp,tour)
