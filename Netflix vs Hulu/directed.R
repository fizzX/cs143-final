for (name in colnames(day_counts_filtered)){
+ degree_mat <- rbind(degree_mat, c(name, in.degree(pc_res,name), out.degree(pc_res,name)))}

hc_bic_res <- hc(day_counts_filtered, score='bic-g')

degree_mat = matri(ncol =3)
for (name in colnames(day_counts_filtered)){degree_mat <- rbind(degree_mat, c(name, in.degree(hc_bic_res,name), out.degree(hc_bic_res,name)))}

hc_aic_res <- hc(day_counts_filtered, score='aic-g')
degree_mat = matri(ncol =3)
for (name in colnames(day_counts_filtered)){degree_mat <- rbind(degree_mat, c(name, in.degree(hc_aic_res,name), out.degree(hc_aic_res,name)))}
degree_mat

hc_loglik_res <- hc(day_counts_filtered, score='loglik-g')
degree_mat = matri(ncol =3)
for (name in colnames(day_counts_filtered)){degree_mat <- rbind(degree_mat, c(name, in.degree(hc_loglik_res,name), out.degree(hc_loglik_res,name)))}
degree_mat

gs_res <- gs(day_counts_filtered, test='cor')
degree_mat = matri(ncol =3)
for (name in colnames(day_counts_filtered)){degree_mat <- rbind(degree_mat, c(name, in.degree(gs_res,name), out.degree(gs_res,name)))}
degree_mat

iamb_res <- fast.iamb(day_counts_filtered, test='cor')
degree_mat = matri(ncol =3)
for (name in colnames(day_counts_filtered)){degree_mat <- rbind(degree_mat, c(name, in.degree(iamb_res,name), out.degree(iamb_res,name)))}
degree_mat

mmhc_res <- mmhc(day_counts_filtered, restrict.args=list(test='cor'),maimize.args=list(score='bic-g'))
degree_mat = matri(ncol =3)
for (name in colnames(day_counts_filtered)){degree_mat <- rbind(degree_mat, c(name, in.degree(mmhc_res,name), out.degree(mmhc_res,name)))}
degree_mat






> day_counts_filtered <- read.csv(~/psets/cs143/cs143-final/day_counts_filtered.csv)
> View(day_counts_filtered)
> day_counts_filtered$ <- NULL
> library(bnlearn)

Attaching package: ‘bnlearn’

The following object is masked from ‘package:stats’:

 sigma

Warning message:
package ‘bnlearn’ was built under R version 3.5.2
> pc_res <- pc.stable(day_counts_filtered, test='cor')
Warning messages:
1: In allsubs.test( = arc[1], y = arc[2], s = nbr1, min = dsep.size, :
 fied correlation coefficient greater than 1, probably due to floating point errors.
2: In allsubs.test( = arc[1], y = arc[2], s = nbr1, min = dsep.size, :
 fied correlation coefficient lesser than -1, probably due to floating point errors.
3: In vstruct.apply(arcs = arcs, vs = vs, nodes = nodes, debug = debug) :
 vstructure 208.50.13.218 -> 206.132.110.190 <- 152.63.51.69 is not applicable, because one or both arcs are oriented in the opposite direction.
> plot(pc_res)
> pc_res

 Bayesian network learned via Constraint-based methods

 model:
 [partially directed graph]
 nodes: 42
 arcs: 21
 undirected arcs: 12
 directed arcs: 9
 average markov blanket size: 1.24
 average neighbourhood size: 1.00
 average branching factor: 0.21

 learning algorithm: PC (Stable)
 conditional independence test: Pearson's Correlation
 alpha threshold: 0.05
 tests used in the learning procedure: 2098

> for (name in colnames(day_counts_filtered)){
+
+
+
+
+ }
> degree_mat = matri(colnum=3)
Error in matri(colnum = 3) : unused argument (colnum = 3)
> degree_mat = matrix(ncol =3)
> for (name in colnames(day_counts_filtered)){
+ degree_mat <- rbind(degree_mat, c(name, in.degree(name), out.degrree(name)))
+ }
Error in check.bn.or.fit() :
 must be an object of class 'bn' or 'bn.fit'.
> for (name in colnames(day_counts_filtered)){
+ degree_mat <- rbind(degree_mat, c(name, in.degree(pc_res,name), out.degree(pc_res,name)))
+ }
> degree_mat
 [,1] [,2] [,3]
 [1,] NA NA NA
 [2,] 204.255.174.70 0 1
 [3,] 152.63.51.65 0 0
 [4,] 137.39.4.156 0 1
 [5,] 137.39.11.48 3 0
 [6,] 198.32.200.50 0 0
 [7,] 129.250.2.225 0 0
 [8,] 129.250.0.30 0 0
 [9,] 152.63.51.61 0 1
[10,] 137.39.4.155 0 0
[11,] 137.39.11.47 0 1
[12,] 137.39.11.27 2 0
[13,] 152.63.51.57 0 1
[14,] 208.50.13.218 2 0
[15,] 206.132.110.194 0 1
[16,] 129.250.0.79 0 0
[17,] 129.250.0.82 0 0
[18,] 192.205.32.126 0 0
[19,] 12.123.13.69 0 0
[20,] 206.132.110.190 0 1
[21,] 129.250.2.61 0 0
[22,] 166.90.50.134 0 0
[23,] 209.247.10.230 0 0
[24,] 209.247.8.237 0 0
[25,] 144.232.18.158 0 0
[26,] 144.232.8.189 0 0
[27,] 137.39.11.31 0 1
[28,] 137.39.11.45 0 1
[29,] 129.250.0.83 0 0
[30,] 152.63.51.69 0 0
[31,] 144.232.18.81 0 0
[32,] 144.232.8.98 0 0
[33,] 144.232.19.190 0 0
[34,] 204.255.168.85 0 0
[35,] 206.24.210.62 0 0
[36,] 137.39.2.19 0 0
[37,] 137.39.2.11 2 0
[38,] 137.39.7.87 0 0
[39,] 144.232.4.242 0 0
[40,] 12.122.11.218 0 0
[41,] 12.122.10.6 0 0
[42,] 205.171.4.98 0 0
[43,] 137.39.7.85 0 0
> hc_bic_res <- hc(day_counts_filtered, score='bic-g')
> hc_aic_res <- hc(day_counts_filtered, score='aic-g')
> hc_loglik_res <- hc(day_counts_filtered, score='loglik-g')
> gs_res <- gs(day_counts_filtered, test='cor')
> iamb_res <- fast.iamb(day_counts_filtered, test='cor')
Warning messages:
1: In indep.test(nodes[nodes %!in% mb], , s = mb, test = test, data = data, :
 fied correlation coefficient greater than 1, probably due to floating point errors.
2: In roundrobin.test( = , z = mb, fied = fied, data = data, test = test, :
 fied correlation coefficient lesser than -1, probably due to floating point errors.
3: In indep.test(nodes[nodes %!in% mb], , s = mb, test = test, data = data, :
 fied correlation coefficient greater than 1, probably due to floating point errors.
4: In roundrobin.test( = , z = mb, fied = fied, data = data, test = test, :
 fied correlation coefficient lesser than -1, probably due to floating point errors.
> mmhc_res <- mmhc(day_counts_filtered, restrict.args=list(test='cor'),maimize.args=list(score='bic-g'))
Warning messages:
1: In allsubs.test( = , y = y, s = s, fied = last, data = data, :
 fied correlation coefficient greater than 1, probably due to floating point errors.
2: In allsubs.test( = , y = y, s = s, fied = last, data = data, :
 fied correlation coefficient greater than 1, probably due to floating point errors.
3: In allsubs.test( = , y = y, s = dsep.set, min = ifelse(empty.dsep, :
 fied correlation coefficient greater than 1, probably due to floating point errors.
4: In allsubs.test( = , y = y, s = dsep.set, min = ifelse(empty.dsep, :
 fied correlation coefficient lesser than -1, probably due to floating point errors.
5: In allsubs.test( = , y = y, s = dsep.set, min = ifelse(empty.dsep, :
 fied correlation coefficient greater than 1, probably due to floating point errors.
6: In allsubs.test( = , y = y, s = dsep.set, min = ifelse(empty.dsep, :
 fied correlation coefficient lesser than -1, probably due to floating point errors.
> for (name in colnames(day_counts_filtered)){
+ + degree_mat <- rbind(degree_mat, c(name, in.degree(hc_bic,name), out.degree(hc_bic_res,name)))}
Error in in.degree(hc_bic, name) : object 'hc_bic' not found
> degree_mat = matri(ncol =3)
> for (name in colnames(day_counts_filtered)){
+ + degree_mat <- rbind(degree_mat, c(name, in.degree(hc_bic_res,name), out.degree(hc_bic_res,name)))}
Error in +degree_mat <- rbind(degree_mat, c(name, in.degree(hc_bic_res, :
 could not find function +<-
> degree_mat = matri(ncol =3)
> for (name in colnames(day_counts_filtered)){degree_mat <- rb
+ }
Error in rb : object 'rb' not found
> for (name in colnames(day_counts_filtered)){degree_mat <- rbind(degree_mat, c(name, in.degree(hc_bic_res,name), out.degree(hc_bic_res,name)))}
> degree_mat
 [,1] [,2] [,3]
 [1,] NA NA NA
 [2,] 204.255.174.70 1 2
 [3,] 152.63.51.65 0 4
 [4,] 137.39.4.156 2 5
 [5,] 137.39.11.48 5 4
 [6,] 198.32.200.50 1 7
 [7,] 129.250.2.225 2 3
 [8,] 129.250.0.30 2 2
 [9,] 152.63.51.61 2 4
[10,] 137.39.4.155 3 2
[11,] 137.39.11.47 3 3
[12,] 137.39.11.27 4 7
[13,] 152.63.51.57 5 3
[14,] 208.50.13.218 3 2
[15,] 206.132.110.194 3 3
[16,] 129.250.0.79 6 0
[17,] 129.250.0.82 4 3
[18,] 192.205.32.126 1 4
[19,] 12.123.13.69 1 2
[20,] 206.132.110.190 4 0
[21,] 129.250.2.61 3 2
[22,] 166.90.50.134 1 5
[23,] 209.247.10.230 1 3
[24,] 209.247.8.237 1 2
[25,] 144.232.18.158 0 6
[26,] 144.232.8.189 3 2
[27,] 137.39.11.31 3 2
[28,] 137.39.11.45 4 0
[29,] 129.250.0.83 16 0
[30,] 152.63.51.69 3 1
[31,] 144.232.18.81 5 4
[32,] 144.232.8.98 1 0
[33,] 144.232.19.190 1 3
[34,] 204.255.168.85 0 4
[35,] 206.24.210.62 2 1
[36,] 137.39.2.19 1 1
[37,] 137.39.2.11 6 1
[38,] 137.39.7.87 0 5
[39,] 144.232.4.242 4 3
[40,] 12.122.11.218 3 2
[41,] 12.122.10.6 2 4
[42,] 205.171.4.98 0 2
[43,] 137.39.7.85 2 1
> degree_mat = matri(ncol =3)
> for (name in colnames(day_counts_filtered)){degree_mat <- rbind(degree_mat, c(name, in.degree(hc_aic_res,name), out.degree(hc_aic_res,name)))}
> degree_mat
 [,1] [,2] [,3]
 [1,] NA NA NA
 [2,] 204.255.174.70 10 4
 [3,] 152.63.51.65 0 8
 [4,] 137.39.4.156 3 11
 [5,] 137.39.11.48 7 6
 [6,] 198.32.200.50 1 9
 [7,] 129.250.2.225 3 7
 [8,] 129.250.0.30 6 3
 [9,] 152.63.51.61 3 8
[10,] 137.39.4.155 3 4
[11,] 137.39.11.47 3 6
[12,] 137.39.11.27 4 14
[13,] 152.63.51.57 6 5
[14,] 208.50.13.218 8 3
[15,] 206.132.110.194 5 5
[16,] 129.250.0.79 12 4
[17,] 129.250.0.82 6 7
[18,] 192.205.32.126 1 4
[19,] 12.123.13.69 1 8
[20,] 206.132.110.190 5 1
[21,] 129.250.2.61 15 2
[22,] 166.90.50.134 1 8
[23,] 209.247.10.230 1 7
[24,] 209.247.8.237 1 6
[25,] 144.232.18.158 0 10
[26,] 144.232.8.189 6 6
[27,] 137.39.11.31 4 4
[28,] 137.39.11.45 11 0
[29,] 129.250.0.83 28 1
[30,] 152.63.51.69 3 3
[31,] 144.232.18.81 8 4
[32,] 144.232.8.98 16 1
[33,] 144.232.19.190 1 13
[34,] 204.255.168.85 11 2
[35,] 206.24.210.62 2 3
[36,] 137.39.2.19 2 3
[37,] 137.39.2.11 10 3
[38,] 137.39.7.87 0 10
[39,] 144.232.4.242 8 5
[40,] 12.122.11.218 4 5
[41,] 12.122.10.6 7 7
[42,] 205.171.4.98 0 4
[43,] 137.39.7.85 3 5
> hc_loglik_res <- hc(day_counts_filtered, score='loglik-g')
> degree_mat = matri(ncol =3)
> for (name in colnames(day_counts_filtered)){degree_mat <- rbind(degree_mat, c(name, in.degree(hc_loglik_res,name), out.degree(hc_loglik_res,name)))}
> degree_mat
 [,1] [,2] [,3]
 [1,] NA NA NA
 [2,] 204.255.174.70 11 15
 [3,] 152.63.51.65 2 24
 [4,] 137.39.4.156 3 18
 [5,] 137.39.11.48 9 9
 [6,] 198.32.200.50 9 15
 [7,] 129.250.2.225 9 15
 [8,] 129.250.0.30 10 9
 [9,] 152.63.51.61 6 18
[10,] 137.39.4.155 8 12
[11,] 137.39.11.47 6 18
[12,] 137.39.11.27 10 18
[13,] 152.63.51.57 13 6
[14,] 208.50.13.218 14 12
[15,] 206.132.110.194 14 11
[16,] 129.250.0.79 15 4
[17,] 129.250.0.82 11 19
[18,] 192.205.32.126 8 16
[19,] 12.123.13.69 6 16
[20,] 206.132.110.190 28 2
[21,] 129.250.2.61 28 2
[22,] 166.90.50.134 4 25
[23,] 209.247.10.230 3 23
[24,] 209.247.8.237 3 16
[25,] 144.232.18.158 0 24
[26,] 144.232.8.189 18 16
[27,] 137.39.11.31 26 7
[28,] 137.39.11.45 28 0
[29,] 129.250.0.83 28 1
[30,] 152.63.51.69 12 7
[31,] 144.232.18.81 13 10
[32,] 144.232.8.98 28 3
[33,] 144.232.19.190 1 27
[34,] 204.255.168.85 21 5
[35,] 206.24.210.62 20 5
[36,] 137.39.2.19 21 9
[37,] 137.39.2.11 15 7
[38,] 137.39.7.87 2 28
[39,] 144.232.4.242 16 8
[40,] 12.122.11.218 8 15
[41,] 12.122.10.6 13 9
[42,] 205.171.4.98 7 17
[43,] 137.39.7.85 22 8
> degree_mat = matri(ncol =3)
> for (name in colnames(day_counts_filtered)){degree_mat <- rbind(degree_mat, c(name, in.degree(gs_res,name), out.degree(gs_res,name)))}
> degree_mat
 [,1] [,2] [,3]
 [1,] NA NA NA
 [2,] 204.255.174.70 0 0
 [3,] 152.63.51.65 0 0
 [4,] 137.39.4.156 0 0
 [5,] 137.39.11.48 0 0
 [6,] 198.32.200.50 0 0
 [7,] 129.250.2.225 0 0
 [8,] 129.250.0.30 0 0
 [9,] 152.63.51.61 0 1
[10,] 137.39.4.155 1 0
[11,] 137.39.11.47 3 1
[12,] 137.39.11.27 0 1
[13,] 152.63.51.57 0 1
[14,] 208.50.13.218 2 0
[15,] 206.132.110.194 0 1
[16,] 129.250.0.79 0 0
[17,] 129.250.0.82 0 0
[18,] 192.205.32.126 2 0
[19,] 12.123.13.69 0 1
[20,] 206.132.110.190 0 1
[21,] 129.250.2.61 0 0
[22,] 166.90.50.134 0 0
[23,] 209.247.10.230 0 0
[24,] 209.247.8.237 0 0
[25,] 144.232.18.158 0 0
[26,] 144.232.8.189 0 0
[27,] 137.39.11.31 0 0
[28,] 137.39.11.45 0 0
[29,] 129.250.0.83 0 0
[30,] 152.63.51.69 0 0
[31,] 144.232.18.81 0 0
[32,] 144.232.8.98 0 0
[33,] 144.232.19.190 0 0
[34,] 204.255.168.85 0 0
[35,] 206.24.210.62 0 0
[36,] 137.39.2.19 0 0
[37,] 137.39.2.11 0 0
[38,] 137.39.7.87 0 0
[39,] 144.232.4.242 0 0
[40,] 12.122.11.218 0 1
[41,] 12.122.10.6 0 0
[42,] 205.171.4.98 0 0
[43,] 137.39.7.85 0 0
> degree_mat = matri(ncol =3)
> for (name in colnames(day_counts_filtered)){degree_mat <- rbind(degree_mat, c(name, in.degree(iamb_res,name), out.degree(iamb_res,name)))}
> degree_mat
 [,1] [,2] [,3]
 [1,] NA NA NA
 [2,] 204.255.174.70 0 0
 [3,] 152.63.51.65 0 1
 [4,] 137.39.4.156 0 1
 [5,] 137.39.11.48 3 1
 [6,] 198.32.200.50 0 0
 [7,] 129.250.2.225 0 0
 [8,] 129.250.0.30 0 0
 [9,] 152.63.51.61 0 1
[10,] 137.39.4.155 1 0
[11,] 137.39.11.47 2 1
[12,] 137.39.11.27 0 1
[13,] 152.63.51.57 0 0
[14,] 208.50.13.218 2 0
[15,] 206.132.110.194 0 1
[16,] 129.250.0.79 0 0
[17,] 129.250.0.82 0 0
[18,] 192.205.32.126 2 0
[19,] 12.123.13.69 0 1
[20,] 206.132.110.190 0 1
[21,] 129.250.2.61 0 0
[22,] 166.90.50.134 0 0
[23,] 209.247.10.230 0 0
[24,] 209.247.8.237 0 0
[25,] 144.232.18.158 0 0
[26,] 144.232.8.189 0 0
[27,] 137.39.11.31 0 0
[28,] 137.39.11.45 0 0
[29,] 129.250.0.83 0 0
[30,] 152.63.51.69 0 1
[31,] 144.232.18.81 0 0
[32,] 144.232.8.98 0 0
[33,] 144.232.19.190 0 0
[34,] 204.255.168.85 0 0
[35,] 206.24.210.62 0 0
[36,] 137.39.2.19 1 0
[37,] 137.39.2.11 0 0
[38,] 137.39.7.87 0 0
[39,] 144.232.4.242 0 0
[40,] 12.122.11.218 0 1
[41,] 12.122.10.6 0 0
[42,] 205.171.4.98 0 0
[43,] 137.39.7.85 0 0
> degree_mat = matri(ncol =3)
> for (name in colnames(day_counts_filtered)){degree_mat <- rbind(degree_mat, c(name, in.degree(mmhc_res,name), out.degree(mmhc_res,name)))}
> degree_mat
 [,1] [,2] [,3]
 [1,] NA NA NA
 [2,] 204.255.174.70 0 2
 [3,] 152.63.51.65 0 1
 [4,] 137.39.4.156 1 1
 [5,] 137.39.11.48 1 2
 [6,] 198.32.200.50 0 1
 [7,] 129.250.2.225 0 1
 [8,] 129.250.0.30 1 0
 [9,] 152.63.51.61 0 1
[10,] 137.39.4.155 0 1
[11,] 137.39.11.47 1 1
[12,] 137.39.11.27 2 0
[13,] 152.63.51.57 0 0
[14,] 208.50.13.218 0 2
[15,] 206.132.110.194 1 0
[16,] 129.250.0.79 1 1
[17,] 129.250.0.82 0 1
[18,] 192.205.32.126 0 1
[19,] 12.123.13.69 0 1
[20,] 206.132.110.190 2 0
[21,] 129.250.2.61 1 0
[22,] 166.90.50.134 0 0
[23,] 209.247.10.230 0 1
[24,] 209.247.8.237 1 0
[25,] 144.232.18.158 0 1
[26,] 144.232.8.189 1 0
[27,] 137.39.11.31 1 0
[28,] 137.39.11.45 1 0
[29,] 129.250.0.83 0 0
[30,] 152.63.51.69 0 1
[31,] 144.232.18.81 1 1
[32,] 144.232.8.98 1 0
[33,] 144.232.19.190 0 0
[34,] 204.255.168.85 0 1
[35,] 206.24.210.62 1 0
[36,] 137.39.2.19 0 0
[37,] 137.39.2.11 2 0
[38,] 137.39.7.87 0 0
[39,] 144.232.4.242 1 0
[40,] 12.122.11.218 1 1
[41,] 12.122.10.6 1 0
[42,] 205.171.4.98 0 0
[43,] 137.39.7.85 0 0




degree_mat = matri(ncol =2)
for (name in colnames(day_counts_filtered)){
+ degree_mat <- rbind(degree_mat, c(name, degree(pc_res,name)))
+ }

 degree_mat
 [,1] [,2]
 [1,] NA  NA
 [2,] 204.255.174.70 1
 [3,] 152.63.51.65 0
 [4,] 137.39.4.156 1
 [5,] 137.39.11.48 3
 [6,] 198.32.200.50 1
 [7,] 129.250.2.225 1
 [8,] 129.250.0.30 1
 [9,] 152.63.51.61 1
[10,] 137.39.4.155 1
[11,] 137.39.11.47 2
[12,] 137.39.11.27 2
[13,] 152.63.51.57 1
[14,] 208.50.13.218 2
[15,] 206.132.110.194 1
[16,] 129.250.0.79 2
[17,] 129.250.0.82 0
[18,] 192.205.32.126 1
[19,] 12.123.13.69 0
[20,] 206.132.110.190 2
[21,] 129.250.2.61 1
[22,] 166.90.50.134 0
[23,] 209.247.10.230 1
[24,] 209.247.8.237 1
[25,] 144.232.18.158 1
[26,] 144.232.8.189 1
[27,] 137.39.11.31 2
[28,] 137.39.11.45 2
[29,] 129.250.0.83 0
[30,] 152.63.51.69 1
[31,] 144.232.18.81 1
[32,] 144.232.8.98 1
[33,] 144.232.19.190 0
[34,] 204.255.168.85 1
[35,] 206.24.210.62 1
[36,] 137.39.2.19 0
[37,] 137.39.2.11 2
[38,] 137.39.7.87 0
[39,] 144.232.4.242 0
[40,] 12.122.11.218 2
[41,] 12.122.10.6 1
[42,] 205.171.4.98 0
[43,] 137.39.7.85 0
