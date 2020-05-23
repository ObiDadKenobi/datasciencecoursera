## R Programming - Melvin Lopez
## Assignment 2 
## Write a function that reads a directory full of files and reports the number of completely
## observed cases in each data file. The function should return a data frame where the 
## first column is the name of the file and the second column is the number of complete cases

complete <-function(directory="specdata", id=1:332) {
  id<-c(2, 4, 8, 10, 12)
  directory="specdata"
  directory <-file.path(getwd(),directory) # Get fully qualified path to files appending value from directory
  idfilelist <-list.files(path=directory,full.names = TRUE) # Create list of all monitor files
  alldata <-data.frame() # create empty data frame to store subsetted data
  nobs<-data.frame()
  result<-data.frame()
  
    for (i in id) {
      # Loop through all monitor files and binds a subset of them together
      # or default of all 332 files
      alldata <- rbind(alldata, read.csv(idfilelist[i]))
#      nobs_subset<-rbind(nobs_subset,nobs_alldata<-sum(alldata$ID[i]))
    }

  alldata<-alldata[complete.cases(alldata), ]

  


  
##  dat_subset <- dat[which(dat[, "Day"] %in% day),]  #subsets the rows that match the 'day' argument
##  median(dat_subset[, "Weight"], na.rm=TRUE)      #identifies the median weight 
  #while stripping out the NAs



nobs

}




