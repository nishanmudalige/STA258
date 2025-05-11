library("plotrix")
library(openintro)
setwd("/Users/Nishan/Desktop")

set.seed(4)


myPDF("figureShowingPopulationAndSample.pdf", 5, 3, mar=rep(0, 4))

# Ellipse representing Population
plot(c(0,10), c(0,11), type="n", main="", axes=F, xlab="", ylab="")
draw.ellipse(x=5, y=7.5, a=4, b=2 , lwd=1.37)

N <- 1500

rho <- runif(N, 0, 1)
phi <- runif(N, 0, 2*pi)
x = sqrt(rho) * cos(phi)
y = sqrt(rho) * sin(phi)

width <- 7.8
height <- 3.8

x = (x*width/2.0) + 5
y = (y*height/2.0) + 7.5

#colmatrix <- COL[c(1:4, 6,7), 2:3]
#colmatrix <- COL[c(1:4, 6), 2:3]
colmatrix <- COL[1:4, 2:3]
popcolors <- sample(colmatrix, N, replace=TRUE)

points(x,y, xlim=c(0,5), ylim=c(0,5), pch=16, cex=0.6, col=alpha(popcolors,0.5) )


text(x=1, y=10.25, labels="Population", cex=1.0)
text(x=1.0, y=9.65, labels="(Contains parameters)", cex=0.6)




# Ellipse representing Sample
draw.ellipse(x=5, y=2.0, a=2, b=1 , lwd=1.37)

N <- 200

rho <- runif(N, 0, 1)
phi <- runif(N, 0, 2*pi)
x = sqrt(rho) * cos(phi)
y = sqrt(rho) * sin(phi)

width <- 3.8
height <- 1.8

x = (x*width/2.0) + 5
y = (y*height/2.0) + 2.0

#colmatrix <- COL[1:4,2:3]
sampcolors <- sample(colmatrix, N, replace=TRUE)

points(x,y, xlim=c(0,5), ylim=c(0,5), pch=16, cex=0.6, col=alpha(sampcolors,0.5) )

text(x=1, y=2.75, labels="Sample", cex=1.0)
text(x=1.1, y=2.15, labels="(Used to calculate statistics)", cex=0.6)




# Arrows
arrows(x0=5, y0=5.25, x1=5, y1=3.25, length=0.15)
text(x=5.75, y=4.4, labels="Draw", cex=0.9)

dev.off()