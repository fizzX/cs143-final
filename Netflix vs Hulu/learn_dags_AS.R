library(bnlearn)
library(Rgraphviz)

AS <- read.csv('/Users/cousins/AS_graph_counts_random_delay_200days_equalbias.csv')
AS$X <- NULL

#hc with bic-g
set.seed(42)
AS_bic_hc_lownetflix <- hc(data.frame(AS),score='bic-g')
graphviz.plot(AS_bic_hc_lownetflix)
write.table(arcs(AS_bic_hc_lownetflix),file="arcs(AS_bic_hc_lownetflix).txt")

#hc with aic-g
set.seed(42)
AS_aic_hc_lownetflix <- hc(data.frame(AS),score='aic-g')
graphviz.plot(AS_aic_hc_lownetflix)
write.table(arcs(AS_aic_hc_lownetflix),file="arcs(AS_aic_hc_lownetflix).txt")

#hc with loglik-g
set.seed(42)
AS_loglik_hc_lownetflix <- hc(data.frame(AS),score='loglik-g')
graphviz.plot(AS_loglik_hc_lownetflix)
write.table(arcs(AS_loglik_hc_lownetflix),file="arcs(AS_loglik_hc_lownetflix).txt")

#pc with cor
set.seed(42)
AS_cor_pc_lownetflix <- pc.stable(data.frame(AS),test='cor')
graphviz.plot(AS_cor_pc_lownetflix)
write.table(arcs(AS_cor_pc_lownetflix),file="arcs(AS_cor_pc_lownetflix).txt")

#fast iamb with cor
set.seed(42)
AS_cor_fastiamb_lownetflix <- fast.iamb(data.frame(AS),test='cor')
graphviz.plot(AS_cor_fastiamb_lownetflix)
write.table(arcs(AS_cor_fastiamb_lownetflix),file="arcs(AS_cor_fastiamb_lownetflix).txt")

#mmhc with cor and bic-g
set.seed(42)
AS_cor_bic_mmhc_lownetflix <- mmhc(data.frame(AS), restrict.args = list(test = "cor"), maximize.args = list(score = "bic-g"))
graphviz.plot(AS_cor_bic_mmhc_lownetflix)
write.table(arcs(AS_cor_bic_mmhc_lownetflix),file="arcs(AS_cor_bic_mmhc_lownetflix).txt")
