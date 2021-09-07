CreatePopulation = function(nindvs, landscape){
# create a population matrix with nrows = nindivs, columsn will be x,y coordinates on the landscape 
population = matrix(nrow = nindvs, ncol = 2)

start.x = sample(1:landscape-50, 1)
start.y = sample(1:landscape-50, 1)

population[,1] = start.y + rpois(nindvs, start.y)
population[,2] = start.x + rpois(nindvs, start.x)

return(population)
}
