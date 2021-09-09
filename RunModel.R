# source functions for the model 

source("source/FunctionSource.R")

# Initialize Paramenters

elevation = c(0,400)
landscape = 150

nindv = 100
nsteps = 5000
move = 0.8

my.landscape <- CreateLandscape(elevation)
my.landscape
image(my.landscape)

my.population.test <- CreatePopulation(nindv,landscape)
my.population.test
PlotPopulation(my.population.test)

multi.populations <- MultiplePopulations(my.population, 5)
multi.populations
points(my.population[,1]/landscape, my.population[,2]/landscape, pch = 19, cex = 0.7)
my.population <- CreatePopulation(nindv,landscape)

# landscape.x
# landscape.y