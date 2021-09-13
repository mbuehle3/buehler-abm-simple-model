# source functions for the model 

outdir = paste(getwd(),"/output/",sep = "") # assign the output directory if needed
# outdir
source("source/FunctionSource.R") # location of the R file responsible for sourcing functions. Change PATH as needed for your machine. 

# Initialize Paramenters

# Landscape Parameters
elevation = c(0,400) # set the min and max elevations of the landscape
landscape = 300 # set the overall size of the landscape, this will be used for the x and y axis

# Population Parameters
nindv = 100 # how many individuals in the popualtion
pois.variance = 50 # this is used for plotting the individuals on the landscape, the large the variance the more spread out they are, smaller variances will cluster them on the landscape

# pop.num = 2 # Use this if you want to initialize more than one popualtion at a time


# Movement Parameters
nsteps = 5000 # how long should the simluation run for?
prob.move = 0.8 # this is the probabilty of success fed to the build in binomial distribution that dictates if an individual will move up in elevation or move randomly. The higher the value the more likely the indvidual is to move up hill. 

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
