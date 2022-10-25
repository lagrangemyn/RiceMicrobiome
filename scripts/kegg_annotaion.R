#Reproduced by Kaiji Liao
#------------------
library(tidyverse)
library(Cairo)
library(showtext)
#=============== 绘制pan的KEGG注释图 ====================
# 设置图形输出文件格式，长宽高，以及默认的字体 (sans→Arial；serif→Times New Roman)
CairoPDF(file="pan_kegg.pdf",  width=20, height = 15, family='sans')
showtext_begin()

pan <- read_table("21_pan_2505_single_coregenome.faa.tsv_kegg_anno_one_to_one.txt_result", 
                  col_names = c("Number of genes","factor(Type)","pathway categories"))
head(pan)
# 调整x轴顺序
xname <- factor(pan$`pathway categories`)
# 绘制条形图
ggplot(pan, aes(x = `pathway categories`, y= `Number of genes`, fill=`factor(Type)`)) +
  geom_col() +
  scale_x_discrete(limits = xname)+
  coord_flip()+
  theme_test()+
  theme(axis.text.x = element_text(angle = 90, size =20),
        axis.text.y = element_text(size =20),
        axis.title.x = element_text(size = 24),
        axis.title.y = element_text(size = 24),
        legend.text = element_text(size = 20),
        legend.title = element_text(size = 24))+

# 结束图形渲染
showtext_end()
dev.off()

#=============== 绘制xan的KEGG注释图 ====================
# 设置图形输出文件格式，长宽高，以及默认的字体 (sans→Arial；serif→Times New Roman)
CairoPDF(file="xan_kegg.pdf",  width=15, height = 10, family='sans')
showtext_begin()

xan <- read_table("27_Xan_2508_single_coregenome.faa.tsv_kegg_anno_one_to_one.txt_result", 
                  col_names = c("Number of genes","factor(Type)","pathway categories"))
head(xan)
# 调整x轴顺序
xname <- factor(xan$`pathway categories`)
# 绘制条形图
ggplot(xan, aes(x = `pathway categories`, y= `Number of genes`, fill=`factor(Type)`)) +
  geom_col() +
  scale_x_discrete(limits = xname)+
  coord_flip()+
  theme_test()+
  theme(axis.text.x = element_text(angle = 90, size = 16),
        axis.text.y = element_text(size =16 ),
        axis.title.x = element_text(size = 20),
        axis.title.y = element_text(size = 20),
        legend.text = element_text(size = 16),
        legend.title = element_text(size = 20))+
# 结束图形渲染
showtext_end()
dev.off()

 

