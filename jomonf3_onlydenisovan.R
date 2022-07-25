pops <- read.csv("downloads/1KG/1000G.p3.name.csv",header=F)

test_sum <- as.vector(pops$V1[-c(1)])
test_sum <- append(test_sum,c("Jomon","IK002.maf001_Jomon","JpFu1","JpKo13","JpHi01","JpKo2","JpIw31","JpOd181","JpIw32","JpOd274","JpIw33","JpOd282","JpKa6904","JpOd6"))
test_pop <- as.vector(pops$V7[-c(1)])
test_pop <- append(test_pop,c("Jomon","IK002.maf001_Jomon","JpFu1","JpKo13","JpHi01","JpKo2","JpIw31","JpOd181","JpIw32","JpOd274","JpIw33","JpOd282","JpKa6904","JpOd6"))
df1 <- data.frame(v1=test_sum,v2="U",v3=test_pop)
write.table(df1,"analysis_jomonf3_onlydenisovan/results/j_f3_analysis_onlydenisovan.ind",quote=F,col.names=F,row.names=F)

test_pop2 <- as.vector(pops$V7[-c(1)])
test_pop2 <- append(test_pop2,c("Jomon","Jomon","Jomon","Jomon","Jomon","Jomon","Kofun","Jomon","Kofun","Jomon","Kofun","Jomon","Jomon","Jomon"))
df1 <- data.frame(v1=test_sum,v2="U",v3=test_pop2)
write.table(df1,"analysis_jomonf3_onlydenisovan/results/j_f3_analysis2_onlydenisovan.ind",quote=F,col.names=F,row.names=F)

ah = "onlydenisovan"
out <- file(sprintf("analysis_jomonf3_onlydenisovan/results/j_f3_analysis_%s.geno",ah),"w")
out2 <- file(sprintf("analysis_jomonf3_onlydenisovan/results/j_f3_analysis_%s.snp",ah),"w")
#set.seed(123)
start.time<-proc.time()


for(chrnum in 1:22){
  dfa <- read.csv(sprintf("analysis_jomonf3_archaichom./chr%s-yri0altai1.csv",chrnum))
  dfd <- read.csv(sprintf("analysis_jomonf3_archaichom./chr%s-yri0denisova1.csv",chrnum))
  
  df_ad <- merge(dfa,dfd,by.x="POS",by.y="POS",all.x=F,all.y=T)
  write.csv(df_ad,sprintf("analysis_jomonf3_onlydenisovan/results/chr%s-yri0al1den1.csv",chrnum),row.names=F)
  df <- subset(df_ad,df_ad[,2]==NA)
  write.csv(df,sprintf("analysis_jomonf3_onlydenisovan/results/chr%s-yri0al0den1.csv",chrnum),row.names=F)
}

for(chrnum in 1:22){
  df <- read.csv(sprintf("analysis_jomonf3_onlydenisovan/results/chr%s-yri0al0den1.csv",chrnum))
  r <- df[,1]

  if(chrnum < 10){
    f <- file(sprintf("j_merged0%s.txt",chrnum),"r")
  }else{
    f <- file(sprintf("j_merged%s.txt",chrnum),"r")
  }
  
  repeat{
    #reading data
    v1 <- readLines(con=f,1)
    v2 <- NULL
    if(length(v1)==0){break}
    
    tmp <- as.vector(strsplit(v1,"\t")[[1]])
    if((nchar(tmp[4])==1) && (nchar(tmp[5])==1)){
      chr <- tmp[1]
      pos <- tmp[2]

if(pos %in% r == T){


      id <- tmp[3]
      ref <- tmp[4]
      alt <- tmp[5]
      v2 <- tmp[-c(1:6)]
      
      #changing format
      n <- length(v2)
      v3 <- NULL
      for(i in 1:n){
        if(v2[i]=="0|0" | v2[i]=="0/0" | v2[i]=="./." | v2[i]=="."){
          v3 <- paste(v3,0,sep="")
        }else{
          if(v2[i]=="1|0" | v2[i]=="1/0" | v2[i]=="0|1" | v2[i]=="0/1"){
            v3 <- paste(v3,1,sep="")
          }else{
            if(v2[i]=="1|1" | v2[i]=="1/1"){
            v3 <- paste(v3,2,sep="")
            }else{
              v3 <- paste(v3,"MISS",sep="")
            }
          }
        }
      }
      writeLines(v3, out, sep="\n")
      v4 <- paste(id,chr,0,pos,ref,alt,sep=" ")
      writeLines(v4, out2, sep="\n")

}else{}

    }else{}
  }
}

end.time<-proc.time()
end.time-start.time
close(f)
close(out)
close(out2)
