library("plotrix")
library(openintro)

# plot(c(0,10), c(0,10), type="n", main="test draw.ellipse")
# #draw.ellipse(c(3,7), c(8,8), c(0.5,1), c(1,0.5), col=c(2,4), angle=c(45,0) )
# #draw.ellipse(x=c(3,7), y=c(8,8), a=c(0.5,1), b=c(1,0.5) )
# draw.ellipse(x=5, y=8, a=2, b=1 )
# #draw.ellipse(x=3, y=8, a=0.5, b=1 )


setwd("/Users/Nishan/Desktop")

# set.seed(2)

# N <- 100
# r <- sqrt(runif(N))
# t <- 2*pi*runif(N)
# x <- r*cos(t)
# y <- r*sin(t)
# 
# points(x+5,y+8,pch="+",col="blue",xlim=c(-1,1),ylim=c(-1,1))



plot(c(0,10), c(0,10), type="n", main="test draw.ellipse")
#draw.ellipse(c(3,7), c(8,8), c(0.5,1), c(1,0.5), col=c(2,4), angle=c(45,0) )
#draw.ellipse(x=c(3,7), y=c(8,8), a=c(0.5,1), b=c(1,0.5) )
draw.ellipse(x=5, y=7.5, a=4, b=2 , lwd=1.37)


N <- 2000

rho <- runif(N, 0, 1)
phi <- runif(N, 0, 2*pi)
x = sqrt(rho) * cos(phi)
y = sqrt(rho) * sin(phi)

width <- 7.8
height <- 3.8

x = (x*width/2.0) + 5
y = (y*height/2.0) + 7.5

pch <- c(1, 20)[sample(2, N, TRUE, c(0.8, 1.2))]

colmatrix <- COL[1:4,2:3]
popcolors <- sample(colmatrix, N, replace=TRUE)

points(x,y, xlim=c(0,5), ylim=c(0,5), pch=19, cex=1.5, col=popcolors)
