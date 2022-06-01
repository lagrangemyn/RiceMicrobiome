### Author：Kaiji Liao
### Related project: Rice microbiome
#=================================================
library(pheatmap)

#=================== Pantoea ANI =================
rm(list=ls())

pan_ani_p_o <- read.csv("pan_ani_p_o.csv", row.names = 1)
o_pan_anno_row <- data.frame(o_Sampling_site = factor(rep(c("NC", "SY", "NC", "SY"),c(1,1,2,5)))
                             ,o_Host=factor(rep(c("Dular", "PA64"), c(2, 7))))
p_pan_anno_col <- data.frame(p_Sampling_site = factor(rep("NC",12))
                             ,p_Host=factor(rep(c("Dular", "PA64"),c(4, 8))))
rownames(o_pan_anno_row) <- rownames(pan_ani_p_o)
rownames(p_pan_anno_col) <- colnames(pan_ani_p_o)
ann_colors <-  list(o_Sampling_site = c(NC="#00bfc4", SY="#f9756c"),
                    p_Sampling_site = c(NC="#00bfc4"),
                    o_Host=c(Dular="#a6a6a6", PA64="#dbdbdb"),
                    p_Host=c(Dular="#a6a6a6", PA64="#dbdbdb"))

pan_ani <- pheatmap(pan_ani_p_o, cellheight = 12,
              color = colorRampPalette(c("#6baed6", "#feb24c", "#fc4e2a"))(20),
              display_numbers = T, fontsize_number =5,
              number_format = "%.1f", number_color = "black",
              cluster_rows = F, cluster_cols = F,
              legend = T,
              legend_breaks = c(80,85,90,95,100), legend_labels = c(80,85,90,95,100),
              fontsize_row = 7, fontsize_col = 7,
              filename = "pan_ani_p_o.pdf", #(png/pdf/tiff/jpeg)
              annotation_row = o_pan_anno_row, annotation_names_row= F,
              annotation_col = p_pan_anno_col, annotation_names_col= F,
              annotation_colors = ann_colors)


#=================== Xanthomonas ANI =================
rm(list=ls())

xan_ani_p_o <- read.csv("xan_ani_p_o.csv", row.names = 1)
o_xan_anno_row <- data.frame(o_Sampling_site = factor(rep(c("NC", "XB", "LF", "SY","NC", "XB", "LF", "SY"),
                                                          c(3,2,2,2,2,2,2,2)))
                             ,o_Host=factor(rep(c("Dular", "PA64"), c(9, 8))))
p_xan_anno_col <- data.frame(p_Sampling_site = factor(rep("NC",10))
                             ,p_Host=factor(rep(c("Dular", "PA64"),c(5, 5))))
rownames(o_xan_anno_row) <- rownames(xan_identity)
rownames(p_xan_anno_col) <- colnames(xan_identity)
ann_colors <-  list(o_Sampling_site = c(NC="#00bfc4", SY="#f9756c", XB="#c77bff", LF="#7bae00"),
                    p_Sampling_site = c(NC="#00bfc4"),
                    o_Host=c(Dular="#a6a6a6", PA64="#dbdbdb"),
                    p_Host=c(Dular="#a6a6a6", PA64="#dbdbdb"))

xan_ani <- pheatmap(xan_ani_p_o,
              cellheight = 12, cellwidth = 35,
              color = colorRampPalette(c("#6baed6", "#feb24c", "#fc4e2a"))(20),
              display_numbers = T, fontsize_number = 6,
              number_format = "%.1f", number_color = "black",
              cluster_rows = F, cluster_cols = F,
              legend = T,
              legend_breaks = c(80,85,90,95,100), legend_labels = c(80,85,90,95,100),
              fontsize_row = 7, fontsize_col = 7,
              filename = "xan_ani_p_o.pdf" ,#(png/pdf/tiff/jpeg)
              annotation_row = o_xan_anno_row, annotation_names_row= F,
              annotation_col = p_xan_anno_col, annotation_names_col= F,
              annotation_colors = ann_colors)


#===================  Pantoea identity of global alignment =================
rm(list=ls())

pan_iden <- read.csv("pan_coregenome_identity.csv", row.names = 1)
o_pan_anno_row <- data.frame(o_Sampling_site = factor(rep(c("NC", "SY", "NC", "SY"),c(1,1,2,5)))
                             ,o_Host=factor(rep(c("Dular", "PA64"), c(2, 7))))
p_pan_anno_col <- data.frame(p_Sampling_site = factor(rep("NC",12))
                             ,p_Host=factor(rep(c("Dular", "PA64"),c(4, 8))))
rownames(o_pan_anno_row) <- rownames(pan_identify)
rownames(p_pan_anno_col) <- colnames(pan_identify)
ann_colors <-  list(o_Sampling_site = c(NC="#00bfc4", SY="#f9756c"),
                    p_Sampling_site = c(NC="#00bfc4"),
                    o_Host=c(Dular="#a6a6a6", PA64="#dbdbdb"),
                    p_Host=c(Dular="#a6a6a6", PA64="#dbdbdb"))

pan_identity <- pheatmap(pan_iden,
              cellheight = 12,
              color = colorRampPalette(c("#6baed6", "#feb24c", "#fc4e2a"))(20),
              display_numbers = T, fontsize_number = 5,
              number_format = "%s", number_color = "black",
              cluster_rows = F, cluster_cols = F,legend = T,
              legend_breaks = c(80,85,90,95,100), legend_labels = c(80,85,90,95,100),
              fontsize_row = 7, fontsize_col = 7,filename = "pan_coregenome_identity.pdf" , #(png/pdf/tiff/jpeg)
              annotation_row = o_pan_anno_row, annotation_names_row= F,
              annotation_col = p_pan_anno_col, annotation_names_col= F,
              annotation_colors = ann_colors)


#===================  Xanthomonas identity of global alignment =================
rm(list=ls())

xan_iden <- read.csv("xan_coregeome_identity.csv", row.names = 1)
o_xan_anno_row <- data.frame(o_Sampling_site = factor(rep(c("NC", "XB", "LF", "SY","NC", "XB", "LF", "SY"),
                                                          c(3,2,2,2,2,2,2,2)))
                             ,o_Host=factor(rep(c("Dular", "PA64"), c(9, 8))))
p_xan_anno_col <- data.frame(p_Sampling_site = factor(rep("NC", 10))
                             ,p_Host=factor(rep(c("Dular", "PA64"),c(5, 5))))
rownames(o_xan_anno_row) <- rownames(xan_identity)
rownames(p_xan_anno_col) <- colnames(xan_identity)
ann_colors <-  list(o_Sampling_site = c(NC="#00bfc4", SY="#f9756c", XB="#c77bff", LF="#7bae00"),
                    p_Sampling_site = c(NC="#00bfc4"),
                    o_Host=c(Dular="#a6a6a6", PA64="#dbdbdb"),
                    p_Host=c(Dular="#a6a6a6", PA64="#dbdbdb"))

xan_identity <- pheatmap(xan_iden,cellheight = 12, cellwidth = 35,
                         color = colorRampPalette(c("#6baed6", "#feb24c", "#fc4e2a"))(20),
                         display_numbers = T, fontsize_number = 6,
                         number_format = "%s", number_color = "black",
                         cluster_rows = F, cluster_cols = F,
                         legend = T,
                         legend_breaks = c(80,85,90,95,100), legend_labels = c(80,85,90,95,100),
                         fontsize_row = 7, fontsize_col = 7,
                         filename = "xan_coregenome_identity.pdf" ,#(png/pdf/tiff/jpeg)
                         annotation_row = o_xan_anno_row, annotation_names_row= F,
                         annotation_col = p_xan_anno_col, annotation_names_col= F,
                         annotation_colors = ann_colors)




