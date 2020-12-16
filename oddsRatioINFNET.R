# INFNET

#infT <- read.csv("surveyINFNET-JAVA-C-JAVA.csv")
#infC <- read.csv("surveyINFNET-JAVA-C-JAVA-1.csv")

infT <- treatInfnet
infC <- controlInfnet

colnames(infT)
colnames(infC)

infTLabels <- infT[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os",	"groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
XinfCLabels <- infC[c("X","ui","groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
#infCLabels <- infC[c("X", "Q46_1",	"Q46_2",	"Q46_3",	"Q46_4",	"Q46_5",	"Q46_6",	"Q46_7",	"Q46_8",	"Q46_9",	"Q46_10",	"Q46_11",	"Q46_12",	"Q46_13",	"Q46_14",	"Q46_15", "Q46_16")]
#Q46_1	Q46_2	Q46_3	Q46_4	Q46_5	Q46_6	Q46_7	Q46_8	Q46_9	Q46_10	Q46_11	Q46_12	Q46_13	Q46_14	Q46_15	Q46_16 
infTNewLabels <- infT[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os"	)]
infTOldLabels <- infT[c("X","groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]

infTHotMapLabels <- infT[c("X","Q50_4","Q50_8","Q50_9","Q50_12")]
infTHotMapNonLabels <- infT[c("X","Q50_1","Q50_2","Q50_3","Q50_5","Q50_6","Q50_7","Q50_10","Q50_11")]

infCHotMapLabels <- infC[c("X","Q50_4","Q50_8","Q50_9","Q50_12")]
infCHotMapNonLabels <- infC[c("X","Q50_1","Q50_2","Q50_3","Q50_5","Q50_6","Q50_7","Q50_10","Q50_11")]

count.TInfNetNewLabels <- apply(infTNewLabels, 2, function(x) length(which(x=="relevant")))
count.TInfNetNewLabels
sum(count.TInfNetNewLabels)

count.TInfNetOldLabels <- apply(infTOldLabels, 2, function(x) length(which(x=="relevant")))
count.TInfNetOldLabels
sum(count.TInfNetOldLabels)

count.TInfNetNewLabelsNonRel <- apply(infTNewLabels, 2, function(x) length(which(x=="not relevant")))
count.TInfNetNewLabelsNonRel
sum(count.TInfNetNewLabelsNonRel)

count.TInfNetOldLabelsNonRel <- apply(infTOldLabels, 2, function(x) length(which(x=="not relevant")))
count.TInfNetOldLabelsNonRel
sum(count.TInfNetOldLabelsNonRel)

count.TInfNetHotMapLabels <- apply(infTHotMapLabels, 2, function(x) length(which(x=="On")))
count.TInfNetHotMapLabels
sum(count.TInfNetHotMapLabels)

count.TInfNetHotMapLabelsOff <- apply(infTHotMapLabels, 2, function(x) length(which(x=="Off")))
count.TInfNetHotMapLabelsOff
sum(count.TInfNetHotMapLabelsOff)

count.TInfNetHotMapNonLabels <- apply(infTHotMapNonLabels, 2, function(x) length(which(x=="On")))
count.TInfNetHotMapNonLabels
sum(count.TInfNetHotMapNonLabels)

count.CInfNetHotMapLabels <- apply(infCHotMapLabels, 2, function(x) length(which(x=="On")))
count.CInfNetHotMapLabels
sum(count.CInfNetHotMapLabels)

count.CInfNetHotMapLabelsOff <- apply(infCHotMapLabels, 2, function(x) length(which(x=="Off")))
count.CInfNetHotMapLabelsOff
sum(count.CInfNetHotMapLabelsOff)


count.CInfNetHotMapNonLabels <- apply(infCHotMapNonLabels, 2, function(x) length(which(x=="On")))
count.CInfNetHotMapNonLabels
sum(count.CInfNetHotMapNonLabels)

count.CInfNetLabels <- apply(infCLabels, 2, function(x) length(which(x=="relevant")))
count.CInfNetLabels
sum(count.CInfNetLabels)

count.CInfNetLabelsNonRel <- apply(infCLabels, 2, function(x) length(which(x=="not relevant")))
count.CInfNetLabelsNonRel
sum(count.CInfNetLabelsNonRel)

# treatment 3 labels selected 16 other regions selected
# control 3 labels selected 9 other regions selected
#hot_map_INFNET <- matrix(c(3, 3, 16, 9), nrow = 2)

# or
# treatment ex:3 labels selected 9 off or 3 from 12 possible
# control ex:3 labels selected 13 off or 3 from 16 possible

#hot_map_INFNET_alt <- matrix(c(3/12, 3/16, 9/12, 13/16), nrow = 2)

hot_map_INFNET_alt <- matrix(c(sum(count.TInfNetHotMapLabels), sum(count.CInfNetHotMapLabels), sum(count.TInfNetHotMapLabelsOff), sum(count.CInfNetHotMapLabelsOff)), nrow = 2)

rownames(hot_map_INFNET_alt) <- c("Treatment", "control")
colnames(hot_map_INFNET_alt) <- c("yes-label", "no-label")

#hot_map_INFNET

#chisq.test(hot_map_INFNET)

#fisher.test(hot_map_INFNET)

#oddsratio.wald(hot_map_INFNET)

hot_map_INFNET_alt

chisq.test(hot_map_INFNET_alt)

fisher.test(hot_map_INFNET_alt)

oddsratio.wald(hot_map_INFNET_alt)

#total new labels considered relevant ex: 21 on from 32 possible only treatment
#total old labels considered relevant ex: 40 on from 60 possible only treatment

#relevant_labels_INFNET <- matrix(c(21/32, 40/60, 11/32, 20/60), nrow = 2)

#relevant_labels_INFNET <- matrix(c(sum(count.TInfNetNewLabels), sum(count.TInfNetNewLabelsNonRel), sum(count.TInfNetOldLabels), sum(count.TInfNetOldLabelsNonRel)), nrow = 2)
relevant_labels_INFNET <- matrix(c(sum(count.TInfNetNewLabels), sum(count.TInfNetOldLabels), sum(count.TInfNetNewLabelsNonRel), sum(count.TInfNetOldLabelsNonRel)), nrow = 2)

rownames(relevant_labels_INFNET) <- c("new Labels", "old Labels")
colnames(relevant_labels_INFNET) <- c("yes-relevant", "no-relevant")

relevant_labels_INFNET

chisq.test(relevant_labels_INFNET)

cramerV <- function(data) {
  tempchi <- chisq.test(data);
  chi2 <- unname(tempchi$statistic["X-squared"]);
  pvalue <- unname(tempchi$p.value);
  cv <- sqrt(chi2 / sum(data) / (min(length(data), nrow(data))-1));
  c(effsize = cv, p.value = pvalue, chi2 = chi2); 
}

cramerV(relevant_labels_INFNET)

fisher.test(relevant_labels_INFNET)

oddsratio.wald(relevant_labels_INFNET)

# by hand ex:
#treat <- 21/11
#treat
#control <-40/20
#control

#odd <- treat/control
#odd

treat <- sum(count.TInfNetNewLabels)/sum(count.TInfNetNewLabelsNonRel)
treat
control <-sum(count.TInfNetOldLabels)/sum(count.TInfNetOldLabelsNonRel)
control

odd <- treat/control
odd

# total labels considered relevant and non relevant treatment
# total labels considered relevant and non relevant control

#relevant_labels_INFNET_alt <- matrix(c(240/438, 52/112, 198/438, 60/112), nrow = 2)

relevant_labels_INFNET_alt <- matrix(c(sum(count.TInfNetNewLabels)+sum(count.TInfNetOldLabels), sum(count.CInfNetLabels), sum(count.TInfNetNewLabelsNonRel)+sum(count.TInfNetOldLabelsNonRel), sum(count.CInfNetLabelsNonRel)), nrow = 2)

rownames(relevant_labels_INFNET_alt) <- c("Labels Treatment", "Labels control")
colnames(relevant_labels_INFNET_alt) <- c("yes-relevant", "no-relevant")

relevant_labels_INFNET_alt

chisq.test(relevant_labels_INFNET_alt)

cramerV <- function(data) {
  tempchi <- chisq.test(data);
  chi2 <- unname(tempchi$statistic["X-squared"]);
  pvalue <- unname(tempchi$p.value);
  cv <- sqrt(chi2 / sum(data) / (min(length(data), nrow(data))-1));
  c(effsize = cv, p.value = pvalue, chi2 = chi2); 
}

cramerV(relevant_labels_INFNET_alt)

fisher.test(relevant_labels_INFNET_alt)

oddsratio.wald(relevant_labels_INFNET_alt)

#treat_alt <- 240/198
#treat_alt
#control_alt <-52/60
#control_alt

#odd_alt <- treat_alt/control_alt
#odd_alt

treat <- (sum(count.TInfNetNewLabels)+sum(count.TInfNetOldLabels)) / (sum(count.TInfNetNewLabelsNonRel)+sum(count.TInfNetOldLabelsNonRel))
treat
control <-sum(count.CInfNetLabels)/sum(count.CInfNetLabelsNonRel)
control

odd <- treat/control
odd
