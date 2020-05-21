pollutantmean <-function(directory="specdata", pollutant="nitrate", id=1:332) {

#  pollutant <-"sulfate"
#  directory <-"specdata"
#  id<-1:332
  directory <-file.path(getwd(),directory)
  idfilelist <-list.files(path=directory,full.names = TRUE)
  alldata <-data.frame()

    for (i in id) {
      alldata <- rbind(alldata, read.csv(idfilelist[i]))
    }
mean(alldata[[pollutant]],na.rm = TRUE)

}


