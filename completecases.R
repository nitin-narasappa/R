# This function reads a directory full of files and reports the number of completely observed cases in each data file.
# @param directory <- directory of sample data
# @param id <- file ids to read.
# This program assumes that there are 10 files which are to be checked.
complete <- function(directory, ids = 1:10) {
    totalNoNARows <- data.frame(id = numeric(length(ids)),  nobs = numeric(length(ids)))  # total No-NA rows for all tables
    for(i in 1:length(ids)) {
        fileName <- paste(directory, "/", formatC(ids[i], width=3, flag="0"), ".csv", sep ="")
        infotable <- read.csv(fileName)
        totalNoNARows$id[i] <- ids[i]
        totalNoNARows$nobs[i] <- sum(complete.cases(infotable))
    }
    totalNoNARows
}
