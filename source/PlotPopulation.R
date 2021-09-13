PlotPopulation = function(population){
    image(my.landscape)
    points(population[,1]/landscape, population[,2]/landscape, pch = 19, cex = 0.7)
    }