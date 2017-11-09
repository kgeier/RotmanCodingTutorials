

# Choose alpha level
alpha <- 0.05

# Without any corrections
sig <- p < alpha

# Conduct three corrections
# and compare to target alpha
bonferroni_sig <- p.adjust(p, "bonferroni") < alpha
holm_sig <- p.adjust(p, "holm") < alpha
BH_sig <- p.adjust(p, "BH") <alpha


Treatment <- paste(letters[1:10])
p.values <- c(0.006,0.84,0.41,0.023,0.00012,0.68,0.03,0.001,0.12,0.04)

df_pval <- data.frame(Treatment,p.values)

df.pval.order <- df_pval[order(p.values),]

df.pval.order <- cbind(df.pval.order, wlkjlk = sort(seq(10:1), decreasing = TRUE))

alpha <- 0.05

df.pval.order  <- cbind(df.pval.order, alphafw = (alpha / df.pval.order$sequence))

df.pval.order <- cbind(df.pval.order, signif = ifelse(df.pval.order$p.values < df.pval.order$alphafw, "maybeSig", "notSig"))


Treatment <- paste(letters[1:10])
p.values <- c(0.006,0.84,0.41,0.023,0.00012,0.68,0.03,0.001,0.12,0.04)

df_pval <- data.frame(Treatment,p.values)

df.pval.order <- df_pval[order(p.values),]

df.pval.order.benja <- cbind(df.pval.order, rank = sort(seq(1:10)))

df.pval.order.benja <- cbind(df.pval.order.benja, Qim = ((df.pval.order.benja$rank / length(df.pval.order.benja$rank) * 0.1)))
df.pval.order.benja <- cbind(df.pval.order.benja, signif = ifelse(df.pval.order.benja$p.values < df.pval.order.benja$Qim, "maybeSig", "notSig"))                                     
