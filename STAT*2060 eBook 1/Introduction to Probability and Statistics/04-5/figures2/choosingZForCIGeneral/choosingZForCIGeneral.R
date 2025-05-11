setwd("/Users/Nishan/Desktop")

library(openintro)
data(COL)

pdf('choosingZForCIGeneral.pdf', 1.2*6.3, 1.2*3.2)
par(mar=c(3.3,1,.5,1), mgp=c(2.1,0.6,0))
X <- rev(seq(-4, 4, 0.025))
Y <- dt(X, 10) # makes better visual
plot(X, Y, type='l', xlab='Z', ylab='', axes=FALSE, xlim=3.3*c(-1,1), ylim=c(0, 0.59), col=COL[6])
axis(1, at=-3:3) #at=c(-4, -2, 0, 2, 4))
abline(h=0) #, col='#00000088')

yMax <- 0.41

zalpha <- 1.61

axis(1, at=c(-zalpha,zalpha), 
     labels=c(expression('-z'[frac(alpha, 2)]), expression('z'[frac(alpha, 2)])),
     cex=5,
     outer=FALSE ) #at=c(-4, -2, 0, 2, 4))

# plot(1,1, main=expression('title'^2))
# plot(1,1, main=expression('title'[2]) )

X <- seq(-4, 4, 0.025)
Y <- dt(X, 10) # makes better visual
lines(X, Y, col=COL[6])

these <- (X < zalpha & X > -zalpha)
x <- c(-zalpha, X[these], zalpha)
y <- c(0, dt(X[these], 10), 0)
polygon(x, y, col=COL[1,], border='#00000000')

# these <- (X < 1.96 & X > -1.96)
# x <- c(-1.96, X[these], 1.96)
# y <- c(0, dt(X[these], 10), 0)
# polygon(x, y, col=COL[1], border='#00000000')


#yMax <- 0.53
#x <- zalpha*c(-1,1,1,-1)
#y <- c(1,1,1.19,1.19)*2*yMax/3 
#polygon(x, y, border='#FFFFFF55', col='#FFFFFF77', lwd=7)
#lines(zalpha*c(-1,1), rep(yMax,2), lwd=2)
arrows(zalpha*-1, yMax, zalpha*1, yMax, lwd=2, code = 3, length=0.15)
text(0, yMax, expression( (1 - alpha) ), pos=3, cex=1.1)

lines(rep(-zalpha,2), c(0,1.25*yMax), lty=2, col='#00000055', lwd=1.5)
lines(rep( zalpha,2), c(0,1.25*yMax), lty=2, col='#00000055', lwd=1.5)

arrows(zalpha*-1, yMax, -3.5, yMax, lwd=2, code = 3, length=0.15)
text( (zalpha*-1-3.5)/2, yMax, expression( frac(alpha, 2) ), pos=3, cex=1.1)

arrows(zalpha*1, yMax, 3.5, yMax, lwd=2, code = 3, length=0.15)
text( (zalpha*+1+3.5)/2, yMax, expression( frac(alpha, 2) ), pos=3, cex=1.1)

dev.off()