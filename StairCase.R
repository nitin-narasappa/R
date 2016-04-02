
# This function prints the stair case with given number of steps
# Ex: StairCase(4) prints
#
#     #
#    ##
#   ###
#  ####
#------------------------

StairCase <- function (steps) {
    
    if(steps < 1) {
        cat("No steps")
    }
    else {
        for (i in 1:steps) {

            for (j in 1:steps) {

                if(j <= steps - i) {
                    cat(" ")
                } 
                else {
                    cat("#")
                }
            }
            cat("\n")
        }
    }
}
