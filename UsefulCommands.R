# Some of the useful R commands :
#--------------------------------

mytable <- read.csv("hw1_data.csv")   # read table.

nomissing <- complete.cases(mytable)  # define no NA function.

mytable[nomissing, ]                  # apply  nomissing function on entire table.

summary(mytable) 		                  # summary of table (min, max, mean etc). NOTE: NAs are counted for calcuation.

colMeans(mytable)	                  	# mean of columns for entire table.

mean(mytable[["col1"]])	              # mean of column "col1" of the table

sort(dat$Solar.R, decreasing = TRUE)	# sort the data column in decreasing order.

mytable[151:153, ]		                # last 3 rows of mytable which contains 153 rows

mytable[47, "Ozone"]		              # value of Ozone at row #47

formatC(id, width=3, flag="0")        # format single digit to 3 digits padded with zeros


#  To be updated 
#---------------
