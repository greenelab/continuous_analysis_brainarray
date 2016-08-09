packageVersion("hgu133plus2hsentrezgcdf")
library(affy)
CELs.entrezgene = ReadAffy(cdfname="hgu133plus2hsentrezgcdf")
eset.entrezgene = rma(CELs.entrezgene)
rma.exprs <- exprs(eset.entrezgene)

library(multtest)

groups=c(1, 1, 1, 0, 0, 0)
stats=mt.teststat(rma.exprs, groups, test="t")
rawp=2*(1-pnorm(abs(stats)))
adjp=p.adjust(rawp, method="bonferroni")
arraysRMAstats=cbind(rma.exprs[-1,0], adjp)
trunc_stats = head(arraysRMAstats, n=100)

write.table(trunc_stats, file="truncated_output.csv", sep=",", col.names = FALSE)
write.table(arraysRMAstats, file="output.csv", sep=",", col.names = FALSE)
