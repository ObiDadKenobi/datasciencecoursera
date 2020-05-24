## R Programming - Melvin Lopez
## Assignment 2 
## Write a function that reads a directory full of files and reports the number of completely
## observed cases in each data file. The function should return a data frame where the 
## first column is the name of the file and the second column is the number of complete cases

complete <-function(directory="specdata", id=1:332) {

  monitorids<-c()         ## create empty vector to store ids from loop
  nobs<-c()               ## create empty vector to store row counts per file
  directory <-file.path(getwd(),directory)   # Get fully qualified path to files appending value from directory
  idfilelist <-list.files(path=directory,full.names = TRUE) # Create list of all monitor files
  alldata <-data.frame()  ## create empty data frame to store subsetted data
    for (i in id) {
      
      # Loop through each monitor data from ID input
      # or default of all 332 files
      
      alldata <- read.csv(idfilelist[i],header = TRUE) ## Read each filename from list
      alldata<-alldata[complete.cases(alldata), ]## Remove NAs from data before counting rows
      monitorids <-  c(monitorids, i)            ## Create a vector of IDs for the final result
      nobs <- c(nobs, nrow(alldata) )            ## Counts the rows for each subset into a vector
      
    }
  ## Combine result into a data frame
  data.frame(id=monitorids, nobs=nobs)
  
}




