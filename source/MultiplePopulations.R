MultiplePopulations = function(OldPop, NumPops){
    for (i in 1:NumPops)
        OldPop = rbind(OldPop, CreatePopulation(nindv,landscape))
    return(OldPop)
}