# my.population.test
# my.landscape


MoveIndv=function(indv, land, move, nsteps, elevation, landscape){
  mvmt = indv[1,1:2] #x==1, y==2
  for(s in 1:nsteps){
    cxpos = mvmt[(length(mvmt)-1)]
    cypos = mvmt[length(mvmt)]
    
    #determine if indv will move randomly or will move to higher elevation
    movehigh = sample(x=c(0,1), size=1, prob=c((1-move), move))
    
    #random movement to adjacent cell/patch
    if(movehigh==0){
      xpos = sample(c(-1,0,1), 1) + cxpos
      ypos = sample(c(-1,0,1), 1) + cypos
    }
    
    #move to higher elevation
    if(movehigh==1){
      #find highest elevation cell
      highpt = which(land[(cxpos-1):(cxpos+1), (cypos-1):(cypos+1)] == max(land[(cxpos-1):(cxpos+1), (cypos-1):(cypos+1)]), arr.ind = TRUE)
      
      #calculate new position (x and y values)
      if(highpt[1]==1){xpos = cxpos - 1 }
      if(highpt[1]==2){xpos = cxpos }
      if(highpt[1]==3){xpos = cxpos + 1 }
      if(highpt[2]==1){ypos = cypos - 1 }
      if(highpt[2]==2){ypos = cypos }
      if(highpt[2]==3){ypos = cypos + 1 }
    }
    
    #record new position
    mvmt = c(mvmt, xpos, ypos)
    
    #check to see if individual is at peak; if yes individual remains in same position
    if(land[xpos,ypos]>=elevation[2]){
      #fill out remaining positions
      mvmt=c(mvmt, rep(c(xpos, ypos), (nsteps-((length(mvmt)/2)-1))))
      
      #exit loop
      break
    }
    
    #check to see if individual is at edge of landscape; if yes individual remains in same position
    if(xpos>=(landscape-1) | ypos>=(landscape-1) | xpos<=1 | ypos<=1){
      #fill out remaining positions
      mvmt=c(mvmt, rep(c(xpos, ypos), (nsteps-((length(mvmt)/2)-1))))
      
      #exit loop
      break
    }
  }
  return(mvmt)
}



# ##############################
# ##########  To Do   ##########
# ##############################

# # Create a way to move a single individuals, then make another function to loop over an entire datatset
# # Function to find out what the elevation of nearby patches are
# # Function to get the max value 
# # Need to have some probability of moving to a new patch randomly or move up hill

# # need to make a switch to determine whether the ind. moves randomly or if it will directly up hill
# # A function that does it for a single ind. then in the RunModel file use a loop to iterate over the loop 

# ind.1 <- my.population.test[1,]
# my.population.test
# ind.1
# my.population.test[1,1] <- my.population.test[1,1] + sample(-1,1,1)
# my.population.test[1,1]
# my.population.test[1,2] <- my.population.test[1,2] + sample(-1,1,1)
# my.population.test[1,]
# ind.1

# ?switch()
# ?rbinom()


# x <- rbinom(1,1,0.8)
# x = 0
# # 1 == go up hill
# if (x == 0){
#     my.population.test[1,1] <- my.population.test[1,1] + sample(-1:1,1,1)
#     my.population.test[1,2] <- my.population.test[1,2] + sample(-1:1,1,1)
# } else{
#     start = my.landscape[my.population.test[1,1],  my.population.test[1,2]]
#     a     = my.landscape[my.population.test[1,1]-1,my.population.test[1,2]+1]
#     b     = my.landscape[my.population.test[1,1],  my.population.test[1,2]+1]
#     c     = my.landscape[my.population.test[1,1]+1,my.population.test[1,2]+1]
#     d     = my.landscape[my.population.test[1,1]-1,my.population.test[1,2]]
#     e     = my.landscape[my.population.test[1,1]+1,my.population.test[1,2]]
#     f     = my.landscape[my.population.test[1,1]-1,my.population.test[1,2]-1]
#     g     = my.landscape[my.population.test[1,1],  my.population.test[1,2]-1]
#     h     = my.landscape[my.population.test[1,1]+1,my.population.test[1,2]-1]

# which(a:h == max(a:h))


# poss.moves = matrix(ncol = 3, nrow =9)
# poss.moves
# poss.moves[1,1] = my.landscape[my.population.test[1,1],  my.population.test[1,2]];
# poss.moves[1,2] = my.population.test[1,1];
# poss.moves[1,3] =  my.population.test[1,2]


# poss.moves


# poss.moves[1,1] = my.landscape[my.population.test[1,1],  my.population.test[1,2]]
# poss.moves[1,2] = my.population.test[1,1]
# poss.moves[1,3] =  my.population.test[1,2]
# poss.moves


# }
# ?max()

# movement.matrix = matrix(ncol = 3,nrow = 9)
# movement.matrix[1,1]

# x <- rank(a,b,c,d,e,f,g,h,start)
# x


# my.population.test[1,]
# my.landscape[my.population.test[1,1],my.population.test[1,2]]
# my.landscape[88,26]



# my.population.test[1,1]
# my.population.test[1,2]

# coord.x <- my.population.test[1,]
# coord.x
# coord.y <- my.population.test[1,2]
# coord.y
# my.landscape
# ind.1
# ind.1[1]

# my.landscape[my.population.test[1,1],my.population.test[1,2]]

# my.landscape[88,26]

# ?sample()


# if (x == 1){
#     print("x == 1")
# }else{
#     print("x!=1")

# }


# switch(rbinom(2,1,0.8), "equals 1", "equals2")
# switch(0,  "equals 1",  "equals2")


# # add in something to write the coordinates 


# mv.hist <- my.population.test[1,]
# mv.hist


