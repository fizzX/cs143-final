library(bnlearn)

AS <- read.csv('/Users/cousins/AS_graph_counts_random_delay_200days_equalbias.csv')
AS$X <- NULL

#hc with bic-g
set.seed(42)
AS_bic_hc_lownetflix <- skeleton(hc(data.frame(AS),score='bic-g'))
write.table(arcs(AS_bic_hc_lownetflix),file="AS_arcs_bic_hc_skeleton.txt")

#hc with aic-g
set.seed(42)
AS_aic_hc_lownetflix <- skeleton(hc(data.frame(AS),score='aic-g'))
write.table(arcs(AS_aic_hc_lownetflix),file="AS_arcs_aic_hc_skeleton.txt")

#hc with loglik-g
set.seed(42)
AS_loglik_hc_lownetflix <- skeleton(hc(data.frame(AS),score='loglik-g'))
write.table(arcs(AS_loglik_hc_lownetflix),file="AS_arcs_loglik_hc_skeleton.txt")

AS_aracne <- aracne(data.frame(AS), whitelist = NULL, blacklist = NULL, mi = NULL, debug = FALSE)
write.table(arcs(AS_aracne),file="AS_arcs_aracne.txt")

AS_chow.liu <- chow.liu(data.frame(AS), whitelist = NULL, blacklist = NULL, mi = NULL, debug = FALSE)
write.table(arcs(AS_chow.liu),file="AS_arcs_chowliu.txt")


#pc with cor
set.seed(42)
AS_cor_pc_lownetflix <- pc.stable(data.frame(AS),test='cor', undirected=TRUE)
write.table(arcs(AS_cor_pc_lownetflix),file="AS_arcs_cor_pc_undirected.txt")

#gs with cor
set.seed(42)
AS_cor_gs_lownetflix <- gs(data.frame(AS),test='cor', undirected=TRUE)
write.table(arcs(AS_cor_gs_lownetflix),file="AS_arcs_cor_gs_undirected.txt")

#fast iamb with cor
set.seed(42)
AS_cor_fastiamb_lownetflix <- fast.iamb(data.frame(AS),test='cor', undirected=TRUE)
write.table(arcs(AS_cor_fastiamb_lownetflix),file="AS_arcs_cor_fastiamb_undirected.txt")