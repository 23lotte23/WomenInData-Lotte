# Write an R program to create three vectors a, b, c with 5 integers. Combine the three vectors to become a 3×5 matrix where each column represents a vector. Print the content of the matrix. Plot a graph and label correctly.

vtr1 = c(1:5)
vtr2 = c(6:10)
vtr3 = c(11:15)
m <- matrix(c(vtr1, vtr2, vtr3), ncol = 3)
print (m)
plot(m)

