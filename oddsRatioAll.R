# Odds Ratio all 

# Prepare DF
#Treat
allLabelsT <- treatAll[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os",	"groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
allNewLabelsT <- treatAll[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os"	)]
allOldLabelsT <- treatAll[c("X","groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
allHotMapLabelsT <- treatAll[c("X","Q50_4","Q50_8","Q50_9","Q50_12")]
allHotMapNonLabelsT <- treatAll[c("X","Q50_1","Q50_2","Q50_3","Q50_5","Q50_6","Q50_7","Q50_10","Q50_11")]
allHotMapTitlesT <- treatAll[c("X","Q50_4","Q50_8","Q50_9","Q50_12")]
allHotMapNonTitlesT <- treatAll[c("X","Q50_1","Q50_2","Q50_3","Q50_5","Q50_6","Q50_7","Q50_10","Q50_11")]

# Control
#allLabelsC <- controlAll[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os",	"groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
#allNewLabelsC <- controlAll[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os"	)]
allOldLabelsC <- controlAll[c("X","groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
allHotMapLabelsC <- controlAll[c("X","Q50_4","Q50_8","Q50_9","Q50_12")]
allHotMapNonLabelsC <- controlAll[c("X","Q50_1","Q50_2","Q50_3","Q50_5","Q50_6","Q50_7","Q50_10","Q50_11")]

# 
# stud Treat

#new LabelsT relevant
count.allNewLabelsT <- apply(allNewLabelsT, 2, function(x) length(which(x=="relevant")))
count.allNewLabelsT
sum(count.allNewLabelsT)

#old LabelsT relevant
count.allOldLabelsT <- apply(allOldLabelsT, 2, function(x) length(which(x=="relevant")))
count.allOldLabelsT
sum(count.allOldLabelsT)

#new LabelsT not relevant
count.allNewLabelsTNonRel <- apply(allNewLabelsT, 2, function(x) length(which(x=="not relevant")))
count.allNewLabelsTNonRel
sum(count.allNewLabelsTNonRel)

#old LabelsT not relevant
count.allOldLabelsTNonRel <- apply(allOldLabelsT, 2, function(x) length(which(x=="not relevant")))
count.allOldLabelsTNonRel
sum(count.allOldLabelsTNonRel)

# hot map lables on
count.allHotMapLabelsT <- apply(allHotMapLabelsT, 2, function(x) length(which(x=="On")))
count.allHotMapLabelsT
sum(count.allHotMapLabelsT)

# hot map lables off
count.allHotMapLabelsTOff <- apply(allHotMapLabelsT, 2, function(x) length(which(x=="Off")))
count.allHotMapLabelsTOff
sum(count.allHotMapLabelsTOff)

# hot map non LabelsT on
count.allHotMapNonLabelsT <- apply(allHotMapNonLabelsT, 2, function(x) length(which(x=="On")))
count.allHotMapNonLabelsT
sum(count.allHotMapNonLabelsT)

# hot map non LabelsT off
count.allHotMapNonLabelsTOff <- apply(allHotMapNonLabelsT, 2, function(x) length(which(x=="Off")))
count.allHotMapNonLabelsTOff
sum(count.allHotMapNonLabelsTOff)

# all LabelsT relevant
count.allLabelsT <- apply(allLabelsT, 2, function(x) length(which(x=="relevant")))
count.allLabelsT
sum(count.allLabelsT)

# all LabelsT not relevant
count.allLabelsTNonRel <- apply(allLabelsT, 2, function(x) length(which(x=="not relevant")))
count.allLabelsTNonRel
sum(count.allLabelsTNonRel)

# stud Control

#new LabelsC relevant
#count.allNewLabelsC <- apply(allNewLabelsC, 2, function(x) length(which(x=="relevant")))
#count.allNewLabelsC
#sum(count.allNewLabelsC)

#old LabelsC relevant
count.allOldLabelsC <- apply(allOldLabelsC, 2, function(x) length(which(x=="relevant")))
count.allOldLabelsC
sum(count.allOldLabelsC)

#new LabelsC not relevant
#count.allNewLabelsCNonRel <- apply(allNewLabelsC, 2, function(x) length(which(x=="not relevant")))
#count.allNewLabelsCNonRel
#sum(count.allNewLabelsCNonRel)

#old LabelsC not relevant
count.allOldLabelsCNonRel <- apply(allOldLabelsC, 2, function(x) length(which(x=="not relevant")))
count.allOldLabelsCNonRel
sum(count.allOldLabelsCNonRel)

# hot map lables on
count.allHotMapLabelsC <- apply(allHotMapLabelsC, 2, function(x) length(which(x=="On")))
count.allHotMapLabelsC
sum(count.allHotMapLabelsC)

# hot map lables off
count.allHotMapLabelsCOff <- apply(allHotMapLabelsC, 2, function(x) length(which(x=="Off")))
count.allHotMapLabelsCOff
sum(count.allHotMapLabelsCOff)

# hot map non LabelsC on
count.allHotMapNonLabelsC <- apply(allHotMapNonLabelsC, 2, function(x) length(which(x=="On")))
count.allHotMapNonLabelsC
sum(count.allHotMapNonLabelsC)

# hot map non LabelsC off
count.allHotMapNonLabelsCOff <- apply(allHotMapNonLabelsC, 2, function(x) length(which(x=="Off")))
count.allHotMapNonLabelsCOff
sum(count.allHotMapNonLabelsCOff)

# all LabelsC relevant
#count.allLabelsC <- apply(allLabelsC, 2, function(x) length(which(x=="relevant")))
#count.allLabelsC
#sum(count.allLabelsC)

# all LabelsC not relevant
#count.allLabelsCNonRel <- apply(allLabelsC, 2, function(x) length(which(x=="not relevant")))
##count.allLabelsCNonRel
#sum(count.allLabelsCNonRel)

# stud Treat x Control -------------------------------------

# stud 3 labels selected 16 other regions selected
# Stud 3 labels selected 9 other regions selected
#hot_map_all_Stud <- matrix(c(3, 3, 16, 9), nrow = 2)

# or
# stud ex:3 labels selected 9 off or 3 from 12 possible
# Stud ex:3 labels selected 13 off or 3 from 16 possible

#hot_map_all_alt <- matrix(c(3/12, 3/16, 9/12, 13/16), nrow = 2)

hot_map_all_alt <- matrix(c(sum(count.allHotMapLabelsT), sum(count.allHotMapLabelsC), sum(count.allHotMapLabelsTOff), sum(count.allHotMapLabelsCOff)), nrow = 2)

rownames(hot_map_all_alt) <- c("All Treat", "All Control")
colnames(hot_map_all_alt) <- c("yes-label", "no-label")

#hot_map_stud

#chisq.test(hot_map_stud)

#fisher.test(hot_map_stud)

#oddsratio.wald(hot_map_stud)

hot_map_all_alt

chisq.test(hot_map_all_alt)

fisher.test(hot_map_all_alt)

oddsratio.wald(hot_map_all_alt)

#total new labels considered relevant ex: 21 on from 32 possible only stud
#total new labels considered relevant ex: 40 on from 60 possible only Stud

#relevant_labels_all_Stud <- matrix(c(21/32, 40/60, 11/32, 20/60), nrow = 2)

relevant_labels_all <- matrix(c(sum(count.allNewLabelsT), sum(count.allOldLabelsT), sum(count.allNewLabelsTNonRel), sum(count.allOldLabelsTNonRel)), nrow = 2)

rownames(relevant_labels_all) <- c("new Labels All", "old Labels All")
colnames(relevant_labels_all) <- c("yes-relevant", "no-relevant")

relevant_labels_all

chisq.test(relevant_labels_all)

cramerV <- function(data) {
  tempchi <- chisq.test(data);
  chi2 <- unname(tempchi$statistic["X-squared"]);
  pvalue <- unname(tempchi$p.value);
  cv <- sqrt(chi2 / sum(data) / (min(length(data), nrow(data))-1));
  c(effsize = cv, p.value = pvalue, chi2 = chi2); 
}

cramerV(relevant_labels_all)

fisher.test(relevant_labels_all)

oddsratio.wald(relevant_labels_all)

# by hand ex:
#treat <- 21/11
#treat
#control <-40/20
#control

#odd <- treat/control
#odd

#treat <- sum(count.allNewLabels)/sum(count.allNewLabelsNonRel)
#treat
#control <-sum(count.StudNewLabels)/sum(count.StudNewLabelsNonRel)
#control

#odd <- treat/control
#odd

# total labels considered relevant and non relevant stud Treat
# total labels considered relevant and non relevant stud Control

#relevant_labels_all_Stud_alt <- matrix(c(240/438, 52/112, 198/438, 60/112), nrow = 2)

relevant_labels_all_alt <- matrix(c(sum(count.allLabelsT), sum(count.allOldLabelsC), sum(count.allLabelsTNonRel), sum(count.allOldLabelsCNonRel)), nrow = 2)

rownames(relevant_labels_all_alt) <- c("All Labels stud Treat", "All Labels stud Control")
colnames(relevant_labels_all_alt) <- c("yes-relevant", "no-relevant")

relevant_labels_all_alt 

chisq.test(relevant_labels_all_alt)

cramerV <- function(data) {
  tempchi <- chisq.test(data);
  chi2 <- unname(tempchi$statistic["X-squared"]);
  pvalue <- unname(tempchi$p.value);
  cv <- sqrt(chi2 / sum(data) / (min(length(data), nrow(data))-1));
  c(effsize = cv, p.value = pvalue, chi2 = chi2); 
}

cramerV(relevant_labels_all_alt)

fisher.test(relevant_labels_all_alt)

oddsratio.wald(relevant_labels_all_alt)

#treat_alt <- 240/198
#treat_alt
#control_alt <-52/60
#control_alt

#odd_alt <- treat_alt/control_alt
#odd_alt

treat <- sum(count.allLabelsT) / sum(count.allLabelsTNonRel)
treat
control <-sum(count.allOldLabelsC)/sum(count.allOldLabelsCNonRel)
control

odd <- treat/control
odd


