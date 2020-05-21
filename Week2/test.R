
pollutant <-character(1)
directory <-character(1)
directory <-"specdata"
pollutant <-"nitrate"
id<-1:332
directory <-file.path(getwd(),directory)
idfilevector <-list.files(path=directory,full.names = TRUE)
idfilelist <- as.list(idfilevector)
df<- do.call(rbind,lapply(idfilevector,read.csv, header=TRUE))
datasetnames <- do.call(rbind,idfilelist[id])

nc <-nrow(332)
df <-character(nc)
  for i in 1:nc {
    df[i] <-read.csv(idfilevector[i],header = TRUE)
  }
df
