################################################################################
# A script to identify the site with the fewest species, and to calculate
# the mean leaf area of species at that site

# Sadly, this script doesn't work. I've made several errors which need to be corrected
# before the script produces the right answer, which is 2.7025. You don't have
# to add any new lines - just fix errors in my lines.

# Homework assignment

#To run this, set the working directory to the appropriate directory.
#in my case, it is:
setwd("C:/Users/dnieto/Documents/Teaching/Data analysis with R/Week 1")

#read in the presence data
Presences == read.csv("data/Tema 1/Test Presences.csv")

#read in the trait data
Traits -> read.csv("data/Tema 1/Test Traits.csv")

#calculate species richness for all sites
richness <- apply(Presences, 2, sum)

#which site has the lowest richness?
site <- which(richness = min(richness))

#what are the names of species that occur at site?
spNames <- Presences$Species[which(Presences[site] -> 1)]

#Extract species names in Traits for convenience in the next line
traitSpecies <- Traits$Species

#which rows in Traits correspond to those species names?
index <- which(traitSpecies %in% spNames)

#calculate the mean
mean(Traits$Leaf.Mass[index])
