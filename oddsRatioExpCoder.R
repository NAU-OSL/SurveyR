# Odds Ratio ExpCoder 

#------------------ ExpCoder x NonExpCoder

# Prepare DF
#ExpCoder
expCoderLabels <- allExpCoder[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os",	"groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
#expCoderNewLabels <- allExpCoder[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os"	)]
expCoderNewLabels <- treatExpCoder[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os"	)]
expCoderOldLabels <- allExpCoder[c("X","groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
expCoderHotMapLabels <- allExpCoder[c("X","Q50_4","Q50_8","Q50_9","Q50_12")]
expCoderHotMapNonLabels <- allExpCoder[c("X","Q50_1","Q50_2","Q50_3","Q50_5","Q50_6","Q50_7","Q50_10","Q50_11")]

#NonExpCoder
nonexpCoderLabels <- allNonExpCoder[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os",	"groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
#nonexpCoderNewLabels <- allNonExpCoder[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os"	)]
nonexpCoderNewLabels <- treatNonExpCoder[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os"	)]
nonexpCoderOldLabels <- allNonExpCoder[c("X","groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
nonexpCoderHotMapLabels <- allNonExpCoder[c("X","Q50_4","Q50_8","Q50_9","Q50_12")]
nonexpCoderHotMapNonLabels <- allNonExpCoder[c("X","Q50_1","Q50_2","Q50_3","Q50_5","Q50_6","Q50_7","Q50_10","Q50_11")]

# ExpCoder All

#new Labels relevant
expCoderNewLabels <- expCoderNewLabels[,-1]
count.expCoderNewLabels <- apply(expCoderNewLabels, 2, function(x) length(which(x=="relevant")))
count.expCoderNewLabels
sum(count.expCoderNewLabels)

#old Labels relevant
count.expCoderOldLabels <- apply(expCoderOldLabels, 2, function(x) length(which(x=="relevant")))
count.expCoderOldLabels
sum(count.expCoderOldLabels)

#new Labels not relevant
count.expCoderNewLabelsNonRel <- apply(expCoderNewLabels, 2, function(x) length(which(x=="not relevant")))
count.expCoderNewLabelsNonRel
sum(count.expCoderNewLabelsNonRel)

#old Labels not relevant
count.expCoderOldLabelsNonRel <- apply(expCoderOldLabels, 2, function(x) length(which(x=="not relevant")))
count.expCoderOldLabelsNonRel
sum(count.expCoderOldLabelsNonRel)

# hot map lables on
count.expCoderHotMapLabels <- apply(expCoderHotMapLabels, 2, function(x) length(which(x=="On")))
count.expCoderHotMapLabels
sum(count.expCoderHotMapLabels)

# hot map lables off
count.expCoderHotMapLabelsOff <- apply(expCoderHotMapLabels, 2, function(x) length(which(x=="Off")))
count.expCoderHotMapLabelsOff
sum(count.expCoderHotMapLabelsOff)

# hot map non Labels on
count.expCoderHotMapNonLabels <- apply(expCoderHotMapNonLabels, 2, function(x) length(which(x=="On")))
count.expCoderHotMapNonLabels
sum(count.expCoderHotMapNonLabels)

# hot map non Labels off
count.expCoderHotMapNonLabelsOff <- apply(expCoderHotMapNonLabels, 2, function(x) length(which(x=="Off")))
count.expCoderHotMapNonLabelsOff
sum(count.expCoderHotMapNonLabelsOff)

# all Labels relevant
count.expCoderLabels <- apply(expCoderLabels, 2, function(x) length(which(x=="relevant")))
count.expCoderLabels
sum(count.expCoderLabels)

# all Labels not relevant
count.expCoderLabelsNonRel <- apply(expCoderLabels, 2, function(x) length(which(x=="not relevant")))
count.expCoderLabelsNonRel
sum(count.expCoderLabelsNonRel)

# Non ExpCoder All

#new Labels relevant
nonexpCoderNewLabels <- nonexpCoderNewLabels[,-1]
count.nonexpCoderNewLabels <- apply(nonexpCoderNewLabels, 2, function(x) length(which(x=="relevant")))
count.nonexpCoderNewLabels
sum(count.nonexpCoderNewLabels)

#old Labels relevant
count.nonexpCoderOldLabels <- apply(nonexpCoderOldLabels, 2, function(x) length(which(x=="relevant")))
count.nonexpCoderOldLabels
sum(count.nonexpCoderOldLabels)

#new Labels not relevant
count.nonexpCoderNewLabelsNonRel <- apply(nonexpCoderNewLabels, 2, function(x) length(which(x=="not relevant")))
count.nonexpCoderNewLabelsNonRel
sum(count.nonexpCoderNewLabelsNonRel)

#old Labels not relevant
count.nonexpCoderOldLabelsNonRel <- apply(nonexpCoderOldLabels, 2, function(x) length(which(x=="not relevant")))
count.nonexpCoderOldLabelsNonRel
sum(count.nonexpCoderOldLabelsNonRel)

# hot map lables on
count.nonexpCoderHotMapLabels <- apply(nonexpCoderHotMapLabels, 2, function(x) length(which(x=="On")))
count.nonexpCoderHotMapLabels
sum(count.nonexpCoderHotMapLabels)

# hot map lables off
count.nonexpCoderHotMapLabelsOff <- apply(nonexpCoderHotMapLabels, 2, function(x) length(which(x=="Off")))
count.nonexpCoderHotMapLabelsOff
sum(count.nonexpCoderHotMapLabelsOff)

# hot map non Labels on
count.nonexpCoderHotMapNonLabels <- apply(nonexpCoderHotMapNonLabels, 2, function(x) length(which(x=="On")))
count.nonexpCoderHotMapNonLabels
sum(count.nonexpCoderHotMapNonLabels)

# hot map non Labels off
count.nonexpCoderHotMapNonLabelsOff <- apply(nonexpCoderHotMapNonLabels, 2, function(x) length(which(x=="Off")))
count.nonexpCoderHotMapNonLabelsOff
sum(count.nonexpCoderHotMapNonLabelsOff)

# all Labels relevant
count.nonexpCoderLabels <- apply(nonexpCoderLabels, 2, function(x) length(which(x=="relevant")))
count.nonexpCoderLabels
sum(count.nonexpCoderLabels)

# all Labels not relevant
count.nonexpCoderLabelsNonRel <- apply(nonexpCoderLabels, 2, function(x) length(which(x=="not relevant")))
count.nonexpCoderLabelsNonRel
sum(count.nonexpCoderLabelsNonRel)

# ExpCoder x NonExpCoder -------------------------------------

# Indus 3 labels selected 16 other regions selected
# Stud 3 labels selected 9 other regions selected
#hot_map_Indus_Stud <- matrix(c(3, 3, 16, 9), nrow = 2)

# or
# Indus ex:3 labels selected 9 off or 3 from 12 possible
# Stud ex:3 labels selected 13 off or 3 from 16 possible

#hot_map_expCoder_alt <- matrix(c(3/12, 3/16, 9/12, 13/16), nrow = 2)

hot_map_expCoder_non_alt <- matrix(c(sum(count.expCoderHotMapLabels), sum(count.nonexpCoderHotMapLabels), sum(count.expCoderHotMapLabelsOff), sum(count.nonexpCoderHotMapLabelsOff)), nrow = 2)

rownames(hot_map_expCoder_non_alt) <- c("ExpCoder ", "Non ExpCoder ")
colnames(hot_map_expCoder_non_alt) <- c("yes-label", "no-label")

#hot_map_Indus

#chisq.test(hot_map_Indus)

#fisher.test(hot_map_Indus)

#oddsratio.wald(hot_map_Indus)

hot_map_expCoder_non_alt

chisq.test(hot_map_expCoder_non_alt)

fisher.test(hot_map_expCoder_non_alt)

oddsratio.wald(hot_map_expCoder_non_alt)

#total new labels considered relevant ex: 21 on from 32 possible only Indus
#total new labels considered relevant ex: 40 on from 60 possible only Stud

#relevant_labels_Indus_Stud <- matrix(c(21/32, 40/60, 11/32, 20/60), nrow = 2)

relevant_labels_ExpCode_non <- matrix(c(sum(count.expCoderNewLabels), sum(count.nonexpCoderNewLabels), sum(count.expCoderNewLabelsNonRel), sum(count.nonexpCoderNewLabelsNonRel)), nrow = 2)

rownames(relevant_labels_ExpCode_non) <- c("new Labels ExpCoder", "new Labels Non ExpCoder")
colnames(relevant_labels_ExpCode_non) <- c("yes-relevant", "no-relevant")

relevant_labels_ExpCode_non

chisq.test(relevant_labels_ExpCode_non)

cramerV <- function(data) {
  tempchi <- chisq.test(data);
  chi2 <- unname(tempchi$statistic["X-squared"]);
  pvalue <- unname(tempchi$p.value);
  cv <- sqrt(chi2 / sum(data) / (min(length(data), nrow(data))-1));
  c(effsize = cv, p.value = pvalue, chi2 = chi2); 
}

cramerV(relevant_labels_ExpCode_non)

fisher.test(relevant_labels_ExpCode_non)

oddsratio.wald(relevant_labels_ExpCode_non)

# by hand ex:
#treat <- 21/11
#treat
#control <-40/20
#control

#odd <- treat/control
#odd

treat <- sum(count.expCoderNewLabels)/sum(count.expCoderNewLabelsNonRel)
treat
control <-sum(count.nonexpCoderNewLabels)/sum(count.nonexpCoderNewLabelsNonRel)
control

odd <- treat/control
odd

# total labels considered relevant and non relevant Indus Treat
# total labels considered relevant and non relevant Indus Control

#relevant_labels_Indus_Stud_alt <- matrix(c(240/438, 52/112, 198/438, 60/112), nrow = 2)

relevant_labels_expCoder_non_alt <- matrix(c(sum(count.expCoderLabels), sum(count.nonexpCoderLabels), sum(count.expCoderLabelsNonRel), sum(count.nonexpCoderLabelsNonRel)), nrow = 2)

rownames(relevant_labels_expCoder_non_alt) <- c("All Labels ExpCoder ", "All Labels Non ExpCoder")
colnames(relevant_labels_expCoder_non_alt) <- c("yes-relevant", "no-relevant")

relevant_labels_expCoder_non_alt 

chisq.test(relevant_labels_expCoder_non_alt)

cramerV <- function(data) {
  tempchi <- chisq.test(data);
  chi2 <- unname(tempchi$statistic["X-squared"]);
  pvalue <- unname(tempchi$p.value);
  cv <- sqrt(chi2 / sum(data) / (min(length(data), nrow(data))-1));
  c(effsize = cv, p.value = pvalue, chi2 = chi2); 
}

cramerV(relevant_labels_expCoder_non_alt)

fisher.test(relevant_labels_expCoder_non_alt)

oddsratio.wald(relevant_labels_expCoder_non_alt)

#treat_alt <- 240/198
#treat_alt
#control_alt <-52/60
#control_alt

#odd_alt <- treat_alt/control_alt
#odd_alt

treat <- sum(count.expCoderLabels) / sum(count.expCoderLabelsNonRel)
treat
control <-sum(count.nonexpCoderLabels)/sum(count.nonexpCoderLabelsNonRel)
control

odd <- treat/control
odd




#----------------- ExpCoder x ExpCoder 
# Prepare DF
#Treat
expCoderAllLabelsT <- treatExpCoder[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os",	"groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
expCoderAllNewLabelsT <- treatExpCoder[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os"	)]
expCoderAllOldLabelsT <- treatExpCoder[c("X","groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
expCoderAllHotMapLabelsT <- treatExpCoder[c("X","Q50_4","Q50_8","Q50_9","Q50_12")]
expCoderAllHotMapNonLabelsT <- treatExpCoder[c("X","Q50_1","Q50_2","Q50_3","Q50_5","Q50_6","Q50_7","Q50_10","Q50_11")]

# Control
#expCoderAllLabelsC <- controlExpCoder[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os",	"groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
#expCoderAllNewLabelsC <- controlExpCoder[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os"	)]
expCoderAllOldLabelsC <- controlExpCoder[c("X","groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
expCoderAllHotMapLabelsC <- controlExpCoder[c("X","Q50_4","Q50_8","Q50_9","Q50_12")]
expCoderAllHotMapNonLabelsC <- controlExpCoder[c("X","Q50_1","Q50_2","Q50_3","Q50_5","Q50_6","Q50_7","Q50_10","Q50_11")]

# 
# ExpCoder Treat

#new LabelsT relevant
count.expCoderNewLabelsT <- apply(expCoderAllNewLabelsT, 2, function(x) length(which(x=="relevant")))
count.expCoderNewLabelsT
sum(count.expCoderNewLabelsT)

#old LabelsT relevant
count.expCoderOldLabelsT <- apply(expCoderAllOldLabelsT, 2, function(x) length(which(x=="relevant")))
count.expCoderOldLabelsT
sum(count.expCoderOldLabelsT)

#new LabelsT not relevant
count.expCoderNewLabelsTNonRel <- apply(expCoderAllNewLabelsT, 2, function(x) length(which(x=="not relevant")))
count.expCoderNewLabelsTNonRel
sum(count.expCoderNewLabelsTNonRel)

#old LabelsT not relevant
count.expCoderOldLabelsTNonRel <- apply(expCoderAllOldLabelsT, 2, function(x) length(which(x=="not relevant")))
count.expCoderOldLabelsTNonRel
sum(count.expCoderOldLabelsTNonRel)

# hot map lables on
count.expCoderHotMapLabelsT <- apply(expCoderAllHotMapLabelsT, 2, function(x) length(which(x=="On")))
count.expCoderHotMapLabelsT
sum(count.expCoderHotMapLabelsT)

# hot map lables off
count.expCoderHotMapLabelsTOff <- apply(expCoderAllHotMapLabelsT, 2, function(x) length(which(x=="Off")))
count.expCoderHotMapLabelsTOff
sum(count.expCoderHotMapLabelsTOff)

# hot map non LabelsT on
count.expCoderHotMapNonLabelsT <- apply(expCoderAllHotMapNonLabelsT, 2, function(x) length(which(x=="On")))
count.expCoderHotMapNonLabelsT
sum(count.expCoderHotMapNonLabelsT)

# hot map non LabelsT off
count.expCoderHotMapNonLabelsTOff <- apply(expCoderAllHotMapNonLabelsT, 2, function(x) length(which(x=="Off")))
count.expCoderHotMapNonLabelsTOff
sum(count.expCoderHotMapNonLabelsTOff)

# all LabelsT relevant
count.expCoderLabelsT <- apply(expCoderAllLabelsT, 2, function(x) length(which(x=="relevant")))
count.expCoderLabelsT
sum(count.expCoderLabelsT)

# all LabelsT not relevant
count.expCoderLabelsTNonRel <- apply(expCoderAllLabelsT, 2, function(x) length(which(x=="not relevant")))
count.expCoderLabelsTNonRel
sum(count.expCoderLabelsTNonRel)

# ExpCoder Control

#new LabelsC relevant
#count.expCoderNewLabelsC <- apply(expCoderAllNewLabelsC, 2, function(x) length(which(x=="relevant")))
#count.expCoderNewLabelsC
#sum(count.expCoderNewLabelsC)

#old LabelsC relevant
count.expCoderOldLabelsC <- apply(expCoderAllOldLabelsC, 2, function(x) length(which(x=="relevant")))
count.expCoderOldLabelsC
sum(count.expCoderOldLabelsC)

#new LabelsC not relevant
#count.expCoderNewLabelsCNonRel <- apply(expCoderAllNewLabelsC, 2, function(x) length(which(x=="not relevant")))
#count.expCoderNewLabelsCNonRel
#sum(count.expCoderNewLabelsCNonRel)

#old LabelsC not relevant
count.expCoderOldLabelsCNonRel <- apply(expCoderAllOldLabelsC, 2, function(x) length(which(x=="not relevant")))
count.expCoderOldLabelsCNonRel
sum(count.expCoderOldLabelsCNonRel)

# hot map lables on
count.expCoderHotMapLabelsC <- apply(expCoderAllHotMapLabelsC, 2, function(x) length(which(x=="On")))
count.expCoderHotMapLabelsC
sum(count.expCoderHotMapLabelsC)

# hot map lables off
count.expCoderHotMapLabelsCOff <- apply(expCoderAllHotMapLabelsC, 2, function(x) length(which(x=="Off")))
count.expCoderHotMapLabelsCOff
sum(count.expCoderHotMapLabelsCOff)

# hot map non LabelsC on
count.expCoderHotMapNonLabelsC <- apply(expCoderAllHotMapNonLabelsC, 2, function(x) length(which(x=="On")))
count.expCoderHotMapNonLabelsC
sum(count.expCoderHotMapNonLabelsC)

# hot map non LabelsC off
count.expCoderHotMapNonLabelsCOff <- apply(expCoderAllHotMapNonLabelsC, 2, function(x) length(which(x=="Off")))
count.expCoderHotMapNonLabelsCOff
sum(count.expCoderHotMapNonLabelsCOff)

# all LabelsC relevant
#count.expCoderLabelsC <- apply(expCoderAllLabelsC, 2, function(x) length(which(x=="relevant")))
#count.expCoderLabelsC
#sum(count.expCoderLabelsC)

# all LabelsC not relevant
#count.expCoderLabelsCNonRel <- apply(expCoderAllLabelsC, 2, function(x) length(which(x=="not relevant")))
##count.expCoderLabelsCNonRel
#sum(count.expCoderLabelsCNonRel)

# ExpCoder Treat x Control -------------------------------------

# Indus 3 labels selected 16 other regions selected
# Stud 3 labels selected 9 other regions selected
#hot_map_Indus_Stud <- matrix(c(3, 3, 16, 9), nrow = 2)

# or
# Indus ex:3 labels selected 9 off or 3 from 12 possible
# Stud ex:3 labels selected 13 off or 3 from 16 possible

#hot_map_expCoder_alt <- matrix(c(3/12, 3/16, 9/12, 13/16), nrow = 2)

hot_map_expCoder_alt <- matrix(c(sum(count.expCoderHotMapLabelsT), sum(count.expCoderHotMapLabelsC), sum(count.expCoderHotMapLabelsTOff), sum(count.expCoderHotMapLabelsCOff)), nrow = 2)

rownames(hot_map_expCoder_alt) <- c("ExpCoder Treat", "ExpCoder Control")
colnames(hot_map_expCoder_alt) <- c("yes-label", "no-label")

#hot_map_Indus

#chisq.test(hot_map_Indus)

#fisher.test(hot_map_Indus)

#oddsratio.wald(hot_map_Indus)

hot_map_expCoder_alt

chisq.test(hot_map_expCoder_alt)

fisher.test(hot_map_expCoder_alt)

oddsratio.wald(hot_map_expCoder_alt)

#total new labels considered relevant ex: 21 on from 32 possible only Indus
#total new labels considered relevant ex: 40 on from 60 possible only Stud

#relevant_labels_Indus_Stud <- matrix(c(21/32, 40/60, 11/32, 20/60), nrow = 2)

relevant_labels_ExpCoder <- matrix(c(sum(count.expCoderNewLabels), sum(count.nonexpCoderNewLabels), sum(count.expCoderNewLabelsNonRel), sum(count.nonexpCoderNewLabelsNonRel)), nrow = 2)

rownames(relevant_labels_ExpCoder) <- c("new Labels expCoder", "new Labels non expCoder")
colnames(relevant_labels_ExpCoder) <- c("yes-relevant", "no-relevant")

relevant_labels_ExpCoder

chisq.test(relevant_labels_ExpCoder)

cramerV <- function(data) {
  tempchi <- chisq.test(data);
  chi2 <- unname(tempchi$statistic["X-squared"]);
  pvalue <- unname(tempchi$p.value);
  cv <- sqrt(chi2 / sum(data) / (min(length(data), nrow(data))-1));
  c(effsize = cv, p.value = pvalue, chi2 = chi2); 
}

cramerV(relevant_labels_ExpCoder)

fisher.test(relevant_labels_ExpCoder)

oddsratio.wald(relevant_labels_ExpCoder)

# by hand ex:
#treat <- 21/11
#treat
#control <-40/20
#control

#odd <- treat/control
#odd

treat <- sum(count.expCoderNewLabels)/sum(count.expCoderNewLabelsNonRel)
treat
control <-sum(count.nonexpCoderNewLabels)/sum(count.nonexpCoderNewLabelsNonRel)
control

odd <- treat/control
odd

# new labels T''

#relevant_labels_ExpCoder <- matrix(c(sum(count.expCoderNewLabelsT), sum(count.nonexpCoderNewLabelsT), sum(count.expCoderNewLabelsNonRel), sum(count.nonexpCoderNewLabelsNonRel)), nrow = 2)

#rownames(relevant_labels_ExpCoder) <- c("new Labels expCoder", "new Labels non expCoder")
#colnames(relevant_labels_ExpCoder) <- c("yes-relevant", "no-relevant")

#relevant_labels_ExpCoder

#chisq.test(relevant_labels_ExpCoder)

#cramerV <- function(data) {
#  tempchi <- chisq.test(data);
#  chi2 <- unname(tempchi$statistic["X-squared"]);
#  pvalue <- unname(tempchi$p.value);
#  cv <- sqrt(chi2 / sum(data) / (min(length(data), nrow(data))-1));
##  c(effsize = cv, p.value = pvalue, chi2 = chi2); 
#}

#cramerV(relevant_labels_ExpCoder)

#fisher.test(relevant_labels_ExpCoder)

#oddsratio.wald(relevant_labels_ExpCoder)

# total labels considered relevant and non relevant Indus Treat
# total labels considered relevant and non relevant Indus Control

#relevant_labels_Indus_Stud_alt <- matrix(c(240/438, 52/112, 198/438, 60/112), nrow = 2)

relevant_labels_expCoder_alt <- matrix(c(sum(count.expCoderLabelsT), sum(count.expCoderOldLabelsC), sum(count.expCoderLabelsTNonRel), sum(count.expCoderOldLabelsCNonRel)), nrow = 2)

rownames(relevant_labels_expCoder_alt) <- c("All Labels ExpCoder Treat", "All Labels ExpCoder Control")
colnames(relevant_labels_expCoder_alt) <- c("yes-relevant", "no-relevant")

relevant_labels_expCoder_alt 

chisq.test(relevant_labels_expCoder_alt)

fisher.test(relevant_labels_expCoder_alt)

oddsratio.wald(relevant_labels_expCoder_alt)

#treat_alt <- 240/198
#treat_alt
#control_alt <-52/60
#control_alt

#odd_alt <- treat_alt/control_alt
#odd_alt

treat <- sum(count.expCoderLabelsT) / sum(count.expCoderLabelsTNonRel)
treat
control <-sum(count.expCoderOldLabelsC)/sum(count.expCoderOldLabelsCNonRel)
control

odd <- treat/control
odd

# ---- Exp Coder x Non Exp Coder
#-
tec <- nrow(treatExpCoder)
tnec <- nrow(treatNonExpCoder)

#treatAllLabels <- treatAllLabels[,-1]
datalabelEC <- data.frame(
  #region=c("Author","Body","Code","Comments","Particip","Linked",   "Labels",     "Titles"),
  #total=c(16,54,41,25,4,6,52,66),  #c(16,54,41,25,4,6,52,66)
  labels=c("ui",	"io",	"gc",	"db",	"network",	"logging",	"test",	"os"),
  count.expCoderNewLabels/tec,
  count.nonexpCoderNewLabels/tnec,
  count.all= count.expCoderNewLabels/tec+count.nonexpCoderNewLabels/tnec
  #count1=count.1t+count.1c,
  #count2=count.2t+count.2c,
  #count3=count.3t+count.3c
  #top3=c(6,19,19,12,2,1,24,27)
)
datalabelEC
df <- datalabelEC[order(datalabelEC$count.all,decreasing = TRUE),]
df
#,6,19,19,12,2,1,24,27
#names.arg=c("Title","Author","Body","Side Label","Code Snippet","Comments","Participants","New Label 1", "New Label 1","linked",  "tileListPage", "labelListPage",     "sumLabels",     "sumTitles"),
par(mfrow=c(1,1))
pdf(file="./figures/NewLabelsExpCod.pdf")
barplot(height=df$count.all, names=df$labels, main="Labels ",  horiz=TRUE,)
#hist(count.1t, col="violet")
dev.off()

par(mfrow=c(1,1))
#mx <- t(as.matrix(data[-1]))
mx <- t(as.matrix(df[-c(1,4)]))
mx
colnames(mx) <- df$labels
colours = c("black","white")
# note the use of ylim to give 30% space for the legend
#barplot(mx,main='New Labels counts Exp. Coder x Non Exp. Coder normalized',ylab='Counts', xlab='Labels',beside = TRUE, 
barplot(mx,main='Experienced x Novice Coder',ylab='Counts', xlab='Labels',beside = TRUE, 
                col=colours, ylim=c(0,max(mx)*1.1))
# to add a box around the plot
box()

# add a legend
legend('topright',fill=colours,legend=c('Exp','Nov'))



