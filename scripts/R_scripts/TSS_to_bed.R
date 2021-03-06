library(gtools)
options(scipen=999)

myWD <- "/N/dc2/projects/ParameciumPromoters/stripeSeq/paraSTRIPE_analysis/tss"

setwd(myWD)

PnTSSset <- "Pn_TSSset-1.txt"
PoTSSset <- "Po_TSSset-1.txt"
PjTSSset <- "Pj_TSSset-1.txt"
PdTSSset <- "Pd_TSSset-1.txt"


AtTSS <- read.table(PnTSSset, header=TRUE)                                     
AtTSS.p <- AtTSS[AtTSS$strand=="+",]
AtTSS.m <- AtTSS[AtTSS$strand=="-",]
tss.p.start <- AtTSS.p$TSS - 1
tss.m.start <- AtTSS.m$TSS + 1
tss.p.end <- AtTSS.p$TSS
tss.m.end <- AtTSS.m$TSS

n.peaks <- 1:nrow(AtTSS)
peak.ids.p <- paste("tss", AtTSS.p$seq, tss.p.start, sep="_")
peak.ids.m <- paste("tss", AtTSS.m$seq, tss.m.end, sep="_")

AtTSS_df_p <- data.frame(cbind(as.character(AtTSS.p$seq), as.numeric(tss.p.start), as.numeric(tss.p.end), peak.ids.p, as.numeric(AtTSS.p$nTAGs), as.character(AtTSS.p$strand)))
AtTSS_df_m <- data.frame(cbind(as.character(AtTSS.m$seq), as.numeric(tss.m.end), as.numeric(tss.m.start), peak.ids.m, as.numeric(AtTSS.m$nTAGs), as.character(AtTSS.m$strand)))

colnames(AtTSS_df_p) <- c("chr","start", "end", "tssID", "nTAGs", "strand")
colnames(AtTSS_df_m) <- c("chr","start", "end", "tssID", "nTAGs", "strand")

AtTSS_df <- rbind(AtTSS_df_m, AtTSS_df_p)
colnames(AtTSS_df) <- c("chr","start", "end", "tssID", "nTAGs", "strand")
AtTSS_df <- AtTSS_df[order(mixedsort(AtTSS_df$chr), mixedsort(AtTSS_df$start)),]
print(head(AtTSS_df))
#AtTSS_df <- AtTSS_df[order(AtTSS_df$chr, as.numeric(AtTSS_df$start)),]
#print(head(AtTSS_df))

write.table(AtTSS_df, file="Pn_TSSset-1.bed", quote=FALSE, sep="\t", row.names=FALSE, col.names=FALSE)

######

AtTSS <- read.table(PoTSSset, header=TRUE)                                     
AtTSS.p <- AtTSS[AtTSS$strand=="+",]
AtTSS.m <- AtTSS[AtTSS$strand=="-",]
tss.p.start <- AtTSS.p$TSS - 1
tss.m.start <- AtTSS.m$TSS + 1
tss.p.end <- AtTSS.p$TSS
tss.m.end <- AtTSS.m$TSS

n.peaks <- 1:nrow(AtTSS)
peak.ids.p <- paste("tss", AtTSS.p$seq, tss.p.start, sep="_")
peak.ids.m <- paste("tss", AtTSS.m$seq, tss.m.end, sep="_")

AtTSS_df_p <- data.frame(cbind(as.character(AtTSS.p$seq), as.numeric(tss.p.start), as.numeric(tss.p.end), peak.ids.p, as.numeric(AtTSS.p$nTAGs), as.character(AtTSS.p$strand)))
AtTSS_df_m <- data.frame(cbind(as.character(AtTSS.m$seq), as.numeric(tss.m.end), as.numeric(tss.m.start), peak.ids.m, as.numeric(AtTSS.m$nTAGs), as.character(AtTSS.m$strand)))

colnames(AtTSS_df_p) <- c("chr","start", "end", "tssID", "nTAGs", "strand")
colnames(AtTSS_df_m) <- c("chr","start", "end", "tssID", "nTAGs", "strand")

AtTSS_df <- rbind(AtTSS_df_m, AtTSS_df_p)
colnames(AtTSS_df) <- c("chr","start", "end", "tssID", "nTAGs", "strand")
AtTSS_df <- AtTSS_df[order(mixedsort(AtTSS_df$chr), mixedsort(AtTSS_df$start)),]
print(head(AtTSS_df))
#AtTSS_df <- AtTSS_df[order(AtTSS_df$chr, as.numeric(AtTSS_df$start)),]
#print(head(AtTSS_df))

write.table(AtTSS_df, file="Po_TSSset-1.bed", quote=FALSE, sep="\t", row.names=FALSE, col.names=FALSE)

######

AtTSS <- read.table(PjTSSset, header=TRUE)                                     
AtTSS.p <- AtTSS[AtTSS$strand=="+",]
AtTSS.m <- AtTSS[AtTSS$strand=="-",]
tss.p.start <- AtTSS.p$TSS - 1
tss.m.start <- AtTSS.m$TSS + 1
tss.p.end <- AtTSS.p$TSS
tss.m.end <- AtTSS.m$TSS

n.peaks <- 1:nrow(AtTSS)
peak.ids.p <- paste("tss", AtTSS.p$seq, tss.p.start, sep="_")
peak.ids.m <- paste("tss", AtTSS.m$seq, tss.m.end, sep="_")

AtTSS_df_p <- data.frame(cbind(as.character(AtTSS.p$seq), as.numeric(tss.p.start), as.numeric(tss.p.end), peak.ids.p, as.numeric(AtTSS.p$nTAGs), as.character(AtTSS.p$strand)))
AtTSS_df_m <- data.frame(cbind(as.character(AtTSS.m$seq), as.numeric(tss.m.end), as.numeric(tss.m.start), peak.ids.m, as.numeric(AtTSS.m$nTAGs), as.character(AtTSS.m$strand)))

colnames(AtTSS_df_p) <- c("chr","start", "end", "tssID", "nTAGs", "strand")
colnames(AtTSS_df_m) <- c("chr","start", "end", "tssID", "nTAGs", "strand")

AtTSS_df <- rbind(AtTSS_df_m, AtTSS_df_p)
colnames(AtTSS_df) <- c("chr","start", "end", "tssID", "nTAGs", "strand")
AtTSS_df <- AtTSS_df[order(mixedsort(AtTSS_df$chr), mixedsort(AtTSS_df$start)),]
print(head(AtTSS_df))
#AtTSS_df <- AtTSS_df[order(AtTSS_df$chr, as.numeric(AtTSS_df$start)),]
#print(head(AtTSS_df))

write.table(AtTSS_df, file="Pj_TSSset-1.bed", quote=FALSE, sep="\t", row.names=FALSE, col.names=FALSE)

######

AtTSS <- read.table(PoTSSset, header=TRUE)                                     
AtTSS.p <- AtTSS[AtTSS$strand=="+",]
AtTSS.m <- AtTSS[AtTSS$strand=="-",]
tss.p.start <- AtTSS.p$TSS - 1
tss.m.start <- AtTSS.m$TSS + 1
tss.p.end <- AtTSS.p$TSS
tss.m.end <- AtTSS.m$TSS

n.peaks <- 1:nrow(AtTSS)
peak.ids.p <- paste("tss", AtTSS.p$seq, tss.p.start, sep="_")
peak.ids.m <- paste("tss", AtTSS.m$seq, tss.m.end, sep="_")

AtTSS_df_p <- data.frame(cbind(as.character(AtTSS.p$seq), as.numeric(tss.p.start), as.numeric(tss.p.end), peak.ids.p, as.numeric(AtTSS.p$nTAGs), as.character(AtTSS.p$strand)))
AtTSS_df_m <- data.frame(cbind(as.character(AtTSS.m$seq), as.numeric(tss.m.end), as.numeric(tss.m.start), peak.ids.m, as.numeric(AtTSS.m$nTAGs), as.character(AtTSS.m$strand)))

colnames(AtTSS_df_p) <- c("chr","start", "end", "tssID", "nTAGs", "strand")
colnames(AtTSS_df_m) <- c("chr","start", "end", "tssID", "nTAGs", "strand")

AtTSS_df <- rbind(AtTSS_df_m, AtTSS_df_p)
colnames(AtTSS_df) <- c("chr","start", "end", "tssID", "nTAGs", "strand")
AtTSS_df <- AtTSS_df[order(mixedsort(AtTSS_df$chr), mixedsort(AtTSS_df$start)),]
print(head(AtTSS_df))
#AtTSS_df <- AtTSS_df[order(AtTSS_df$chr, as.numeric(AtTSS_df$start)),]
#print(head(AtTSS_df))

write.table(AtTSS_df, file="Po_TSSset-1.bed", quote=FALSE, sep="\t", row.names=FALSE, col.names=FALSE)

######

AtTSS <- read.table(PdTSSset, header=TRUE)                                     
AtTSS.p <- AtTSS[AtTSS$strand=="+",]
AtTSS.m <- AtTSS[AtTSS$strand=="-",]
tss.p.start <- AtTSS.p$TSS - 1
tss.m.start <- AtTSS.m$TSS + 1
tss.p.end <- AtTSS.p$TSS
tss.m.end <- AtTSS.m$TSS

n.peaks <- 1:nrow(AtTSS)
peak.ids.p <- paste("tss", AtTSS.p$seq, tss.p.start, sep="_")
peak.ids.m <- paste("tss", AtTSS.m$seq, tss.m.end, sep="_")

AtTSS_df_p <- data.frame(cbind(as.character(AtTSS.p$seq), as.numeric(tss.p.start), as.numeric(tss.p.end), peak.ids.p, as.numeric(AtTSS.p$nTAGs), as.character(AtTSS.p$strand)))
AtTSS_df_m <- data.frame(cbind(as.character(AtTSS.m$seq), as.numeric(tss.m.end), as.numeric(tss.m.start), peak.ids.m, as.numeric(AtTSS.m$nTAGs), as.character(AtTSS.m$strand)))

colnames(AtTSS_df_p) <- c("chr","start", "end", "tssID", "nTAGs", "strand")
colnames(AtTSS_df_m) <- c("chr","start", "end", "tssID", "nTAGs", "strand")

AtTSS_df <- rbind(AtTSS_df_m, AtTSS_df_p)
colnames(AtTSS_df) <- c("chr","start", "end", "tssID", "nTAGs", "strand")
AtTSS_df <- AtTSS_df[order(mixedsort(AtTSS_df$chr), mixedsort(AtTSS_df$start)),]
print(head(AtTSS_df))
#AtTSS_df <- AtTSS_df[order(AtTSS_df$chr, as.numeric(AtTSS_df$start)),]
#print(head(AtTSS_df))

write.table(AtTSS_df, file="Pd_TSSset-1.bed", quote=FALSE, sep="\t", row.names=FALSE, col.names=FALSE)