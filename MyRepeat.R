# Explation of rep() function.
# This function repeats the element the given number of times.
# NOTE the difference between the "times" and "each" argument.

n <- c(2, 3)

# Times: this will repeat five copies of n.
> rep(n, times=3)
[1] 2 3 2 3 2 3

# Each: will repeat each element of n 3 times before printing the next element.
> rep(n, each=3)
[1] 2 2 2 3 3 3
