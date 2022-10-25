#Reproduced by Kaiji Liao
#------------------
library(pheatmap)
library(RColorBrewer)


rm(list=ls())
# 设置颜色参数"#ce9d8f"
pan_color <- colorRampPalette(c("white", "#287062"))(2)

# 图一：Pan
#输入文件，第一行读入为表头，第一列为行名
pan <- read.csv("Pan_1.csv", header = T, row.names = 1)
pan <- na.omit(pan)


pheatmap(# 带有行列名的矩阵数据
         pan,
         # 调整热图的长宽度
         cellwidth = 15, cellheight = 15,
         # 行，列均不聚类
         cluster_rows = F, cluster_cols = F,
         # 设置颜色
         color = pan_color,
         # 设置分割位置
         gaps_col= c(15,23),
         # 不显示标题
         legend = F,
         fontfamily = "sans",
         # 输出文件名
         filename = "Pan.pdf")



# 图二：Xan
xan <- read.csv("Xan_1.csv", header = T, row.names = 1)
xan <- na.omit(xan)

xan_color <- colorRampPalette(c("white","#287062"))(2)

pheatmap(xan,
         cellwidth = 10, cellheight = 15,
         cluster_rows = F,cluster_cols = F,
         color = xan_color,
         gaps_col= c(20,26),
         legend = FALSE,
         fontfamily = "sans",
         filename = "Xan.pdf")

