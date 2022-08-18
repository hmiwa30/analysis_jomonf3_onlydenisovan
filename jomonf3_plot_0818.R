ah="onlydenisovan"
#fstatsa_ah####
filename <- sprintf("results/f3_FIN_%s.txt",ah)
outputname <- sprintf("results/picture/fstatsa_f3_%s.png",ah)
resultf3 <- read.table(filename,header=T)
resultf3.dat <- data.frame(sample=resultf3$pop3,
                           f3=resultf3$est)

phase3 <- read.table("E:\\hmiwa\\genome\\VCF\\Human\\1000G-phase3\\all_pops.txt",sep=",")

jork <- data.frame(sample=as.character(read.table("G:\\hmiwa\\m_20211215\\05_jomonf3\\Geno\\lista.txt")$V1[-1]),
                   pop=c(as.character(phase3$V3[-which(phase3$V1 %in% "YRI")]),
                         "Jomon","Jomon","Jomon","Jomon","Jomon","Jomon","Kofun","Jomon","Kofun","Jomon","Kofun","Jomon","Jomon","Jomon"))
jork$sample <- factor(jork$sample,levels=resultf3.dat$sample)                  
resultf3.dat <- merge(resultf3.dat,jork)
resultf3.dat$pop <- factor(resultf3.dat$pop,
                           levels=c("Africa","North-America","South-America",
                                    "Europe","South-Asia","East-Asia",
                                    "Jomon","Kofun"))
resultf3.dat <- resultf3.dat[order(resultf3.dat$sample,decreasing=F),]
resultf3.dat <- resultf3.dat[order(resultf3.dat$pop),]
resultf3.dat$sample <- factor(resultf3.dat$sample,
                              levels=resultf3.dat$sample)

library(ggplot2)
library(RColorBrewer)
display.brewer.pal(4,"RdYlBu")
col <- brewer.pal(4,"RdYlBu")

g <- ggplot(resultf3.dat,aes(x=f3,y=sample,color=pop)) + 
  geom_point(size=5) +
  labs(title = sprintf("All Autosomes / %s sites",ah),
       #subtitle = "サブタイトル",
       x = "F3(FIN, X; YRI)",y = "",
       #caption = "キャプション",
       color = "") +
  theme(text = element_text(size = 15)) + 
  theme(axis.text.x = element_text(size = 15)) +
  theme(axis.text.y = element_text(size = 15))
plot(g)

png(outputname,width = 800,height = 900)
plot(g)
dev.off()

#fstatsa2_ah####
filename <- sprintf("results/f3_FIN2_%s.txt",ah)
outputname <- sprintf("results/picture/fstatsa2_f3_%s.png",ah)
resultf3 <- read.table(filename,header=T)
resultf3.dat <- data.frame(sample=resultf3$pop3,
                           f3=resultf3$est)

phase3 <- read.table("E:\\hmiwa\\genome\\VCF\\Human\\1000G-phase3\\all_pops.txt",sep=",")

jork <- data.frame(sample=as.character(read.table("G:\\hmiwa\\m_20211215\\05_jomonf3\\Geno\\lista2.txt")$V1[-1]),
                   pop=c(as.character(phase3$V3[-which(phase3$V1 %in% "YRI")]),
                         "Jomon","Kofun"))
jork$sample <- factor(jork$sample,levels=resultf3.dat$sample)                  
resultf3.dat <- merge(resultf3.dat,jork)
resultf3.dat$pop <- factor(resultf3.dat$pop,
                           levels=c("Africa","North-America","South-America",
                                    "Europe","South-Asia","East-Asia",
                                    "Jomon","Kofun"))
resultf3.dat <- resultf3.dat[order(resultf3.dat$sample,decreasing=F),]
resultf3.dat <- resultf3.dat[order(resultf3.dat$pop),]
resultf3.dat$sample <- factor(resultf3.dat$sample,
                              levels=resultf3.dat$sample)

library(ggplot2)
library(RColorBrewer)
display.brewer.pal(4,"RdYlBu")
col <- brewer.pal(4,"RdYlBu")

g <- ggplot(resultf3.dat,aes(x=f3,y=sample,color=pop)) + 
  geom_point(size=5) +
  labs(title = sprintf("All Autosomes / %s sites",ah),
       #subtitle = "サブタイトル",
       x = "F3(FIN, X; YRI)",y = "",
       #caption = "キャプション",
       color = "") +
  theme(text = element_text(size = 15)) + 
  theme(axis.text.x = element_text(size = 15)) +
  theme(axis.text.y = element_text(size = 15))
plot(g)

png(outputname,width = 800,height = 900)
plot(g)
dev.off()

#fstatsa_ah_jpt####
filename <- sprintf("results/f3_JPT_%s.txt",ah)
outputname <- sprintf("results/picture/fstatsa_f3_jpt_%s.png",ah)
resultf3 <- read.table(filename,header=T)
resultf3.dat <- data.frame(sample=resultf3$pop3,
                           f3=resultf3$est)

phase3 <- read.table("E:\\hmiwa\\genome\\VCF\\Human\\1000G-phase3\\all_pops.txt",sep=",")

jork <- data.frame(sample=as.character(read.table("G:\\hmiwa\\m_20211215\\05_jomonf3\\Geno\\lista.txt")$V1[-1]),
                   pop=c(as.character(phase3$V3[-which(phase3$V1 %in% "YRI")]),
                         "Jomon","Jomon","Jomon","Jomon","Jomon","Jomon","Kofun","Jomon","Kofun","Jomon","Kofun","Jomon","Jomon","Jomon"))
jork$sample <- factor(jork$sample,levels=resultf3.dat$sample)                  
resultf3.dat <- merge(resultf3.dat,jork)
resultf3.dat$pop <- factor(resultf3.dat$pop,
                           levels=c("Africa","North-America","South-America",
                                    "Europe","South-Asia","East-Asia",
                                    "Jomon","Kofun"))
resultf3.dat <- resultf3.dat[order(resultf3.dat$sample,decreasing=F),]
resultf3.dat <- resultf3.dat[order(resultf3.dat$pop),]
resultf3.dat$sample <- factor(resultf3.dat$sample,
                              levels=resultf3.dat$sample)

library(ggplot2)
library(RColorBrewer)
display.brewer.pal(4,"RdYlBu")
col <- brewer.pal(4,"RdYlBu")

g <- ggplot(resultf3.dat,aes(x=f3,y=sample,color=pop)) + 
  geom_point(size=5) +
  labs(title = sprintf("All Autosomes / %s sites",ah),
       #subtitle = "サブタイトル",
       x = "F3(JPT, X; YRI)",y = "",
       #caption = "キャプション",
       color = "") +
  theme(text = element_text(size = 15)) + 
  theme(axis.text.x = element_text(size = 15)) +
  theme(axis.text.y = element_text(size = 15))
plot(g)

png(outputname,width = 800,height = 900)
plot(g)
dev.off()

#fstatsa2_ah_jpt####
filename <- sprintf("results/f3_JPT2_%s.txt",ah)
outputname <- sprintf("results/picture/fstatsa2_f3_jpt_%s.png",ah)
resultf3 <- read.table(filename,header=T)
resultf3.dat <- data.frame(sample=resultf3$pop3,
                           f3=resultf3$est)

phase3 <- read.table("E:\\hmiwa\\genome\\VCF\\Human\\1000G-phase3\\all_pops.txt",sep=",")

jork <- data.frame(sample=as.character(read.table("G:\\hmiwa\\m_20211215\\05_jomonf3\\Geno\\lista2.txt")$V1[-1]),
                   pop=c(as.character(phase3$V3[-which(phase3$V1 %in% "YRI")]),
                         "Jomon","Kofun"))
jork$sample <- factor(jork$sample,levels=resultf3.dat$sample)                  
resultf3.dat <- merge(resultf3.dat,jork)
resultf3.dat$pop <- factor(resultf3.dat$pop,
                           levels=c("Africa","North-America","South-America",
                                    "Europe","South-Asia","East-Asia",
                                    "Jomon","Kofun"))
resultf3.dat <- resultf3.dat[order(resultf3.dat$sample,decreasing=F),]
resultf3.dat <- resultf3.dat[order(resultf3.dat$pop),]
resultf3.dat$sample <- factor(resultf3.dat$sample,
                              levels=resultf3.dat$sample)

library(ggplot2)
library(RColorBrewer)
display.brewer.pal(4,"RdYlBu")
col <- brewer.pal(4,"RdYlBu")

g <- ggplot(resultf3.dat,aes(x=f3,y=sample,color=pop)) + 
  geom_point(size=5) +
  labs(title = sprintf("All Autosomes / %s sites",ah),
       #subtitle = "サブタイトル",
       x = "F3(JPT, X; YRI)",y = "",
       #caption = "キャプション",
       color = "") +
  theme(text = element_text(size = 15)) + 
  theme(axis.text.x = element_text(size = 15)) +
  theme(axis.text.y = element_text(size = 15))
plot(g)

png(outputname,width = 800,height = 900)
plot(g)
dev.off()

#fstatsa_ah_gbr####
filename <- sprintf("results/f3_GBR_%s.txt",ah)
outputname <- sprintf("results/picture/fstatsa_f3_gbr_%s.png",ah)
resultf3 <- read.table(filename,header=T)
resultf3.dat <- data.frame(sample=resultf3$pop3,
                           f3=resultf3$est)

phase3 <- read.table("E:\\hmiwa\\genome\\VCF\\Human\\1000G-phase3\\all_pops.txt",sep=",")

jork <- data.frame(sample=as.character(read.table("G:\\hmiwa\\m_20211215\\05_jomonf3\\Geno\\lista.txt")$V1[-1]),
                   pop=c(as.character(phase3$V3[-which(phase3$V1 %in% "YRI")]),
                         "Jomon","Jomon","Jomon","Jomon","Jomon","Jomon","Kofun","Jomon","Kofun","Jomon","Kofun","Jomon","Jomon","Jomon"))
jork$sample <- factor(jork$sample,levels=resultf3.dat$sample)                  
resultf3.dat <- merge(resultf3.dat,jork)
resultf3.dat$pop <- factor(resultf3.dat$pop,
                           levels=c("Africa","North-America","South-America",
                                    "Europe","South-Asia","East-Asia",
                                    "Jomon","Kofun"))
resultf3.dat <- resultf3.dat[order(resultf3.dat$sample,decreasing=F),]
resultf3.dat <- resultf3.dat[order(resultf3.dat$pop),]
resultf3.dat$sample <- factor(resultf3.dat$sample,
                              levels=resultf3.dat$sample)

library(ggplot2)
library(RColorBrewer)
display.brewer.pal(4,"RdYlBu")
col <- brewer.pal(4,"RdYlBu")

g <- ggplot(resultf3.dat,aes(x=f3,y=sample,color=pop)) + 
  geom_point(size=5) +
  labs(title = sprintf("All Autosomes / %s sites",ah),
       #subtitle = "サブタイトル",
       x = "F3(GBR, X; YRI)",y = "",
       #caption = "キャプション",
       color = "") +
  theme(text = element_text(size = 15)) + 
  theme(axis.text.x = element_text(size = 15)) +
  theme(axis.text.y = element_text(size = 15))
plot(g)

png(outputname,width = 800,height = 900)
plot(g)
dev.off()

#fstatsa2_ah_gbr####
filename <- sprintf("results/f3_GBR2_%s.txt",ah)
outputname <- sprintf("results/picture/fstatsa2_f3_gbr_%s.png",ah)
resultf3 <- read.table(filename,header=T)
resultf3.dat <- data.frame(sample=resultf3$pop3,
                           f3=resultf3$est)

phase3 <- read.table("E:\\hmiwa\\genome\\VCF\\Human\\1000G-phase3\\all_pops.txt",sep=",")

jork <- data.frame(sample=as.character(read.table("G:\\hmiwa\\m_20211215\\05_jomonf3\\Geno\\lista2.txt")$V1[-1]),
                   pop=c(as.character(phase3$V3[-which(phase3$V1 %in% "YRI")]),
                         "Jomon","Kofun"))
jork$sample <- factor(jork$sample,levels=resultf3.dat$sample)                  
resultf3.dat <- merge(resultf3.dat,jork)
resultf3.dat$pop <- factor(resultf3.dat$pop,
                           levels=c("Africa","North-America","South-America",
                                    "Europe","South-Asia","East-Asia",
                                    "Jomon","Kofun"))
resultf3.dat <- resultf3.dat[order(resultf3.dat$sample,decreasing=F),]
resultf3.dat <- resultf3.dat[order(resultf3.dat$pop),]
resultf3.dat$sample <- factor(resultf3.dat$sample,
                              levels=resultf3.dat$sample)

library(ggplot2)
library(RColorBrewer)
display.brewer.pal(4,"RdYlBu")
col <- brewer.pal(4,"RdYlBu")

g <- ggplot(resultf3.dat,aes(x=f3,y=sample,color=pop)) + 
  geom_point(size=5) +
  labs(title = sprintf("All Autosomes / %s sites",ah),
       #subtitle = "サブタイトル",
       x = "F3(GBR, X; YRI)",y = "",
       #caption = "キャプション",
       color = "") +
  theme(text = element_text(size = 15)) + 
  theme(axis.text.x = element_text(size = 15)) +
  theme(axis.text.y = element_text(size = 15))
plot(g)

png(outputname,width = 800,height = 900)
plot(g)
dev.off()

#fstatsa_ah_3pop####
filename1 <- sprintf("results/f3_FIN_%s.txt",ah)
filename2 <- sprintf("results/f3_GBR_%s.txt",ah)
filename3 <- sprintf("results/f3_JPT_%s.txt",ah)
filename <- c(filename1,filename2,filename3)

outputname <- sprintf("results/picture/fstatsa_f3_3pop_%s.png",ah)

resultf3.dat.3pop <- data.frame(sample=NULL,f3=NULL,pop=NULL,dat=NULL)

for(i in 1:3){
  resultf3 <- read.table(filename[i],header=T)
  
  resultf3.dat <- data.frame(sample=resultf3$pop3,f3=resultf3$est)
  
  phase3 <- read.table("E:\\hmiwa\\genome\\VCF\\Human\\1000G-phase3\\all_pops.txt",sep=",")
  
  jork <- data.frame(sample=as.character(read.table("G:\\hmiwa\\m_20211215\\05_jomonf3\\Geno\\lista.txt")$V1[-1]),
                     pop=c(as.character(phase3$V3[-which(phase3$V1 %in% "YRI")]),
                           "Jomon","Jomon","Jomon","Jomon","Jomon","Jomon","Kofun","Jomon","Kofun","Jomon","Kofun","Jomon","Jomon","Jomon"))
  jork$sample <- factor(jork$sample,levels=resultf3.dat$sample)                  
  resultf3.dat <- merge(resultf3.dat,jork)
  resultf3.dat.3pop <- data.frame(sample=append(as.character(resultf3.dat.3pop$sample),as.character(resultf3.dat$sample)),
                                  f3=append(as.character(resultf3.dat.3pop$f3),as.character(resultf3.dat$f3)),
                                  pop=append(as.character(resultf3.dat.3pop$pop),as.character(resultf3.dat$pop)),
                                  dat=append(as.character(resultf3.dat.3pop$dat),rep(c("FIN","GBR","JPT")[i],nrow(resultf3.dat))))
}


resultf3.dat$pop <- factor(resultf3.dat$pop,
                           levels=c("Africa","North-America","South-America",
                                    "Europe","South-Asia","East-Asia",
                                    "Jomon","Kofun"))
resultf3.dat <- resultf3.dat[order(resultf3.dat$sample,decreasing=F),]
resultf3.dat <- resultf3.dat[order(resultf3.dat$pop),]


resultf3.dat.3pop$pop <- factor(resultf3.dat.3pop$pop,
                                levels=c("Africa","North-America","South-America",
                                         "Europe","South-Asia","East-Asia",
                                         "Jomon","Kofun"))
resultf3.dat.3pop <- resultf3.dat.3pop[order(resultf3.dat.3pop$sample,decreasing=F),]
resultf3.dat.3pop <- resultf3.dat.3pop[order(resultf3.dat.3pop$pop),]
resultf3.dat.3pop$sample <- factor(resultf3.dat.3pop$sample,
                                   levels=resultf3.dat$sample)
resultf3.dat.3pop$f3 <- as.numeric(as.character(resultf3.dat.3pop$f3))

library(ggplot2)
library(RColorBrewer)
display.brewer.pal(4,"RdYlBu")
col <- brewer.pal(4,"RdYlBu")

g <- ggplot(resultf3.dat.3pop,aes(x=f3,y=sample,color=pop,shape=dat)) + 
  geom_point(size=5) +
  labs(title = sprintf("All Autosomes / %s sites",ah),
       #subtitle = "サブタイトル",
       x = "F3(FIN/GBR/JPT, X; YRI)",y = "",
       #caption = "キャプション",
       color = "",
       shape = "") +
  theme(text = element_text(size = 15)) + 
  theme(axis.text.x = element_text(size = 15)) +
  theme(axis.text.y = element_text(size = 15)) + 
  theme(axis.text.x = element_text(angle = 75)) +
  #scale_x_continuous(limits = c(-0.001, 0.03))
scale_x_continuous(limits = c(-0.001, 0.001+max(resultf3.dat.3pop$f3)))

plot(g)

png(outputname,width = 800,height = 900)
plot(g)
dev.off()

#fstatsa2_ah_3pop####
filename1 <- sprintf("results/f3_FIN2_%s.txt",ah)
filename2 <- sprintf("results/f3_GBR2_%s.txt",ah)
filename3 <- sprintf("results/f3_JPT2_%s.txt",ah)
filename <- c(filename1,filename2,filename3)

outputname <- sprintf("results/picture/fstatsa2_f3_3pop_%s.png",ah)

resultf3.dat.3pop <- data.frame(sample=NULL,f3=NULL,pop=NULL,dat=NULL)

for(i in 1:3){
  resultf3 <- read.table(filename[i],header=T)
  
  resultf3.dat <- data.frame(sample=resultf3$pop3,f3=resultf3$est)
  
  phase3 <- read.table("E:\\hmiwa\\genome\\VCF\\Human\\1000G-phase3\\all_pops.txt",sep=",")
  
  jork <- data.frame(sample=as.character(read.table("G:\\hmiwa\\m_20211215\\05_jomonf3\\Geno\\lista2.txt")$V1[-1]),
                     pop=c(as.character(phase3$V3[-which(phase3$V1 %in% "YRI")]),
                           "Jomon","Kofun"))
  jork$sample <- factor(jork$sample,levels=resultf3.dat$sample)                  
  resultf3.dat <- merge(resultf3.dat,jork)
  resultf3.dat.3pop <- data.frame(sample=append(as.character(resultf3.dat.3pop$sample),as.character(resultf3.dat$sample)),
                                  f3=append(as.character(resultf3.dat.3pop$f3),as.character(resultf3.dat$f3)),
                                  pop=append(as.character(resultf3.dat.3pop$pop),as.character(resultf3.dat$pop)),
                                  dat=append(as.character(resultf3.dat.3pop$dat),rep(c("FIN","GBR","JPT")[i],nrow(resultf3.dat))))
}


resultf3.dat$pop <- factor(resultf3.dat$pop,
                           levels=c("Africa","North-America","South-America",
                                    "Europe","South-Asia","East-Asia",
                                    "Jomon","Kofun"))
resultf3.dat <- resultf3.dat[order(resultf3.dat$sample,decreasing=F),]
resultf3.dat <- resultf3.dat[order(resultf3.dat$pop),]


resultf3.dat.3pop$pop <- factor(resultf3.dat.3pop$pop,
                                levels=c("Africa","North-America","South-America",
                                         "Europe","South-Asia","East-Asia",
                                         "Jomon","Kofun"))
resultf3.dat.3pop <- resultf3.dat.3pop[order(resultf3.dat.3pop$sample,decreasing=F),]
resultf3.dat.3pop <- resultf3.dat.3pop[order(resultf3.dat.3pop$pop),]
resultf3.dat.3pop$sample <- factor(resultf3.dat.3pop$sample,
                                   levels=resultf3.dat$sample)
resultf3.dat.3pop$f3 <- as.numeric(as.character(resultf3.dat.3pop$f3))

library(ggplot2)
library(RColorBrewer)
display.brewer.pal(4,"RdYlBu")
col <- brewer.pal(4,"RdYlBu")

g <- ggplot(resultf3.dat.3pop,aes(x=f3,y=sample,color=pop,shape=dat)) + 
  geom_point(size=5) +
  labs(title = sprintf("All Autosomes / %s sites",ah),
       #subtitle = "サブタイトル",
       x = "F3(FIN/GBR/JPT, X; YRI)",y = "",
       #caption = "キャプション",
       color = "",
       shape = "") +
  theme(text = element_text(size = 15)) + 
  theme(axis.text.x = element_text(size = 15)) +
  theme(axis.text.y = element_text(size = 15)) + 
  theme(axis.text.x = element_text(angle = 75)) +
  #scale_x_continuous(limits = c(-0.001, 0.03))
scale_x_continuous(limits = c(-0.001, 0.001+max(resultf3.dat.3pop$f3)))

plot(g)

png(outputname,width = 800,height = 900)
plot(g)
dev.off()
#fstatsa_ah_jomon(Funadomari)####
filename <- sprintf("results/f3_Jomon_%s.txt",ah)
outputname <- sprintf("results/picture/fstatsa_f3_jomon(Funadomari)_%s.png",ah)
resultf3 <- read.table(filename,header=T)
resultf3.dat <- data.frame(sample=resultf3$pop3,
                           f3=resultf3$est)

phase3 <- read.table("E:\\hmiwa\\genome\\VCF\\Human\\1000G-phase3\\all_pops.txt",sep=",")

jork <- data.frame(sample=as.character(read.table("G:\\hmiwa\\m_20211215\\05_jomonf3\\Geno\\lista.txt")$V1[-1]),
                   pop=c(as.character(phase3$V3[-which(phase3$V1 %in% "YRI")]),
                         "Jomon","Jomon","Jomon","Jomon","Jomon","Jomon","Kofun","Jomon","Kofun","Jomon","Kofun","Jomon","Jomon","Jomon"))
jork$sample <- factor(jork$sample,levels=resultf3.dat$sample)                  
resultf3.dat <- merge(resultf3.dat,jork)
resultf3.dat$pop <- factor(resultf3.dat$pop,
                           levels=c("Africa","North-America","South-America",
                                    "Europe","South-Asia","East-Asia",
                                    "Jomon","Kofun"))
resultf3.dat <- resultf3.dat[order(resultf3.dat$sample,decreasing=F),]
resultf3.dat <- resultf3.dat[order(resultf3.dat$pop),]
resultf3.dat$sample <- factor(resultf3.dat$sample,
                              levels=resultf3.dat$sample)

library(ggplot2)
library(RColorBrewer)
display.brewer.pal(4,"RdYlBu")
col <- brewer.pal(4,"RdYlBu")

g <- ggplot(resultf3.dat,aes(x=f3,y=sample,color=pop)) + 
  geom_point(size=5) +
  labs(title = sprintf("All Autosomes / %s sites",ah),
       #subtitle = "サブタイトル",
       x = "F3(Jomon(Funadomari), X; YRI)",y = "",
       #caption = "キャプション",
       color = "") +
  theme(text = element_text(size = 15)) + 
  theme(axis.text.x = element_text(size = 15)) +
  theme(axis.text.y = element_text(size = 15))
plot(g)

png(outputname,width = 800,height = 900)
plot(g)
dev.off()
#fstatsa2_ah_jomon(samples)####
filename <- sprintf("results/f3_Jomon2_%s.txt",ah)
outputname <- sprintf("results/picture/fstatsa2_f3_jomon(samples)_%s.png",ah)
resultf3 <- read.table(filename,header=T)
resultf3.dat <- data.frame(sample=resultf3$pop3,
                           f3=resultf3$est)

phase3 <- read.table("E:\\hmiwa\\genome\\VCF\\Human\\1000G-phase3\\all_pops.txt",sep=",")

jork <- data.frame(sample=as.character(read.table("G:\\hmiwa\\m_20211215\\05_jomonf3\\Geno\\lista2.txt")$V1[-1]),
                   pop=c(as.character(phase3$V3[-which(phase3$V1 %in% "YRI")]),
                         "Jomon","Kofun"))
jork$sample <- factor(jork$sample,levels=resultf3.dat$sample)                  
resultf3.dat <- merge(resultf3.dat,jork)
resultf3.dat$pop <- factor(resultf3.dat$pop,
                           levels=c("Africa","North-America","South-America",
                                    "Europe","South-Asia","East-Asia",
                                    "Jomon","Kofun"))
resultf3.dat <- resultf3.dat[order(resultf3.dat$sample,decreasing=F),]
resultf3.dat <- resultf3.dat[order(resultf3.dat$pop),]
resultf3.dat$sample <- factor(resultf3.dat$sample,
                              levels=resultf3.dat$sample)

library(ggplot2)
library(RColorBrewer)
display.brewer.pal(4,"RdYlBu")
col <- brewer.pal(4,"RdYlBu")

g <- ggplot(resultf3.dat,aes(x=f3,y=sample,color=pop)) + 
  geom_point(size=5) +
  labs(title = sprintf("All Autosomes / %s sites",ah),
       #subtitle = "サブタイトル",
       x = "F3(Jomon, X; YRI)",y = "",
       #caption = "キャプション",
       color = "") +
  theme(text = element_text(size = 15)) + 
  theme(axis.text.x = element_text(size = 15)) +
  theme(axis.text.y = element_text(size = 15))
plot(g)

png(outputname,width = 800,height = 900)
plot(g)
dev.off()