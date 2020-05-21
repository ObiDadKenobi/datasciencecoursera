## R Programming - Melvin Lopez
## Assignment 1 
## Write a function named 'pollutantmean' that calculates the mean of a pollutant 
## (sulfate or nitrate) across a specified list of monitors
pollutantmean <-function(directory="specdata", pollutant="nitrate", id=1:332) {

  directory <-file.path(getwd(),directory) # Get fully qualified path to files appending value from directory
  idfilelist <-list.files(path=directory,full.names = TRUE) # Create list of all monitor files
  alldata <-data.frame() # create empty data frame to store subsetted data

    for (i in id) {
      # Loop through all monitor files and binds a subset of them together
      # or default of all 332 files
      alldata <- rbind(alldata, read.csv(idfilelist[i]))
    }
mean(alldata[[pollutant]],na.rm = TRUE) # Calculate mean of pollutant and strip out NA values 
                                        # defaults to nitrate and return the result
}


