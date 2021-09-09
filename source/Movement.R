my.population.test
my.landscape

##############################
##########  To Do   ##########
##############################

# Create a way to move a single individuals, then make another function to loop over an entire datatset
# Function to find out what the elevation of nearby patches are
# Function to get the max value 
# Need to have some probability of moving to a new patch randomly or move up hill

# need to make a switch to determine whether the ind. moves randomly or if it will directly up hill
# A function that does it for a single ind. then in the RunModel file use a loop to iterate over the loop 

ind.1 <- my.population.test[1,]
my.population.test
ind.1
my.population.test[1,1] <- my.population.test[1,1] + sample(-1,1,1)
my.population.test[1,1]
my.population.test[1,2] <- my.population.test[1,2] + sample(-1,1,1)
my.population.test[1,]
ind.1

?switch()
?rbinom()


x <- rbinom(1,1,0.8)
x = 0
# 1 == go up hill
if (x == 0){
    my.population.test[1,1] <- my.population.test[1,1] + sample(-1:1,1,1)
    my.population.test[1,2] <- my.population.test[1,2] + sample(-1:1,1,1)
} else{
    start = my.landscape[my.population.test[1,1],  my.population.test[1,2]]
    a     = my.landscape[my.population.test[1,1]-1,my.population.test[1,2]+1]
    b     = my.landscape[my.population.test[1,1],  my.population.test[1,2]+1]
    c     = my.landscape[my.population.test[1,1]+1,my.population.test[1,2]+1]
    d     = my.landscape[my.population.test[1,1]-1,my.population.test[1,2]]
    e     = my.landscape[my.population.test[1,1]+1,my.population.test[1,2]]
    f     = my.landscape[my.population.test[1,1]-1,my.population.test[1,2]-1]
    g     = my.landscape[my.population.test[1,1],  my.population.test[1,2]-1]
    h     = my.landscape[my.population.test[1,1]+1,my.population.test[1,2]-1]
    movement.matrix = matrix(ncol = 3,nrow = 9)
}
?max()

movement.matrix = matrix(ncol = 3,nrow = 9)
movement.matrix[1,1]

x <- rank(a,b,c,d,e,f,g,h,start)
x


my.population.test[1,]
my.landscape[my.population.test[1,1],my.population.test[1,2]]
my.landscape[88,26]



my.population.test[1,1]
my.population.test[1,2]

coord.x <- my.population.test[1,]
coord.x
coord.y <- my.population.test[1,2]
coord.y
my.landscape
ind.1
ind.1[1]

my.landscape[my.population.test[1,1],my.population.test[1,2]]

my.landscape[88,26]

?sample()


if (x == 1){
    print("x == 1")
}else{
    print("x!=1")

}


switch(rbinom(2,1,0.8), "equals 1", "equals2")
switch(0,  "equals 1",  "equals2")


# add in something to write the coordinates 


mv.hist <- my.population.test[1,]
mv.hist


