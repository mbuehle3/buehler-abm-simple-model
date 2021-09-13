# source functions for the model 

outdir = paste(getwd(),"/output/",sep = "")
# outdir
source("source/FunctionSource.R")

# Initialize Paramenters

# Landscape Parameters
elevation = c(0,400)
landscape = 300

# Population Parameters
nindv = 100
pois.variance = 50
# pop.num = 2 # Use this if you want to initialize more than one popualtion at a time


# Movement Parameters
nsteps = 5000
prob.move = 0.8

my.landscape <- CreateLandscape(elevation)

my.population<- CreatePopulation(nindv,landscape)
my.population

# # Use this chunk if you want to create multiple populations all at once 
# my.population <- MultiplePopulations(my.population, pop.num)
# my.population

PlotPopulation(my.population)

parameters = expand.grid(elevation,landscape,nindv,nsteps,prob.move)
parameters
colnames(parameters) = c("elevation","landscape","nindvs","nsteps","move")
parameters = parameters[parameters$elevation!=0,]

for(p in 1:nrow(parameters)){
  elevation = c(0, parameters$elevation[p])
  landscape = parameters$landscape[p]
  nindvs    = parameters$nindvs[p]
  nsteps    = parameters$nsteps[p]
  move      = parameters$move[p]
  

    pathways = NULL
    
    for(i in 1:nrow(my.population)){
      #isolate individual of interest
      indv = my.population[i,,drop=FALSE]
      
      #chart movement
      movepath = MoveIndv(indv, my.landscape, prob.move, nsteps, elevation, landscape)
      
      #plot movement
      lines(movepath[seq(1,length(movepath), 2)]/landscape, movepath[seq(2,length(movepath), 2)]/landscape, lwd=2)
      
      #record path in single object for all individuals
      pathways = rbind(pathways, movepath)
    }
        rownames(pathways) = seq(1,nindvs,1)
}
