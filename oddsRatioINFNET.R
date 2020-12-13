# INFNET

infT <- read.csv("surveyINFNET-JAVA-C-JAVA.csv")
infC <- read.csv("surveyINFNET-JAVA-C-JAVA-1.csv")

colnames(infT)
colnames(infC)

infTLabels <- infT[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os",	"groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
#infCLabels <- infC[c("X",ui","groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
infCLabels <- infC[c("X", "Q46_1",	"Q46_2",	"Q46_3",	"Q46_4",	"Q46_5",	"Q46_6",	"Q46_7",	"Q46_8",	"Q46_9",	"Q46_10",	"Q46_11",	"Q46_12",	"Q46_13",	"Q46_14",	"Q46_15", "Q46_16")]
#Q46_1	Q46_2	Q46_3	Q46_4	Q46_5	Q46_6	Q46_7	Q46_8	Q46_9	Q46_10	Q46_11	Q46_12	Q46_13	Q46_14	Q46_15	Q46_16 
infTNewLabels <- infT[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os"	)]
infTOldLabels <- infT[c("X","groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]

infTHotMapLabels <- infT[c("X","Q52_4","Q52_8","Q52_9","Q52_12")]
infTHotMapNonLabels <- infT[c("X","Q52_1","Q52_2","Q52_3","Q52_5","Q52_6","Q52_7","Q52_10","Q52_11")]

infCHotMapLabels <- infC[c("X","Q51_4","Q51_8","Q51_9","Q51_12")]
infCHotMapNonLabels <- infC[c("X","Q51_1","Q51_2","Q51_3","Q51_5","Q51_6","Q51_7","Q51_10","Q51_11")]

count.TNewLabels <- apply(infTNewLabels, 2, function(x) length(which(x=="relevant")))
count.TNewLabels
sum(count.TNewLabels)

count.TOldLabels <- apply(infTOldLabels, 2, function(x) length(which(x=="relevant")))
count.TOldLabels
sum(count.TOldLabels)

count.TNewLabelsNonRel <- apply(infTNewLabels, 2, function(x) length(which(x=="not relevant")))
count.TNewLabelsNonRel
sum(count.TNewLabelsNonRel)

count.TOldLabelsNonRel <- apply(infTOldLabels, 2, function(x) length(which(x=="not relevant")))
count.TOldLabelsNonRel
sum(count.TOldLabelsNonRel)

count.THotMapLabels <- apply(infTHotMapLabels, 2, function(x) length(which(x=="On")))
count.THotMapLabels
sum(count.THotMapLabels)

count.THotMapLabelsOff <- apply(infTHotMapLabels, 2, function(x) length(which(x=="Off")))
count.THotMapLabelsOff
sum(count.THotMapLabelsOff)

count.THotMapNonLabels <- apply(infTHotMapNonLabels, 2, function(x) length(which(x=="On")))
count.THotMapNonLabels
sum(count.THotMapNonLabels)

count.CHotMapLabels <- apply(infCHotMapLabels, 2, function(x) length(which(x=="On")))
count.CHotMapLabels
sum(count.CHotMapLabels)

count.CHotMapLabelsOff <- apply(infCHotMapLabels, 2, function(x) length(which(x=="Off")))
count.CHotMapLabelsOff
sum(count.CHotMapLabelsOff)


count.CHotMapNonLabels <- apply(infCHotMapNonLabels, 2, function(x) length(which(x=="On")))
count.CHotMapNonLabels
sum(count.CHotMapNonLabels)

count.CLabels <- apply(infCLabels, 2, function(x) length(which(x=="relevant")))
count.CLabels
sum(count.CLabels)

count.CLabelsNonRel <- apply(infCLabels, 2, function(x) length(which(x=="not relevant")))
count.CLabelsNonRel
sum(count.CLabelsNonRel)

# treatment 3 labels selected 16 other regions selected
# control 3 labels selected 9 other regions selected
#hot_map_INFNET <- matrix(c(3, 3, 16, 9), nrow = 2)

# or
# treatment ex:3 labels selected 9 off or 3 from 12 possible
# control ex:3 labels selected 13 off or 3 from 16 possible

#hot_map_INFNET_alt <- matrix(c(3/12, 3/16, 9/12, 13/16), nrow = 2)

hot_map_INFNET_alt <- matrix(c(sum(count.THotMapLabels), sum(count.CHotMapLabels), sum(count.THotMapLabelsOff), sum(count.CHotMapLabelsOff)), nrow = 2)

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

relevant_labels_INFNET <- matrix(c(sum(count.TNewLabels), sum(count.TNewLabelsNonRel), sum(count.TOldLabels), sum(count.TOldLabelsNonRel)), nrow = 2)

rownames(relevant_labels_INFNET) <- c("new Labels", "old Labels")
colnames(relevant_labels_INFNET) <- c("yes-relevant", "no-relevant")

relevant_labels_INFNET

chisq.test(relevant_labels_INFNET)

fisher.test(relevant_labels_INFNET)

oddsratio.wald(relevant_labels_INFNET)

# by hand ex:
#treat <- 21/11
#treat
#control <-40/20
#control

#odd <- treat/control
#odd

treat <- sum(count.TNewLabels)/sum(count.TNewLabelsNonRel)
treat
control <-sum(count.TOldLabels)/sum(count.TOldLabelsNonRel)
control

odd <- treat/control
odd

# total labels considered relevant and non relevant treatment
# total labels considered relevant and non relevant control

#relevant_labels_INFNET_alt <- matrix(c(240/438, 52/112, 198/438, 60/112), nrow = 2)

relevant_labels_INFNET_alt <- matrix(c(sum(count.TNewLabels)+sum(count.TOldLabels), sum(count.CLabels), sum(count.TNewLabelsNonRel)+sum(count.TOldLabelsNonRel), sum(count.CLabelsNonRel)), nrow = 2)

rownames(relevant_labels_INFNET_alt) <- c("Labels Treatment", "Labels control")
colnames(relevant_labels_INFNET_alt) <- c("yes-relevant", "no-relevant")

relevant_labels_INFNET_alt

chisq.test(relevant_labels_INFNET_alt)

fisher.test(relevant_labels_INFNET_alt)

oddsratio.wald(relevant_labels_INFNET_alt)

#treat_alt <- 240/198
#treat_alt
#control_alt <-52/60
#control_alt

#odd_alt <- treat_alt/control_alt
#odd_alt

treat <- (sum(count.TNewLabels)+sum(count.TOldLabels)) / (sum(count.TNewLabelsNonRel)+sum(count.TOldLabelsNonRel))
treat
control <-sum(count.CLabels)/sum(count.CLabelsNonRel)
control

odd <- treat/control
odd
