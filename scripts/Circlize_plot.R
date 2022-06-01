# Modified by XingWang
library(statnet)
library(circlize)
data<-read.csv("WX.csv",header=T,row=1)
my.data<-as.matrix(data) 
rownames(my.data) <-c("P_NC_P64", "P_NC_Dular", "O_SY_P64", "O_SY_Dular", "O_XB_P64", "O_XB_Dular", "O_LF_P64", "O_LF_Dular", "O_NC_P64", "O_NC_Dular")
colnames(my.data) <-c("Pantoea","Xanthomonas","Microbacterium","Pseudomonas",
                      "Sphingomonas","Curtobacterium","Staphylococcus",
                      "Methylobacterium","Burkholderia",
                      "Paenibacillus","Rhizobiums","Bacillus")
grid.col = NULL

grid.col[c("P_NC_P64", "P_NC_Dular", "O_SY_P64", "O_SY_Dular", "O_XB_P64", "O_XB_Dular", "O_LF_P64", "Os_LF_Dular", "O_NC_P64", "O_NC_Dular")] = c("blue", "black", "orange", "chocolate","#AFEEEE","#00CED1","#48D1CC","#00BFFF","#1E90FF","#0000FF")

grid.col[colnames(my.data)] = c("lavender", "khaki","mistyrose",
                                "sienna1", "skyblue", "brown1",
                                "gold", "maroon", "salmon", "moccasin",
                                "wheat","black")
circos.par(gap.degree = c(rep(2, nrow(my.data)-1), 10, rep(2, ncol(my.data)-1), 10),
           start.degree = 180)

chordDiagram(my.data,
             directional = TRUE,
             diffHeight = 0.06,
             grid.col = grid.col,
             transparency = 0.5)

legend("right",pch=20,legend=colnames(my.data),
       col=grid.col[colnames(my.data)],bty="n",
       cex=1,pt.cex=3,border="black") 
pdf(file="circlize_wx_20220322.pdf", width=8, height=5, pointsize=8)
chordDiagram(my.data,directional = TRUE,diffHeight = 0.06,grid.col = grid.col, transparency = 0.5)
legend("right",pch=20,legend=colnames(my.data),col=grid.col[colnames(my.data)],bty="n",cex=1,pt.cex=3,border="black")

dev.off()