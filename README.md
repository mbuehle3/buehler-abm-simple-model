# Hilltopping Model

The goal of this model is to initialize a landscape and population upon it.
Individuals will then move with some probability uphill, simulating real life butterfly migration events. 
The probability of an individual moving up hill is dictated by a binomial distribution, with the probability of success being user-defined as the *pois.variance* variable.


The model assumes that individuals that migrate off the map are removed from the landscape, so the number of individuals at the peak in the end may not reflect the number of individuals initially created. 


