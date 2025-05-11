setwd("/Users/Nishan/Desktop")

library(openintro)
data(COL)

#===> plot <===#
#myPDF("uniform.pdf", 2.5, 1.3, mar=c(1.2,0,0.5,0), mgp=c(3,0.17,0))

myPDF("uniformBarista80thPercentile.pdf", 
      #width=5,
      width=6.0,
      height=3.00,
      mar=c(2.5, 2.5, 0.25, 0.25), mgp=c(2.8, 0.55, 0) )

X <- seq(30,50,0.1)
Y <- dunif(X, min(X), max(X) )

plot(X, Y, type='l', 
     ylim=c(0, 1.2/(max(X) - min(X))) , 
     xlim=c( min(X)-2.0, max(X)+2.0 ), 
     axes=F, xlab="", ylab="" )
lines(X, Y)
segments( min(X),0, min(X),max(Y), lty=2 )
segments( max(X),0, max(X),max(Y), lty=2 )

#abline(h=0)
#abline(v=1)


axis(1, at=seq(min(X)-0, max(X)+0, by=2), 
     cex.axis=0.9, label=c("30","","","","","","","","t","","50") )

axis(2, at=seq(0, 0.06, by=0.01 ), cex.axis=0.9 )


segments(30+0.80*(max(X)-min(X)), 0, 
         30+0.80*(max(X)-min(X)), Y[length(Y)], lty=1, lwd=2)

these <- which(X <= 30+0.80*(max(X)-min(X)) )
polygon(c(X[these[1]], X[these],X[rev(these)[1]]), c(0,Y[these],0), col=COL[1])

arrows(30+0.5*0.80*(max(X)-min(X)), Y[length(Y)]+0.005, 
       30+0.5*0.80*(max(X)-min(X)), Y[length(Y)]-0.0075, col = 1:3, length=0.15)

#text(30+0.5*0.80*(max(X)-min(X)), Y[length(Y)]+0.005, 'P(x \u2264 t) = 0.80', 
text(30+0.5*0.80*(max(X)-min(X)), Y[length(Y)]+0.005, 'P(x < t) = 0.80', 
     pos=3, cex=1.0)

lines(X, Y, lwd=2)
abline(h=0)

dev.off()
