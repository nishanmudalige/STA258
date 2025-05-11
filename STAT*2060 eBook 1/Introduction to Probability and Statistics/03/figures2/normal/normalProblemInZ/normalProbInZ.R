library(openintro)
data(COL)

#===> plot <===#
myPDF("normalProbInZ.pdf", 5.0, 2.5, mar=c(1.2,0,1.5,0), mgp=c(3,0.17,0))

sfx=1.0
sfy=1.0

X <- seq(-4,4,0.01)
Y <- dnorm(X)
plot(sfx*X, sfy*Y, type='l', axes=F, 
     #xlim=c(-3.4,3.4),
     xlim=sfx*c(-3.4,3.4),
     ylab="", xlab="Z",
     main="Problem in Z")

axis(1, at=c(-3,-2,-1,0,1,2,3), 
     label=(0+c(-3,-2,-1,0,1,2,3)*1), cex.axis=0.8)


selectedX <- seq(-1.5,1.75,0.01)
cord.x <- c(-1.5, selectedX, 1.75) 
cord.y <- c(0, dnorm(selectedX) ,0)

polygon(sfx*cord.x, sfy*cord.y, col=COL[1+7*1])
#polygon(cord.x, cord.y, col=COL[4+(7*4)])

segments(X[which(X == median(X))],0,
         X[which(X == median(X))],sfy*max(Y),
         col=COL[6], lty=3, lwd=1.5 )


lines(sfx*X, sfy*Y)
abline(h=0)

dev.off()