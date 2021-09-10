# source functions for the model 

source("source/FunctionSource.R")

# Initialize Paramenters

# Landscape Parameters
elevation = c(0,400)
landscape = 150

# Population Parameters
nindv = 100
pois.variance = 100

# Movement Parameters
nsteps = 5000
prob.move = 0.8

my.landscape <- CreateLandscape(elevation)
my.landscape
image(my.landscape)

my.population.test <- CreatePopulation(nindv,landscape)
my.population.test
PlotPopulation(my.population.test)

multi.populations <- MultiplePopulations(my.population.test, 5)
multi.populations


PlotPopulation(multi.populations)
my.population <- CreatePopulation(nindv,landscape)

# landscape.x
# landscape.y