setwd("/Users/Nishan/Desktop")

library(openintro)
data(COL)


myPDF('vennIntersection.pdf', 2.95, 1.75, mar=c(0.2, 0.2, 0.6, 0.2))
plot(c(0.2,1.8), c(0,1), type='n', axes=FALSE, xlab="", ylab="")
box()

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

cord.x2 <- x2[which(x2<1.2 & y2>0.1 & y2<0.9)]
cord.y2 <- y2[which(x2<1.2 & y2>0.1 & y2<0.9)]

cord.x <- c(cord.x1,cord.x2)
cord.y <- c(cord.y1,cord.y2)

polygon(cord.x,cord.y,col=adjustcolor(COL[1],alpha.f=0.5))
dev.off()