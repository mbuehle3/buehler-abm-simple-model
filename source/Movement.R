my.population.test
my.landscape



# need to make a switch to determine whether the ind. moves randomly or if it will directly up hill
# A function that does it for a single ind. then in the RunModel file use a loop to iterate over the loop 
ind.1 <- my.population.test[1,1:2]

my.population.test[1,1] <- my.population.test[1,1] + sample(-1,1,1)
my.population.test[1,1]
my.population.test[1,2] <- my.population.test[1,2] + sample(-1,1,1)
my.population.test[1,]
ind.1


# add in something to write the coordinates 


mv.hist <- my.population.test[1,]
mv.hist


