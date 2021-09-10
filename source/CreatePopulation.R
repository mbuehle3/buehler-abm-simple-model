CreatePopulation = function(nindvs, landscape){
# create a population matrix with nrows = nindivs, columsn will be x,y coordinates on the landscape 
population = matrix(nrow = nindvs, ncol = 2)

start.x = sample(1:landscape-pois.variance, 1)
start.y = sample(1:landscape-pois.variance, 1)

# landscape
# start.x
# start.y

population[,1] = start.y + rpois(nindvs, pois.variance)
population[,2] = start.x + rpois(nindvs, pois.variance)

return(population)
}
