setwd("/Users/Nishan/Desktop")

library(openintro)
data(COL)

#===> plot <===#
#myPDF("uniform.pdf", 2.5, 1.3, mar=c(1.2,0,0.5,0), mgp=c(3,0.17,0))

myPDF("uniformBarista.pdf", 
      #width=5,
      width=6.2,
      height=3.25,
      mar=c(2.2, 2.2, 0.25, 0.25), mgp=c(2.8, 0.55, 0) )

X <- seq(20,36,0.1)
# Y <- dnorm(X)
Y <- dunif(X, min(X), max(X) )
#plot(X, Y, type='l', axes=F, xlim=c(-3.4,3.4), ylim=c(0,1/16))
plot(X, Y, type='l', 
     ylim=c(0, 1.1/(max(X) - min(X))) , 
     xlim=c( min(X)-3.0, max(X)+6.5 ), 
     axes=F, xlab="", ylab="" )#, axes=F)
lines(X, Y)
segments( min(X),0, min(X),max(Y), lty=2 )
segments( max(X),0, max(X),max(Y), lty=2 )

#abline(h=0)
#abline(v=1)

axis(1, at=(min(X)-2):(max(X)+2) , cex.axis=1.0 )
#axis(2, at=seq(0, 1.6/(max(X) - min(X)), by=0.02 ) , cex.axis=0.7 )
axis(2, at=seq(0, 0.7, by=0.01 ) , cex.axis=1.0 )
#, label=(1500+300*(-3:3)), cex.axis=0.7)


#axis(1, at=-3:3, label=(1500+300*(-3:3)), cex.axis=0.7)
these <- which(X <= 25)
#polygon(c(X[these[1]], X[these],X[rev(these)[1]]), c(0,Y[these],0), col=COL[1])

arrows(X[length(X)]+2, Y[length(Y)], X[length(X)]+0.25, Y[length(Y)], col = 1:3, length=0.15)
text(X[length(X)]+2, Y[length(Y)], 'f(x) = 1/16\n      = 0.0625', 
     pos=4, cex=1.1)
#text(X[length(X)]+2, Y[length(Y)]-0.01, 'X=1630\nZ=0.43', pos=4, cex=0.7)
#text(1.3, 0.28, 'X=1630\nZ=0.43', pos=4, cex=0.7)

#segments(X[1], Y[length(Y)], X[1]-50, Y[length(Y)], lty=2)
#text(1.3, 0.28, 'X=1630\nZ=0.43', pos=4, cex=0.7)

lines(X, Y, lwd=2)
abline(h=0)

dev.off()