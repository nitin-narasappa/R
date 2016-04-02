# Examples of graphs/chars in R

# High-level plotting commands:	High-level plotting functions are designed to generate a complete plot of the data passed as arguments to the function.
# Low-level plotting commands:	Functions don’t produce exactly the kind of plot you desire  	
# Interacting with graphics: Functions which allow users to extract or add information to a plot using a mouse

# Create two vectors of Year and Average temperature
xaxis <- c(1990, 1995, 2000)
yaxis <- c(35, 45, 55)

# plot the graph with x-axis, y-axis, type line, xlabel, ylabel, colour attributes
plot(xaxis, yaxis, type="l", xlab="Year", ylab="Average Temp", col="red")

# If you want two lines to be drawn on top of each other use par(new=TRUE) in between the two plots.
# The following will show years as line and temperature as points on the same graph.
plot(1:3, xaxis, xlab="", ylab="", type="l")
par(new=TRUE)
plot(1:3, yaxis, xlab="", ylab="", type="p")

# low-level command example is legend function.
plot(xaxis, yaxis, xlab="", ylab="", type="s")
legend(x="topleft", y=NULL, bty="o", lty=c(1,1), col=c("blue","black"),
       legend=c("Year (left scale)", "Average Temp (right scale)"))

# Example of Pie Chart, showing country population
population <- c(50, 120, 20, 150, 8)
countries <- c("US", "India", "Australia", "China", "France")
pie(population, labels = countries, main="Pie Chart of Countries")

# Bar plot of the same information
barplot(population, main="Population", xlab="Countries", names.arg = countries)

# Creating a pdf with a command.
pdf("demo2.pdf", width=5.6, height=2.8, bg="yellow", pointsize=8)



# Creating a pdf with a command.
pdf("demo2.pdf", width=5.6, height=2.8, bg="yellow", pointsize=8)



