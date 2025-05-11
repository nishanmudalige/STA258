setwd("/Users/Nishan/Desktop")

library(openintro)
data(COL)

#===> plot <===#
#myPDF("uniform.pdf", 2.5, 1.3, mar=c(1.2,0,0.5,0), mgp=c(3,0.17,0))

myPDF("uniformBarist3045.pdf", 
      #width=5,
      width=6.0,
      height=3.00,
      mar=c(2.5, 2.5, 0.25, 0.25), mgp=c(2.8, 0.55, 0) )

X <- seq(30,50,0.1)
Y <- dunif(X, min(X), max(X) )

plot(X, Y, type='l', 
     ylim=c(0, 1.2/(max(X) - min(X))) , 
     xlim=c( min(X)-2.0, max(X)+2.0 ), 
     axes=F, xlab="", ylab="" )#, axes=F)
lines(X, Y)
segments( min(X),0, min(X),max(Y), lty=2 )
segments( max(X),0, max(X),max(Y), lty=2 )


axis(1, at=seq(min(X)-2, max(X)+2, by=1) , cex.axis=0.9 )
axis(2, at=seq(0, 0.06, by=0.01 ) , cex.axis=0.9 )

these <- which(X <= 40 & X >= 35)
polygon(c(X[these[1]], X[these],X[rev(these)[1]]), c(0,Y[these],0), col=COL[1])



#segments(X[1], Y[length(Y)], X[1]-50, Y[length(Y)], lty=2)

lines(X, Y, lwd=2)
abline(h=0)

dev.off()