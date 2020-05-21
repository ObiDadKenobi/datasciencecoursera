pollutantmean <-function(directory="specdata", pollutant="nitrate", id=1:332) {

  pollutant <-character(1)
  directory <-character(1)
  directory <-"specdata"
  pollutant <-"nitrate"
  id<-1:5
  directory <-file.path(getwd(),directory)
  idfilevector <-list.files(path=directory,full.names = TRUE)
  idfilelist <- as.list(idfilevector)
  df<- do.call(rbind,lapply(idfilevector[id],read.csv, header=TRUE))

    for (i in id) {


    }
alldata2<<-alldata
##bad <-is.na(meanresult)
##meanresult<-meanresult[!bad]
##meanresult<-alldata2[pollutant]
##mean(meanresult)
}

x <- 1:10
if(x > 5) {
  x[x] <- 0
}

legnth(x)


