setwd("/Users/Nishan/Desktop")

library(openintro)
data(COL)

#===> plot <===#
#myPDF("uniform.pdf", 2.5, 1.3, mar=c(1.2,0,0.5,0), mgp=c(3,0.17,0))
myPDF("uniformBaristaLess30.pdf", 
      width=5, 
      height=2.5, 
      mar=c(1.9, 1.9, 0.25, 0.25), mgp=c(2.8, 0.55, 0) )

X <- seq(12,36,0.1)
# Y <- dnorm(X)
Y <- dunif(X, min(X), max(X) )
#plot(X, Y, type='l', axes=F, xlim=c(-3.4,3.4), ylim=c(0,1/16))
plot(X, Y, type='l', 
     ylim=c(0, 1.2/(max(X) - min(X))) , 
     xlim=c( min(X)-3.0, max(X)+3.0 ), 
     axes=F, xlab="", ylab="" )#, axes=F)
lines(X, Y)
segments( min(X),0, min(X),max(Y), lty=2 )
segments( max(X),0, max(X),max(Y), lty=2 )

#abline(h=0)
#abline(v=1)

axis(1, at=(min(X)-2):(max(X)+2) , cex.axis=0.7 )
#axis(2, at=seq(0, 1.6/(max(X) - min(X)), by=0.02 ) , cex.axis=0.7 )
axis(2, at=seq(0, 0.05, by=0.01 ) , cex.axis=0.7 )
#, label=(1500+300*(-3:3)), cex.axis=0.7)


#axis(1, at=-3:3, label=(1500+300*(-3:3)), cex.axis=0.7)
these <- which(X <= 30)
polygon(c(X[these[1]], X[these],X[rev(these)[1]]), c(0,Y[these],0), col=COL[1])

#arrows(1.3,0.28, 0.43, 0.28, length=0.07)
#text(1.3, 0.28, 'X=1630\nZ=0.43', pos=4, cex=0.7)

lines(X, Y, lwd=2)
abline(h=0)

dev.off()