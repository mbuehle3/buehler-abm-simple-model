# Hilltopping Model

The goal of this model is to initialize a landscape and population upon it.
Individuals will then move with some probability uphill, simulating real life butterfly migration events. 
The probability of an individual moving up hill is dictated by a binomial distribution, with the probability of success being user-defined as the \textttt{pois.variance} variable.




