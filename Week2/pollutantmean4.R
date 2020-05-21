pollutantmean <-function(directory="specdata", pollutant="nitrate", id=1:332) {

  pollutant <-character(1)
  directory <-character(1)
  directory <-"specdata"
  pollutant <-"nitrate"
  id<-1:332
  directory <-file.path(getwd(),directory)
  idfilevector <-list.files(path=directory,full.names = TRUE)
  idfilelist <- as.list(idfilevector)
  datasetnames <- do.call(rbind,idfilelist[id])
  means <-numeric(nc)
#  alldata<-matrix(ncol=4,dimnames = NULL)
  
  ##'Retrieve file list of each csv using the constructed
  ##'directory and insert into a list as index with full path names)
  df<-read.csv(idfilelist[[i]], header = T)
  
  datasetnames <- do.call(rbind,idfilelist[i])
  
    for (i in id) {
      df<-read.csv(idfilevector[i], header = T,)
      nc <-ncol(df)
      means <-numeric(nc)
      alldata <- rbind(alldata,df[i])

    }
alldata2<<-alldata
##bad <-is.na(meanresult)
##meanresult<-meanresult[!bad]
##meanresult<-alldata2[pollutant]
##mean(meanresult)
}






