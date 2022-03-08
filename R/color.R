par(mfrow = c(3, 3)) # Create a 2 x 2 plotting matrix
# The next 4 plots created will be plotted next to each other

# Plot 1
p1 <- ggplot(rnorm(100), density =.1)

print(pl + geom_histogram(binwidth = 0.1, aes(y = ..density..))
      + geom_density(colors = "red"))
# Plot 2
p2 <- plot(data_correct$knots,
     data_correct$temp) + 
     scale_color_manual(values=c("red", "blue", "green"))
# Plot 3
p3 <- plot(temp ~ pressure,
           data = data_correct) + 
           scale_color_manual(values=c("red", "blue", "green"))
# Plot 4
p4 <- ggplot(data_correct, aes(date, pressure)) +
            geom_density(aes(date, pressure), color = 'blue')

