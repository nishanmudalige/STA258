setwd("/Users/Nishan/Desktop")

library(openintro)
data(COL)

myPDF('pvalTwoTailversion2.pdf', 1.2*6.3, 1.2*3.2)
par(mar=c(3.3,1,.5,1), mgp=c(2.1,0.6,0))
#par(mar=c(3.3,1,.5,1), mgp=c(2.1,0.6,0))

X <- rev(seq(-4, 4, 0.025))
Y <- dt(X, 10) # makes better visual
plot(X, Y, type='l', xlab='', ylab='', axes=FALSE, xlim=3.3*c(-1,1), ylim=c(0, 0.50), col=COL[6])
axis(1, at=-3:3, labels=rep("",length(-3:3)) ) #at=c(-4, -2, 0, 2, 4))
abline(h=0) #, col='#00000088')

yMax <- 0.41

zalpha <- -1.6

axis(1, at=zalpha, labels=c("-|Test Statistic| "))

X <- seq(-4, 4, 0.025)
Y <- dt(X, 10) # makes better visual
lines(X, Y, col=COL[6])

these <- (X < zalpha)
x <- c(zalpha, X[these], zalpha)
y <- c(0, dt(X[these], 10), 0)
polygon(x, y, col=COL[1,], border='#00000000')

#lines(rep( zalpha,2), c(0,1.2*yMax), lty=2, col='#00000055', lwd=1.5)
epsilon <- 0.05
ym <- max(y)+epsilon

segments(zalpha, ym, -3.5, ym, lwd=2, )
segments(zalpha, ym-epsilon/3, zalpha, ym, lwd=2, )
segments(-3.5, ym-epsilon/3, -3.5, ym, lwd=2, )
segments( (zalpha-3.5)/2 , ym, (zalpha-3.5)/2, ym+epsilon/3, lwd=2, )

text((zalpha-3.5)/2, ym+epsilon/1.5, "1/2 the p-value")








zalpha <- -zalpha

axis(1, at=zalpha, labels=c("|Test Statistic| "))

X <- seq(-4, 4, 0.025)
Y <- dt(X, 10) # makes better visual
lines(X, Y, col=COL[6])

these <- (X > zalpha)
x <- c(zalpha, X[these], zalpha)
y <- c(0, dt(X[these], 10), 0)
polygon(x, y, col=COL[1,], border='#00000000')

#lines(rep( zalpha,2), c(0,1.2*yMax), lty=2, col='#00000055', lwd=1.5)
epsilon <- 0.05
ym <- max(y)+epsilon

segments(zalpha, ym, 3.5, ym, lwd=2, )
segments(zalpha, ym-epsilon/3, zalpha, ym, lwd=2, )
segments(3.5, ym-epsilon/3, 3.5, ym, lwd=2, )
segments( (zalpha+3.5)/2 , ym, (zalpha+3.5)/2, ym+epsilon/3, lwd=2, )

text((zalpha+3.5)/2, ym+epsilon/1.5, "1/2 the p-value")


# arrows(x0=-0.75, y0=1.1*yMax ,
#        x1=-2.5, y1=yMax/1.75,
#        length=0.15)
# 
# arrows(x0=0.75, y0=1.1*yMax ,
#        x1=2.5, y1=yMax/1.75,
#        length=0.15)


text(-0.8, 1.15*yMax, "Sum of area \n in both tails")
text(0, 1.15*yMax, "=")

text(0.5, 1.15*yMax, "p-value")



 text(-2, 0.5, 
      expression("H"[a] ~ ":"~
                   gamma ~ "=" ~ gamma[0]) )

text(-1.86, 0.5, c("/") )


dev.off()