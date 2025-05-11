setwd("/Users/Nishan/Desktop")

library(openintro)
data(COL)

#par(bg=adjustcolor(COL[1],alpha.f=0.5))


myPDF('vennComplement.pdf', 2.95, 1.75, mar=c(0.2, 0.2, 0.6, 0.2))
plot(c(0.2,1.8), c(0,1), type='n', axes=FALSE, xlab="", ylab="",bg=adjustcolor(COL[1],alpha.f=0.5) )
box()

rect(-1,-1,2,2, col = adjustcolor(COL[1],alpha.f=0.5), border = "transparent")

z <- seq(0,2*pi, len=10000)
x1 <- -cos(z)/2+0.7
y1 <- -sin(z)/2+0.5
lines(c(x1, x1[1]),c(y1, y1[1]))

x2 <- cos(z)/2+1.3
y2 <- sin(z)/2+0.5
lines(c(x2, x2[1]),c(y2, y2[1]))

text(0.7-0.4, 0.9, 'A')
text(1.3+0.4, 0.9, 'B')


#cord.x <- x1
#cord.y <- y1
#polygon(cord.x,cord.y,col='palegreen2', density=5.0)
#polygon(cord.x,cord.y,col=adjustcolor(COL[1],alpha.f=0.5))

cord.x1 <- x1[which(x1>0.5 & y1>0.1 & y1<0.9)]
cord.y1 <- y1[which(x1>0.5 & y1>0.1 & y1<0.9)]

cord.x2 <- x2[which(x2>1)] #& y2>0.1 & y2<0.9)]
cord.y2 <- y2[which(x2>1)] #& y2>0.1 & y2<0.9)]



cord.x <- c(cord.x1,cord.x2)
cord.y <- c(cord.y1,cord.y2)

polygon(x1,y1,col="white")
polygon(x2,y2,col="white")
polygon(cord.x2,cord.y2,col=adjustcolor(COL[1],alpha.f=0.5))
polygon(cord.x1,cord.y1,col="white")

segments(x0=1, y0=0.1, x1=1, y1=0.9, lwd=2, col ="white")


lines(c(x1, x1[1]),c(y1, y1[1]))
lines(c(x2, x2[1]),c(y2, y2[1]))

dev.off()