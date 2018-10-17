pdf( "histogram.pdf", height=3.375, width=6 )
par( xpd=TRUE )

df <- read.table( "SRR891626.htseq" )
hist( log10(df$V2), breaks=0:8, main="" )

segments( 2.5, -50, 2.5, -550, col="red", lwd=4 )
text( 2.5, -920, "A", col="red" )
segments( 4.5, -50, 4.5, -550, col="red", lwd=4 )
text( 4.5, -920, "B", col="red" )

dev.off()
