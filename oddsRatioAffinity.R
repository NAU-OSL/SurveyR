# Odds Ratio Affinity

#------------------ Affinity x No Affinity

# Prepare DF
#Affinity
affinityLabels <- allAffinity[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os",	"groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
affinityNewLabels <- allAffinity[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os"	)]
affinityOldLabels <- allAffinity[c("X","groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
affinityHotMapLabels <- allAffinity[c("X","Q50_4","Q50_8","Q50_9","Q50_12")]
affinityHotMapNonLabels <- allAffinity[c("X","Q50_1","Q50_2","Q50_3","Q50_5","Q50_6","Q50_7","Q50_10","Q50_11")]

#NonAffinity
nonaffinityLabels <- allNonAffinity[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os",	"groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
nonaffinityNewLabels <- allNonAffinity[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os"	)]
nonaffinityOldLabels <- allNonAffinity[c("X","groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
nonaffinityHotMapLabels <- allNonAffinity[c("X","Q50_4","Q50_8","Q50_9","Q50_12")]
nonaffinityHotMapNonLabels <- allNonAffinity[c("X","Q50_1","Q50_2","Q50_3","Q50_5","Q50_6","Q50_7","Q50_10","Q50_11")]

# Affinity All

#new Labels relevant
count.affinityNewLabels <- apply(affinityNewLabels, 2, function(x) length(which(x=="relevant")))
count.affinityNewLabels
sum(count.affinityNewLabels)

#old Labels relevant
count.affinityOldLabels <- apply(affinityOldLabels, 2, function(x) length(which(x=="relevant")))
count.affinityOldLabels
sum(count.affinityOldLabels)

#new Labels not relevant
count.affinityNewLabelsNonRel <- apply(affinityNewLabels, 2, function(x) length(which(x=="not relevant")))
count.affinityNewLabelsNonRel
sum(count.affinityNewLabelsNonRel)

#old Labels not relevant
count.affinityOldLabelsNonRel <- apply(affinityOldLabels, 2, function(x) length(which(x=="not relevant")))
count.affinityOldLabelsNonRel
sum(count.affinityOldLabelsNonRel)

# hot map lables on
count.affinityHotMapLabels <- apply(affinityHotMapLabels, 2, function(x) length(which(x=="On")))
count.affinityHotMapLabels
sum(count.affinityHotMapLabels)

# hot map lables off
count.affinityHotMapLabelsOff <- apply(affinityHotMapLabels, 2, function(x) length(which(x=="Off")))
count.affinityHotMapLabelsOff
sum(count.affinityHotMapLabelsOff)

# hot map non Labels on
count.affinityHotMapNonLabels <- apply(affinityHotMapNonLabels, 2, function(x) length(which(x=="On")))
count.affinityHotMapNonLabels
sum(count.affinityHotMapNonLabels)

# hot map non Labels off
count.affinityHotMapNonLabelsOff <- apply(affinityHotMapNonLabels, 2, function(x) length(which(x=="Off")))
count.affinityHotMapNonLabelsOff
sum(count.affinityHotMapNonLabelsOff)

# all Labels relevant
count.affinityLabels <- apply(affinityLabels, 2, function(x) length(which(x=="relevant")))
count.affinityLabels
sum(count.affinityLabels)

# all Labels not relevant
count.affinityLabelsNonRel <- apply(affinityLabels, 2, function(x) length(which(x=="not relevant")))
count.affinityLabelsNonRel
sum(count.affinityLabelsNonRel)

# Non Affinity All

#new Labels relevant
count.nonaffinityNewLabels <- apply(nonaffinityNewLabels, 2, function(x) length(which(x=="relevant")))
count.nonaffinityNewLabels
sum(count.nonaffinityNewLabels)

#old Labels relevant
count.nonaffinityOldLabels <- apply(nonaffinityOldLabels, 2, function(x) length(which(x=="relevant")))
count.nonaffinityOldLabels
sum(count.nonaffinityOldLabels)

#new Labels not relevant
count.nonaffinityNewLabelsNonRel <- apply(nonaffinityNewLabels, 2, function(x) length(which(x=="not relevant")))
count.nonaffinityNewLabelsNonRel
sum(count.nonaffinityNewLabelsNonRel)

#old Labels not relevant
count.nonaffinityOldLabelsNonRel <- apply(nonaffinityOldLabels, 2, function(x) length(which(x=="not relevant")))
count.nonaffinityOldLabelsNonRel
sum(count.nonaffinityOldLabelsNonRel)

# hot map lables on
count.nonaffinityHotMapLabels <- apply(nonaffinityHotMapLabels, 2, function(x) length(which(x=="On")))
count.nonaffinityHotMapLabels
sum(count.nonaffinityHotMapLabels)

# hot map lables off
count.nonaffinityHotMapLabelsOff <- apply(nonaffinityHotMapLabels, 2, function(x) length(which(x=="Off")))
count.nonaffinityHotMapLabelsOff
sum(count.nonaffinityHotMapLabelsOff)

# hot map non Labels on
count.nonaffinityHotMapNonLabels <- apply(nonaffinityHotMapNonLabels, 2, function(x) length(which(x=="On")))
count.nonaffinityHotMapNonLabels
sum(count.nonaffinityHotMapNonLabels)

# hot map non Labels off
count.nonaffinityHotMapNonLabelsOff <- apply(nonaffinityHotMapNonLabels, 2, function(x) length(which(x=="Off")))
count.nonaffinityHotMapNonLabelsOff
sum(count.nonaffinityHotMapNonLabelsOff)

# all Labels relevant
count.nonaffinityLabels <- apply(nonaffinityLabels, 2, function(x) length(which(x=="relevant")))
count.nonaffinityLabels
sum(count.nonaffinityLabels)

# all Labels not relevant
count.nonaffinityLabelsNonRel <- apply(nonaffinityLabels, 2, function(x) length(which(x=="not relevant")))
count.nonaffinityLabelsNonRel
sum(count.nonaffinityLabelsNonRel)

# Affinity x NonAffinity -------------------------------------

# Indus 3 labels selected 16 other regions selected
# Stud 3 labels selected 9 other regions selected
#hot_map_Indus_Stud <- matrix(c(3, 3, 16, 9), nrow = 2)

# or
# Indus ex:3 labels selected 9 off or 3 from 12 possible
# Stud ex:3 labels selected 13 off or 3 from 16 possible

#hot_map_affinity_alt <- matrix(c(3/12, 3/16, 9/12, 13/16), nrow = 2)

hot_map_affinity_non_alt <- matrix(c(sum(count.affinityHotMapLabels), sum(count.nonaffinityHotMapLabels), sum(count.affinityHotMapLabelsOff), sum(count.nonaffinityHotMapLabelsOff)), nrow = 2)

rownames(hot_map_affinity_non_alt) <- c("Affinity ", "Non Affinity ")
colnames(hot_map_affinity_non_alt) <- c("yes-label", "no-label")

#hot_map_Indus

#chisq.test(hot_map_Indus)

#fisher.test(hot_map_Indus)

#oddsratio.wald(hot_map_Indus)

hot_map_affinity_non_alt

chisq.test(hot_map_affinity_non_alt)

fisher.test(hot_map_affinity_non_alt)

oddsratio.wald(hot_map_affinity_non_alt)

#total new labels considered relevant ex: 21 on from 32 possible only Indus
#total new labels considered relevant ex: 40 on from 60 possible only Stud

#relevant_labels_Indus_Stud <- matrix(c(21/32, 40/60, 11/32, 20/60), nrow = 2)

relevant_labels_Affinity_non <- matrix(c(sum(count.affinityNewLabels), sum(count.nonaffinityNewLabels), sum(count.affinityNewLabelsNonRel), sum(count.nonaffinityNewLabelsNonRel)), nrow = 2)

rownames(relevant_labels_Affinity_non) <- c("new Labels Affinity", "new Labels Non Affinity")
colnames(relevant_labels_Affinity_non) <- c("yes-relevant", "no-relevant")

relevant_labels_Affinity_non

chisq.test(relevant_labels_Affinity_non)

cramerV <- function(data) {
  tempchi <- chisq.test(data);
  chi2 <- unname(tempchi$statistic["X-squared"]);
  pvalue <- unname(tempchi$p.value);
  cv <- sqrt(chi2 / sum(data) / (min(length(data), nrow(data))-1));
  c(effsize = cv, p.value = pvalue, chi2 = chi2); 
}

cramerV(relevant_labels_Affinity_non)

fisher.test(relevant_labels_Affinity_non)

oddsratio.wald(relevant_labels_Affinity_non)

# by hand ex:
#treat <- 21/11
#treat
#control <-40/20
#control

#odd <- treat/control
#odd

treat <- sum(count.affinityNewLabels)/sum(count.affinityNewLabelsNonRel)
treat
control <-sum(count.nonaffinityNewLabels)/sum(count.nonaffinityNewLabelsNonRel)
control

odd <- treat/control
odd

# total labels considered relevant and non relevant Indus Treat
# total labels considered relevant and non relevant Indus Control

#relevant_labels_Indus_Stud_alt <- matrix(c(240/438, 52/112, 198/438, 60/112), nrow = 2)

relevant_labels_affinity_non_alt <- matrix(c(sum(count.affinityLabels), sum(count.nonaffinityLabels), sum(count.affinityLabelsNonRel), sum(count.nonaffinityLabelsNonRel)), nrow = 2)

rownames(relevant_labels_affinity_non_alt) <- c("All Labels Affinity ", "All Labels Non Affinity")
colnames(relevant_labels_affinity_non_alt) <- c("yes-relevant", "no-relevant")

relevant_labels_affinity_non_alt 

chisq.test(relevant_labels_affinity_non_alt)

fisher.test(relevant_labels_affinity_non_alt)

oddsratio.wald(relevant_labels_affinity_non_alt)

#treat_alt <- 240/198
#treat_alt
#control_alt <-52/60
#control_alt

#odd_alt <- treat_alt/control_alt
#odd_alt

treat <- sum(count.affinityLabels) / sum(count.affinityLabelsNonRel)
treat
control <-sum(count.nonaffinityLabels)/sum(count.nonaffinityLabelsNonRel)
control

odd <- treat/control
odd


#------ Affinity x Affinity
# Prepare DF
#Treat
affinityAllLabelsT <- treatAffinity[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os",	"groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
affinityAllNewLabelsT <- treatAffinity[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os"	)]
affinityAllOldLabelsT <- treatAffinity[c("X","groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
affinityAllHotMapLabelsT <- treatAffinity[c("X","Q50_4","Q50_8","Q50_9","Q50_12")]
affinityAllHotMapNonLabelsT <- treatAffinity[c("X","Q50_1","Q50_2","Q50_3","Q50_5","Q50_6","Q50_7","Q50_10","Q50_11")]

# Control
#affinityAllLabelsC <- controlAffinity[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os",	"groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
#affinityAllNewLabelsC <- controlAffinity[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os"	)]
affinityAllOldLabelsC <- controlAffinity[c("X","groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
affinityAllHotMapLabelsC <- controlAffinity[c("X","Q50_4","Q50_8","Q50_9","Q50_12")]
affinityAllHotMapNonLabelsC <- controlAffinity[c("X","Q50_1","Q50_2","Q50_3","Q50_5","Q50_6","Q50_7","Q50_10","Q50_11")]

# 
# Affinity Treat

#new LabelsC relevant
count.affinityNewLabelsT <- apply(affinityAllNewLabelsT, 2, function(x) length(which(x=="relevant")))
count.affinityNewLabelsT
sum(count.affinityNewLabelsT)

#old LabelsT relevant
count.affinityOldLabelsT <- apply(affinityAllOldLabelsT, 2, function(x) length(which(x=="relevant")))
count.affinityOldLabelsT
sum(count.affinityOldLabelsT)

#new LabelsT not relevant
count.affinityNewLabelsTNonRel <- apply(affinityAllNewLabelsT, 2, function(x) length(which(x=="not relevant")))
count.affinityNewLabelsTNonRel
sum(count.affinityNewLabelsTNonRel)

#old LabelsT not relevant
count.affinityOldLabelsTNonRel <- apply(affinityAllOldLabelsT, 2, function(x) length(which(x=="not relevant")))
count.affinityOldLabelsTNonRel
sum(count.affinityOldLabelsTNonRel)

# hot map lables on
count.affinityHotMapLabelsT <- apply(affinityAllHotMapLabelsT, 2, function(x) length(which(x=="On")))
count.affinityHotMapLabelsT
sum(count.affinityHotMapLabelsT)

# hot map lables off
count.affinityHotMapLabelsTOff <- apply(affinityAllHotMapLabelsT, 2, function(x) length(which(x=="Off")))
count.affinityHotMapLabelsTOff
sum(count.affinityHotMapLabelsTOff)

# hot map non LabelsT on
count.affinityHotMapNonLabelsT <- apply(affinityAllHotMapNonLabelsT, 2, function(x) length(which(x=="On")))
count.affinityHotMapNonLabelsT
sum(count.affinityHotMapNonLabelsT)

# hot map non LabelsT off
count.affinityHotMapNonLabelsTOff <- apply(affinityAllHotMapNonLabelsT, 2, function(x) length(which(x=="Off")))
count.affinityHotMapNonLabelsTOff
sum(count.affinityHotMapNonLabelsTOff)

# all LabelsT relevant
count.affinityLabelsT <- apply(affinityAllLabelsT, 2, function(x) length(which(x=="relevant")))
count.affinityLabelsT
sum(count.affinityLabelsT)

# all LabelsT not relevant
count.affinityLabelsTNonRel <- apply(affinityAllLabelsT, 2, function(x) length(which(x=="not relevant")))
count.affinityLabelsTNonRel
sum(count.affinityLabelsTNonRel)

# Affinity Control

#new LabelsC relevant
#count.affinityNewLabelsC <- apply(affinityAllNewLabelsC, 2, function(x) length(which(x=="relevant")))
#count.affinityNewLabelsC
#sum(count.affinityNewLabelsC)

#old LabelsC relevant
count.affinityOldLabelsC <- apply(affinityAllOldLabelsC, 2, function(x) length(which(x=="relevant")))
count.affinityOldLabelsC
sum(count.affinityOldLabelsC)

#new LabelsC not relevant
#count.affinityNewLabelsCNonRel <- apply(affinityAllNewLabelsC, 2, function(x) length(which(x=="not relevant")))
#count.affinityNewLabelsCNonRel
#sum(count.affinityNewLabelsCNonRel)

#old LabelsC not relevant
count.affinityOldLabelsCNonRel <- apply(affinityAllOldLabelsC, 2, function(x) length(which(x=="not relevant")))
count.affinityOldLabelsCNonRel
sum(count.affinityOldLabelsCNonRel)

# hot map lables on
count.affinityHotMapLabelsC <- apply(affinityAllHotMapLabelsC, 2, function(x) length(which(x=="On")))
count.affinityHotMapLabelsC
sum(count.affinityHotMapLabelsC)

# hot map lables off
count.affinityHotMapLabelsCOff <- apply(affinityAllHotMapLabelsC, 2, function(x) length(which(x=="Off")))
count.affinityHotMapLabelsCOff
sum(count.affinityHotMapLabelsCOff)

# hot map non LabelsC on
count.affinityHotMapNonLabelsC <- apply(affinityAllHotMapNonLabelsC, 2, function(x) length(which(x=="On")))
count.affinityHotMapNonLabelsC
sum(count.affinityHotMapNonLabelsC)

# hot map non LabelsC off
count.affinityHotMapNonLabelsCOff <- apply(affinityAllHotMapNonLabelsC, 2, function(x) length(which(x=="Off")))
count.affinityHotMapNonLabelsCOff
sum(count.affinityHotMapNonLabelsCOff)

# all LabelsC relevant
#count.affinityLabelsC <- apply(affinityAllLabelsC, 2, function(x) length(which(x=="relevant")))
#count.affinityLabelsC
#sum(count.affinityLabelsC)

# all LabelsC not relevant
#count.affinityLabelsCNonRel <- apply(affinityAllLabelsC, 2, function(x) length(which(x=="not relevant")))
##count.affinityLabelsCNonRel
#sum(count.affinityLabelsCNonRel)

# Affinity Treat x Control -------------------------------------

# Indus 3 labels selected 16 other regions selected
# Stud 3 labels selected 9 other regions selected
#hot_map_Indus_Stud <- matrix(c(3, 3, 16, 9), nrow = 2)

# or
# Indus ex:3 labels selected 9 off or 3 from 12 possible
# Stud ex:3 labels selected 13 off or 3 from 16 possible

#hot_map_Affinity_alt <- matrix(c(3/12, 3/16, 9/12, 13/16), nrow = 2)

hot_map_Affinity_alt <- matrix(c(sum(count.affinityHotMapLabelsT), sum(count.affinityHotMapLabelsC), sum(count.affinityHotMapLabelsTOff), sum(count.affinityHotMapLabelsCOff)), nrow = 2)

rownames(hot_map_Affinity_alt) <- c("Affinity Treat", "Affinity Control")
colnames(hot_map_Affinity_alt) <- c("yes-label", "no-label")

#hot_map_Indus

#chisq.test(hot_map_Indus)

#fisher.test(hot_map_Indus)

#oddsratio.wald(hot_map_Indus)

hot_map_Affinity_alt

chisq.test(hot_map_Affinity_alt)

fisher.test(hot_map_Affinity_alt)

oddsratio.wald(hot_map_Affinity_alt)

#total new labels considered relevant ex: 21 on from 32 possible only Indus
#total new labels considered relevant ex: 40 on from 60 possible only Stud

#relevant_labels_Indus_Stud <- matrix(c(21/32, 40/60, 11/32, 20/60), nrow = 2)

#relevant_labels_Indus <- matrix(c(sum(count.affinityNewLabels), sum(count.StudNewLabels), sum(count.affinityNewLabelsNonRel), sum(count.StudNewLabelsNonRel)), nrow = 2)

#rownames(relevant_labels_Indus) <- c("new Labels Indus", "new Labels Stud")
#colnames(relevant_labels_Indus) <- c("yes-relevant", "no-relevant")

#relevant_labels_Indus

#chisq.test(relevant_labels_Indus)

#fisher.test(relevant_labels_Indus)

#oddsratio.wald(relevant_labels_Indus)

# by hand ex:
#treat <- 21/11
#treat
#control <-40/20
#control

#odd <- treat/control
#odd

#treat <- sum(count.affinityNewLabels)/sum(count.affinityNewLabelsNonRel)
#treat
#control <-sum(count.StudNewLabels)/sum(count.StudNewLabelsNonRel)
#control

#odd <- treat/control
#odd

# total labels considered relevant and non relevant Contrib Treat
# total labels considered relevant and non relevant Contrib Control

#relevant_labels_Indus_Stud_alt <- matrix(c(240/438, 52/112, 198/438, 60/112), nrow = 2)

relevant_labels_Affinity_alt <- matrix(c(sum(count.affinityLabelsT), sum(count.affinityOldLabelsC), sum(count.affinityLabelsTNonRel), sum(count.affinityOldLabelsCNonRel)), nrow = 2)

rownames(relevant_labels_Affinity_alt) <- c("All Labels Affinity Treat", "All Labels Affinity Control")
colnames(relevant_labels_Affinity_alt) <- c("yes-relevant", "no-relevant")

relevant_labels_Affinity_alt 

chisq.test(relevant_labels_Affinity_alt)

fisher.test(relevant_labels_Affinity_alt)

oddsratio.wald(relevant_labels_Affinity_alt)

#treat_alt <- 240/198
#treat_alt
#control_alt <-52/60
#control_alt

#odd_alt <- treat_alt/control_alt
#odd_alt

treat <- sum(count.affinityLabelsT) / sum(count.affinityLabelsTNonRel)
treat
control <-sum(count.affinityOldLabelsC)/sum(count.affinityOldLabelsCNonRel)
control

odd <- treat/control
odd


