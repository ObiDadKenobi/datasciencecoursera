corr<-function(directory="specdata", threshold = 0) {
  directory <-file.path(getwd(),directory) # Get fully qualified path to files appending value from directory
  idfilelist <-list.files(path=directory,full.names = TRUE) # Create list of all monitor files
  alldata <-data.frame() # create empty data frame to store subsetted data
  
  for (i in 1:332) {
    # Loop through all monitor files and binds a subset of them together
    # or default of all 332 files
    alldata <- rbind(alldata, read.csv(idfilelist[i]))
  }
    
    alldata<-alldata[complete.cases(alldata), ]
    #
    alldata <- as.data.table(alldata)
    
#correlate data and compare against the threshold
    alldata<-alldata[, .(nobs = .N, corr = cor(x=sulfate, y=nitrate)), by = ID][nobs > threshold]
    return(alldata[, corr])
    
  }


