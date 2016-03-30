
# The input for this program is a directoy which contains files with either sulfate or nitrate pollution index.
# The second input chemical for which the mean is to be found out - sulfate or nitrate.
# Typically the file contents are as follows:
#    "Date","sulfate","nitrate","ID"
#    "2001-01-01",NA,NA,2
#    "2001-01-16",NA,NA,2
#    "2001-01-19",2.3,0.699,2
#    "2001-01-20",NA,NA,2
#    "2001-01-25",2.19,4.97,2
#
# The program assumes that there are 332 file containing the pollution information.
#-------------------------------------------------------------------------------------------------------
# This function calculates the mean of a pollutant (sulfate/nitrate) across a specified list of monitor.
# @param directory <- directory of sample data
# @param polutant <- sulphate or nitrate polutant
# @param id <- file ids to read.
pollutantmean <- function(directory, polutant, id = 1:332) {
    totalRows <- 0  # total row for all tables
    totalPoll <- 0  # mean of polutant for each table
    totalSum  <- 0  # total polutant for all tables.
    for(i in id) {
        fileName <- paste(directory, "/", formatC(i, width=3, flag="0"), ".csv", sep ="")
        infotable <- read.csv(fileName)
        totalPoll <- totalPoll + mean(na.omit(infotable[[polutant]]))
        totalRows <- totalRows + NROW(na.omit(infotable[[polutant]]))
        totalSum  <- totalSum + sum(na.omit(infotable[[polutant]]))
    }
    
    totalSum/totalRows
}
