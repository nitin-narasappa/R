
# This function reads the input from the user.

inputReader <- function(){

    # Iterate until quit request from user

    while(TRUE) {
        cat("Enter input. Type quit to exit\n")
        input <- readline()

        if(input == "quit") {
            cat("Bye !!\n")
            break()
        }
        
        if(isNumeric(input)) {
            cat(input, " is an integer.\n")
        }
        else if(is.character(input)) {
            cat(input, " is a string.\n")
        }
    }
}

# Function to check numbers
isNumeric <- function (toBeChecked) {
    grepl("[0-9]+$", toBeChecked)
}

