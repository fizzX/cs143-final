library(bnlearn)
library(Rgraphviz)

tree <- read.csv('/Users/cousins/tree_graph_counts_random_delay_200days_equalbias.csv')
tree$X <- NULL

#hc with bic-g
set.seed(42)
tree_bic_hc_lownetflix <- hc(data.frame(tree),score='bic-g')
graphviz.plot(tree_bic_hc_lownetflix)
write.table(arcs(tree_bic_hc_lownetflix),file="arcs(tree_bic_hc_lownetflix).txt")

#hc with aic-g
set.seed(42)
tree_aic_hc_lownetflix <- hc(data.frame(tree),score='aic-g')
graphviz.plot(tree_aic_hc_lownetflix)
write.table(arcs(tree_aic_hc_lownetflix),file="arcs(tree_aic_hc_lownetflix).txt")

#hc with loglik-g
set.seed(42)
tree_loglik_hc_lownetflix <- hc(data.frame(tree),score='loglik-g')
graphviz.plot(tree_loglik_hc_lownetflix)
write.table(arcs(tree_loglik_hc_lownetflix),file="arcs(tree_loglik_hc_lownetflix).txt")

#pc with cor
set.seed(42)
tree_cor_pc_lownetflix <- pc.stable(data.frame(tree),test='cor')
graphviz.plot(tree_cor_pc_lownetflix)
write.table(arcs(tree_cor_pc_lownetflix),file="arcs(tree_cor_pc_lownetflix).txt")

#fast iamb with cor
set.seed(42)
tree_cor_fastiamb_lownetflix <- fast.iamb(data.frame(tree),test='cor')
graphviz.plot(tree_cor_fastiamb_lownetflix)
write.table(arcs(tree_cor_fastiamb_lownetflix),file="arcs(tree_cor_fastiamb_lownetflix).txt")

#mmhc with cor and bic-g
set.seed(42)
tree_cor_bic_mmhc_lownetflix <- mmhc(data.frame(tree), restrict.args = list(test = "cor"), maximize.args = list(score = "bic-g"))
graphviz.plot(tree_cor_bic_mmhc_lownetflix)
write.table(arcs(tree_cor_bic_mmhc_lownetflix),file="arcs(tree_cor_bic_mmhc_lownetflix).txt")
