
# Create a list of movies
movies <- list(c(name="Titanic", heroin="Kate", hero="Leonardo"), c(name="HarryPotter"), myfavorate="Spiderman")

# print the list
> movies
[[1]]
      name     heroin       hero 
 "Titanic"     "Kate" "Leonardo" 

[[2]]
         name 
"HarryPotter" 

[[3]]
      myfavorate
[1] "Spiderman"

# Accessing first element
> movies[1]
[[1]]
      name     heroin       hero 
 "Titanic"     "Kate" "Leonardo"
 
 > movies[3]$myfavorate
[1] "Spiderman"
