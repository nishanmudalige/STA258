library(openintro)
data(email50)
data(COL)

H <- hist(email50$num_char, breaks=12, plot=FALSE)
counts <- rbind(H$counts)
colnames(counts) <- paste(H$breaks[1:15], 'to', H$breaks[2:16])
require(xtable)
xtable(counts)

myPDF("email50NumCharHist.pdf", 1.1*5.5, 3.3, mar=c(3.5,3.5,0.15,1), mgp=c(2.4,0.7,0))
histPlot(email50$num_char, breaks=12, xlab='Number of Characters (in thousands)', ylab="Frequency", ylim=c(0, 23), col=COL[1], border=COL[5])
dev.off()


myPDF("email50NumCharHistRelFreq.pdf", 1.1*5.5, 3.3, mar=c(3.5,3.5,0.15,1), mgp=c(2.4,0.7,0))
h<-hist(email50$num_char, breaks=12, plot=FALSE)
h$counts <- h$counts / sum(h$counts)
plot(h, freq=TRUE, ylab="Relative Frequency", xlab='Number of Characters (in thousands)', main="",
col=COL[4], ylim=c(0, 0.40))
dev.off()