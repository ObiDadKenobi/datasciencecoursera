  pollutant <-character(1)
  directory <-character(1)
  directory <-"specdata"
  pollutant <-"nitrate"
  id<-1:332
  directory <-file.path(getwd(),directory)
  idfilevector <-list.files(path=directory,full.names = TRUE)
  idfilelist <- as.list(idfilevector)
  datasetnames <- do.call(rbind,idfilelist[id])
  alldata<-matrix(,nrow=0,ncol=4,)
 
  df<-read.csv(idfilelist[[i]], header = T)
  
  datasetnames <- do.call(rbind,idfilelist[i])
  
  for (i in id) {
    df<-read.csv(idfilelist[[i]], header = TRUE)
    alldata <- rbind(alldata,df[[i]])
    
  }
  alldata2<<-alldata