# Import the GGPLOT 2 library and plot a graph using the qplotfunction.  X axis is the sequence of 1:20 and the y axis is the x ^ 2.  Label the graph appropriately. install.packages("ggplot2", dependencies = TRUE)

library (ggplot2)

x <- 1:20; y = x^2

qplot(x,y,
  main = "X vs X squared",
  xlab = "X",
  ylab = "X squared")



      