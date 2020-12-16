#CASNAV

casnavT <- read.csv("surveyCASNAV.csv")
casnavC <- read.csv("surveyCASNAV-1.csv")

colnames(casnavT)
colnames(casnavC)
#casnavTLabels <- casnavT[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os",	"groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
casnavTLabels <- casnavT[c("X", "Q44_1",	"Q44_2",	"Q44_3",	"Q44_4",	"Q44_5",	"Q44_6",	"Q44_7",	"Q44_8",	"Q44_9",	"Q44_10",	"Q44_11",	"Q44_12",	"Q44_13",	"Q44_14",	"Q44_15", "Q44_16", "Q44_17", "Q44_18", "Q44_19", "Q44_20", "Q44_21", "Q44_22", "Q44_23")]

#casnavCLabels <- casnavC[c("X",ui","groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
casnavCLabels <- casnavC[c("X", "Q46_1",	"Q46_2",	"Q46_3",	"Q46_4",	"Q46_5",	"Q46_6",	"Q46_7",	"Q46_8",	"Q46_9",	"Q46_10",	"Q46_11",	"Q46_12",	"Q46_13",	"Q46_14",	"Q46_15", "Q46_16")]
#Q46_1	Q46_2	Q46_3	Q46_4	Q46_5	Q46_6	Q46_7	Q46_8	Q46_9	Q46_10	Q46_11	Q46_12	Q46_13	Q46_14	Q46_15	Q46_16 
#casnavTNewLabels <- casnavT[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os"	)]
casnavTNewLabels <- casnavT[c("X","Q44_1",	"Q44_2",	"Q44_3",	"Q44_4",	"Q44_5",	"Q44_6",	"Q44_7",	"Q44_8"	)]

#casnavTOldLabels <- casnavT[c("X","groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
casnavTOldLabels <- casnavT[c("X","Q44_9",	"Q44_10",	"Q44_11",	"Q44_12",	"Q44_13",	"Q44_14",	"Q44_15", "Q44_16", "Q44_17", "Q44_18", "Q44_19", "Q44_20", "Q44_21", "Q44_22", "Q44_23")]

#Q16_1	Q16_2	Q16_3	Q16_4	Q16_5	Q16_6	Q16_7	Q16_8	Q16_9	Q16_10

casnavTHotMapLabels <- casnavT[c("X","Q16_4","Q16_8","Q16_9")]
casnavTHotMapNonLabels <- casnavT[c("X","Q16_1","Q16_2","Q16_3","Q16_5","Q16_6","Q16_7","Q16_10")]

casnavCHotMapLabels <- casnavC[c("X","Q16_4","Q16_8","Q16_9")]
casnavCHotMapNonLabels <- casnavC[c("X","Q16_1","Q16_2","Q16_3","Q16_5","Q16_6","Q16_7","Q16_10")]

count.TCasnavNewLabels <- apply(casnavTNewLabels, 2, function(x) length(which(x=="relevant")))
count.TCasnavNewLabels
sum(count.TCasnavNewLabels)

count.TCasnavOldLabels <- apply(casnavTOldLabels, 2, function(x) length(which(x=="relevant")))
count.TCasnavOldLabels
sum(count.TCasnavOldLabels)

count.TCasnavNewLabelsNonRel <- apply(casnavTNewLabels, 2, function(x) length(which(x=="not relevant")))
count.TCasnavNewLabelsNonRel
sum(count.TCasnavNewLabelsNonRel)

count.TCasnavOldLabelsNonRel <- apply(casnavTOldLabels, 2, function(x) length(which(x=="not relevant")))
count.TCasnavOldLabelsNonRel
sum(count.TCasnavOldLabelsNonRel)

count.TCasnavHotMapLabels <- apply(casnavTHotMapLabels, 2, function(x) length(which(x=="On")))
count.TCasnavHotMapLabels
sum(count.TCasnavHotMapLabels)

count.TCasnavHotMapLabelsOff <- apply(casnavTHotMapLabels, 2, function(x) length(which(x=="Off")))
count.TCasnavHotMapLabelsOff
sum(count.TCasnavHotMapLabelsOff)

count.TCasnavHotMapNonLabels <- apply(casnavTHotMapNonLabels, 2, function(x) length(which(x=="On")))
count.TCasnavHotMapNonLabels
sum(count.TCasnavHotMapNonLabels)

count.CCasnavHotMapLabels <- apply(casnavCHotMapLabels, 2, function(x) length(which(x=="On")))
count.CCasnavHotMapLabels
sum(count.CCasnavHotMapLabels)

count.CCasnavHotMapLabelsOff <- apply(casnavCHotMapLabels, 2, function(x) length(which(x=="Off")))
count.CCasnavHotMapLabelsOff
sum(count.CCasnavHotMapLabelsOff)


count.CCasnavHotMapNonLabels <- apply(casnavCHotMapNonLabels, 2, function(x) length(which(x=="On")))
count.CCasnavHotMapNonLabels
sum(count.CCasnavHotMapNonLabels)

count.CCasnavLabels <- apply(casnavCLabels, 2, function(x) length(which(x=="relevant")))
count.CCasnavLabels
sum(count.CCasnavLabels)

count.CCasnavLabelsNonRel <- apply(casnavCLabels, 2, function(x) length(which(x=="not relevant")))
count.CCasnavLabelsNonRel
sum(count.CCasnavLabelsNonRel)

# treatment 3 labels selected 16 other regions selected
# control 3 labels selected 9 other regions selected
#hot_map_CASNAV <- matrix(c(3, 3, 16, 9), nrow = 2)

# or
# treatment ex:3 labels selected 9 off or 3 from 12 possible
# control ex:3 labels selected 13 off or 3 from 16 possible

#hot_map_CASNAV_alt <- matrix(c(3/12, 3/16, 9/12, 13/16), nrow = 2)

hot_map_CASNAV_alt <- matrix(c(sum(count.TCasnavHotMapLabels), sum(count.CCasnavHotMapLabels), sum(count.TCasnavHotMapLabelsOff), sum(count.CCasnavHotMapLabelsOff)), nrow = 2)

rownames(hot_map_CASNAV_alt) <- c("Treatment", "control")
colnames(hot_map_CASNAV_alt) <- c("yes-label", "no-label")

#hot_map_CASNAV

#chisq.test(hot_map_CASNAV)

#fisher.test(hot_map_CASNAV)

#oddsratio.wald(hot_map_CASNAV)

hot_map_CASNAV_alt

chisq.test(hot_map_CASNAV_alt)

fisher.test(hot_map_CASNAV_alt)

oddsratio.wald(hot_map_CASNAV_alt)

#total new labels considered relevant ex: 21 on from 32 possible only treatment
#total old labels considered relevant ex: 40 on from 60 possible only treatment

#relevant_labels_CASNAV <- matrix(c(21/32, 40/60, 11/32, 20/60), nrow = 2)

#relevant_labels_CASNAV <- matrix(c(sum(count.TCasnavNewLabels), sum(count.TCasnavNewLabelsNonRel), sum(count.TCasnavOldLabels), sum(count.TCasnavOldLabelsNonRel)), nrow = 2)
relevant_labels_CASNAV <- matrix(c(sum(count.TCasnavNewLabels), sum(count.TCasnavOldLabels), sum(count.TCasnavNewLabelsNonRel), sum(count.TCasnavOldLabelsNonRel)), nrow = 2)

rownames(relevant_labels_CASNAV) <- c("new Labels", "old Labels")
colnames(relevant_labels_CASNAV) <- c("yes-relevant", "no-relevant")

relevant_labels_CASNAV

chisq.test(relevant_labels_CASNAV)

fisher.test(relevant_labels_CASNAV)

oddsratio.wald(relevant_labels_CASNAV)

# by hand ex:
#treat <- 21/11
#treat
#control <-40/20
#control

#odd <- treat/control
#odd

treat <- sum(count.TCasnavNewLabels)/sum(count.TCasnavNewLabelsNonRel)
treat
control <-sum(count.TCasnavOldLabels)/sum(count.TCasnavOldLabelsNonRel)
control

odd <- treat/control
odd

# total labels considered relevant and non relevant treatment
# total labels considered relevant and non relevant control

#relevant_labels_CASNAV_alt <- matrix(c(240/438, 52/112, 198/438, 60/112), nrow = 2)

relevant_labels_CASNAV_alt <- matrix(c(sum(count.TCasnavNewLabels)+sum(count.TCasnavOldLabels), sum(count.CCasnavLabels), sum(count.TCasnavNewLabelsNonRel)+sum(count.TCasnavOldLabelsNonRel), sum(count.CCasnavLabelsNonRel)), nrow = 2)

rownames(relevant_labels_CASNAV_alt) <- c("Labels Treatment", "Labels control")
colnames(relevant_labels_CASNAV_alt) <- c("yes-relevant", "no-relevant")

relevant_labels_CASNAV_alt

chisq.test(relevant_labels_CASNAV_alt)

cramerV <- function(data) {
  tempchi <- chisq.test(data);
  chi2 <- unname(tempchi$statistic["X-squared"]);
  pvalue <- unname(tempchi$p.value);
  cv <- sqrt(chi2 / sum(data) / (min(length(data), nrow(data))-1));
  c(effsize = cv, p.value = pvalue, chi2 = chi2); 
}

cramerV(relevant_labels_CASNAV_alt)


fisher.test(relevant_labels_CASNAV_alt)

oddsratio.wald(relevant_labels_CASNAV_alt)

#treat_alt <- 240/198
#treat_alt
#control_alt <-52/60
#control_alt

#odd_alt <- treat_alt/control_alt
#odd_alt

treat <- (sum(count.TCasnavNewLabels)+sum(count.TCasnavOldLabels)) / (sum(count.TCasnavNewLabelsNonRel)+sum(count.TCasnavOldLabelsNonRel))
treat
control <-sum(count.CCasnavLabels)/sum(count.CCasnavLabelsNonRel)
control

odd <- treat/control
odd

