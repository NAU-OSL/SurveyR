# Odds Ratio Contributor

#------------------ Contributor x NonContributor

# Prepare DF
#Contributor
contributorLabels <- allContributor[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os",	"groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
contributorNewLabels <- allContributor[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os"	)]
contributorOldLabels <- allContributor[c("X","groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
contributorHotMapLabels <- allContributor[c("X","Q50_4","Q50_8","Q50_9","Q50_12")]
contributorHotMapNonLabels <- allContributor[c("X","Q50_1","Q50_2","Q50_3","Q50_5","Q50_6","Q50_7","Q50_10","Q50_11")]

#NonContributor
noncontributorLabels <- allNonContributor[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os",	"groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
noncontributorNewLabels <- allNonContributor[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os"	)]
noncontributorOldLabels <- allNonContributor[c("X","groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
noncontributorHotMapLabels <- allNonContributor[c("X","Q50_4","Q50_8","Q50_9","Q50_12")]
noncontributorHotMapNonLabels <- allNonContributor[c("X","Q50_1","Q50_2","Q50_3","Q50_5","Q50_6","Q50_7","Q50_10","Q50_11")]

# Contributor All

#new Labels relevant
count.contributorNewLabels <- apply(contributorNewLabels, 2, function(x) length(which(x=="relevant")))
count.contributorNewLabels
sum(count.contributorNewLabels)

#old Labels relevant
count.contributorOldLabels <- apply(contributorOldLabels, 2, function(x) length(which(x=="relevant")))
count.contributorOldLabels
sum(count.contributorOldLabels)

#new Labels not relevant
count.contributorNewLabelsNonRel <- apply(contributorNewLabels, 2, function(x) length(which(x=="not relevant")))
count.contributorNewLabelsNonRel
sum(count.contributorNewLabelsNonRel)

#old Labels not relevant
count.contributorOldLabelsNonRel <- apply(contributorOldLabels, 2, function(x) length(which(x=="not relevant")))
count.contributorOldLabelsNonRel
sum(count.contributorOldLabelsNonRel)

# hot map lables on
count.contributorHotMapLabels <- apply(contributorHotMapLabels, 2, function(x) length(which(x=="On")))
count.contributorHotMapLabels
sum(count.contributorHotMapLabels)

# hot map lables off
count.contributorHotMapLabelsOff <- apply(contributorHotMapLabels, 2, function(x) length(which(x=="Off")))
count.contributorHotMapLabelsOff
sum(count.contributorHotMapLabelsOff)

# hot map non Labels on
count.contributorHotMapNonLabels <- apply(contributorHotMapNonLabels, 2, function(x) length(which(x=="On")))
count.contributorHotMapNonLabels
sum(count.contributorHotMapNonLabels)

# hot map non Labels off
count.contributorHotMapNonLabelsOff <- apply(contributorHotMapNonLabels, 2, function(x) length(which(x=="Off")))
count.contributorHotMapNonLabelsOff
sum(count.contributorHotMapNonLabelsOff)

# all Labels relevant
count.contributorLabels <- apply(contributorLabels, 2, function(x) length(which(x=="relevant")))
count.contributorLabels
sum(count.contributorLabels)

# all Labels not relevant
count.contributorLabelsNonRel <- apply(contributorLabels, 2, function(x) length(which(x=="not relevant")))
count.contributorLabelsNonRel
sum(count.contributorLabelsNonRel)

# Non Contributor All

#new Labels relevant
count.noncontributorNewLabels <- apply(noncontributorNewLabels, 2, function(x) length(which(x=="relevant")))
count.noncontributorNewLabels
sum(count.noncontributorNewLabels)

#old Labels relevant
count.noncontributorOldLabels <- apply(noncontributorOldLabels, 2, function(x) length(which(x=="relevant")))
count.noncontributorOldLabels
sum(count.noncontributorOldLabels)

#new Labels not relevant
count.noncontributorNewLabelsNonRel <- apply(noncontributorNewLabels, 2, function(x) length(which(x=="not relevant")))
count.noncontributorNewLabelsNonRel
sum(count.noncontributorNewLabelsNonRel)

#old Labels not relevant
count.noncontributorOldLabelsNonRel <- apply(noncontributorOldLabels, 2, function(x) length(which(x=="not relevant")))
count.noncontributorOldLabelsNonRel
sum(count.noncontributorOldLabelsNonRel)

# hot map lables on
count.noncontributorHotMapLabels <- apply(noncontributorHotMapLabels, 2, function(x) length(which(x=="On")))
count.noncontributorHotMapLabels
sum(count.noncontributorHotMapLabels)

# hot map lables off
count.noncontributorHotMapLabelsOff <- apply(noncontributorHotMapLabels, 2, function(x) length(which(x=="Off")))
count.noncontributorHotMapLabelsOff
sum(count.noncontributorHotMapLabelsOff)

# hot map non Labels on
count.noncontributorHotMapNonLabels <- apply(noncontributorHotMapNonLabels, 2, function(x) length(which(x=="On")))
count.noncontributorHotMapNonLabels
sum(count.noncontributorHotMapNonLabels)

# hot map non Labels off
count.noncontributorHotMapNonLabelsOff <- apply(noncontributorHotMapNonLabels, 2, function(x) length(which(x=="Off")))
count.noncontributorHotMapNonLabelsOff
sum(count.noncontributorHotMapNonLabelsOff)

# all Labels relevant
count.noncontributorLabels <- apply(noncontributorLabels, 2, function(x) length(which(x=="relevant")))
count.noncontributorLabels
sum(count.noncontributorLabels)

# all Labels not relevant
count.noncontributorLabelsNonRel <- apply(noncontributorLabels, 2, function(x) length(which(x=="not relevant")))
count.noncontributorLabelsNonRel
sum(count.noncontributorLabelsNonRel)

# Contributor x NonContributor -------------------------------------

# Indus 3 labels selected 16 other regions selected
# Stud 3 labels selected 9 other regions selected
#hot_map_Indus_Stud <- matrix(c(3, 3, 16, 9), nrow = 2)

# or
# Indus ex:3 labels selected 9 off or 3 from 12 possible
# Stud ex:3 labels selected 13 off or 3 from 16 possible

#hot_map_contributor_alt <- matrix(c(3/12, 3/16, 9/12, 13/16), nrow = 2)

hot_map_contributor_non_alt <- matrix(c(sum(count.contributorHotMapLabels), sum(count.noncontributorHotMapLabels), sum(count.contributorHotMapLabelsOff), sum(count.noncontributorHotMapLabelsOff)), nrow = 2)

rownames(hot_map_contributor_non_alt) <- c("Contributor ", "Non Contributor ")
colnames(hot_map_contributor_non_alt) <- c("yes-label", "no-label")

#hot_map_Indus

#chisq.test(hot_map_Indus)

#fisher.test(hot_map_Indus)

#oddsratio.wald(hot_map_Indus)

hot_map_contributor_non_alt

chisq.test(hot_map_contributor_non_alt)

fisher.test(hot_map_contributor_non_alt)

oddsratio.wald(hot_map_contributor_non_alt)

#total new labels considered relevant ex: 21 on from 32 possible only Indus
#total new labels considered relevant ex: 40 on from 60 possible only Stud

#relevant_labels_Indus_Stud <- matrix(c(21/32, 40/60, 11/32, 20/60), nrow = 2)

relevant_labels_contrib_non <- matrix(c(sum(count.contributorNewLabels), sum(count.noncontributorNewLabels), sum(count.contributorNewLabelsNonRel), sum(count.noncontributorNewLabelsNonRel)), nrow = 2)

rownames(relevant_labels_contrib_non) <- c("new Labels Contributor", "new Labels Non Contributor")
colnames(relevant_labels_contrib_non) <- c("yes-relevant", "no-relevant")

relevant_labels_contrib_non

chisq.test(relevant_labels_contrib_non)

cramerV <- function(data) {
  tempchi <- chisq.test(data);
  chi2 <- unname(tempchi$statistic["X-squared"]);
  pvalue <- unname(tempchi$p.value);
  cv <- sqrt(chi2 / sum(data) / (min(length(data), nrow(data))-1));
  c(effsize = cv, p.value = pvalue, chi2 = chi2); 
}

cramerV(relevant_labels_contrib_non)

fisher.test(relevant_labels_contrib_non)

oddsratio.wald(relevant_labels_contrib_non)

# by hand ex:
#treat <- 21/11
#treat
#control <-40/20
#control

#odd <- treat/control
#odd

treat <- sum(count.contributorNewLabels)/sum(count.contributorNewLabelsNonRel)
treat
control <-sum(count.noncontributorNewLabels)/sum(count.noncontributorNewLabelsNonRel)
control

odd <- treat/control
odd

# total labels considered relevant and non relevant Indus Treat
# total labels considered relevant and non relevant Indus Control

#relevant_labels_Indus_Stud_alt <- matrix(c(240/438, 52/112, 198/438, 60/112), nrow = 2)

relevant_labels_contributor_non_alt <- matrix(c(sum(count.contributorLabels), sum(count.noncontributorLabels), sum(count.contributorLabelsNonRel), sum(count.noncontributorLabelsNonRel)), nrow = 2)

rownames(relevant_labels_contributor_non_alt) <- c("All Labels Contributor ", "All Labels Non Contributor")
colnames(relevant_labels_contributor_non_alt) <- c("yes-relevant", "no-relevant")

relevant_labels_contributor_non_alt 

chisq.test(relevant_labels_contributor_non_alt)

cramerV <- function(data) {
  tempchi <- chisq.test(data);
  chi2 <- unname(tempchi$statistic["X-squared"]);
  pvalue <- unname(tempchi$p.value);
  cv <- sqrt(chi2 / sum(data) / (min(length(data), nrow(data))-1));
  c(effsize = cv, p.value = pvalue, chi2 = chi2); 
}

cramerV(relevant_labels_contributor_non_alt)

fisher.test(relevant_labels_contributor_non_alt)

oddsratio.wald(relevant_labels_contributor_non_alt)

#treat_alt <- 240/198
#treat_alt
#control_alt <-52/60
#control_alt

#odd_alt <- treat_alt/control_alt
#odd_alt

treat <- sum(count.contributorLabels) / sum(count.contributorLabelsNonRel)
treat
control <-sum(count.noncontributorLabels)/sum(count.noncontributorLabelsNonRel)
control

odd <- treat/control
odd


# -------- CONTRUI X CONTRIB
# Prepare DF
#Treat
contributorAllLabelsT <- treatContributor[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os",	"groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
contributorAllNewLabelsT <- treatContributor[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os"	)]
contributorAllOldLabelsT <- treatContributor[c("X","groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
contributorAllHotMapLabelsT <- treatContributor[c("X","Q50_4","Q50_8","Q50_9","Q50_12")]
contributorAllHotMapNonLabelsT <- treatContributor[c("X","Q50_1","Q50_2","Q50_3","Q50_5","Q50_6","Q50_7","Q50_10","Q50_11")]

# Control
#contributorAllLabelsC <- controlContributor[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os",	"groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
#contributorAllNewLabelsC <- controlContributor[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os"	)]
contributorAllOldLabelsC <- controlContributor[c("X","groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
contributorAllHotMapLabelsC <- controlContributor[c("X","Q50_4","Q50_8","Q50_9","Q50_12")]
contributorAllHotMapNonLabelsC <- controlContributor[c("X","Q50_1","Q50_2","Q50_3","Q50_5","Q50_6","Q50_7","Q50_10","Q50_11")]

# 
# Contributor Treat

#new LabelsC relevant
count.contributorNewLabelsT <- apply(contributorAllNewLabelsT, 2, function(x) length(which(x=="relevant")))
count.contributorNewLabelsT
sum(count.contributorNewLabelsT)

#old LabelsT relevant
count.contributorOldLabelsT <- apply(contributorAllOldLabelsT, 2, function(x) length(which(x=="relevant")))
count.contributorOldLabelsT
sum(count.contributorOldLabelsT)

#new LabelsT not relevant
count.contributorNewLabelsTNonRel <- apply(contributorAllNewLabelsT, 2, function(x) length(which(x=="not relevant")))
count.contributorNewLabelsTNonRel
sum(count.contributorNewLabelsTNonRel)

#old LabelsT not relevant
count.contributorOldLabelsTNonRel <- apply(contributorAllOldLabelsT, 2, function(x) length(which(x=="not relevant")))
count.contributorOldLabelsTNonRel
sum(count.contributorOldLabelsTNonRel)

# hot map lables on
count.contributorHotMapLabelsT <- apply(contributorAllHotMapLabelsT, 2, function(x) length(which(x=="On")))
count.contributorHotMapLabelsT
sum(count.contributorHotMapLabelsT)

# hot map lables off
count.contributorHotMapLabelsTOff <- apply(contributorAllHotMapLabelsT, 2, function(x) length(which(x=="Off")))
count.contributorHotMapLabelsTOff
sum(count.contributorHotMapLabelsTOff)

# hot map non LabelsT on
count.contributorHotMapNonLabelsT <- apply(contributorAllHotMapNonLabelsT, 2, function(x) length(which(x=="On")))
count.contributorHotMapNonLabelsT
sum(count.contributorHotMapNonLabelsT)

# hot map non LabelsT off
count.contributorHotMapNonLabelsTOff <- apply(contributorAllHotMapNonLabelsT, 2, function(x) length(which(x=="Off")))
count.contributorHotMapNonLabelsTOff
sum(count.contributorHotMapNonLabelsTOff)

# all LabelsT relevant
count.contributorLabelsT <- apply(contributorAllLabelsT, 2, function(x) length(which(x=="relevant")))
count.contributorLabelsT
sum(count.contributorLabelsT)

# all LabelsT not relevant
count.contributorLabelsTNonRel <- apply(contributorAllLabelsT, 2, function(x) length(which(x=="not relevant")))
count.contributorLabelsTNonRel
sum(count.contributorLabelsTNonRel)

# Contributor Control

#new LabelsC relevant
#count.contributorNewLabelsC <- apply(contributorAllNewLabelsC, 2, function(x) length(which(x=="relevant")))
#count.contributorNewLabelsC
#sum(count.contributorNewLabelsC)

#old LabelsC relevant
count.contributorOldLabelsC <- apply(contributorAllOldLabelsC, 2, function(x) length(which(x=="relevant")))
count.contributorOldLabelsC
sum(count.contributorOldLabelsC)

#new LabelsC not relevant
#count.contributorNewLabelsCNonRel <- apply(contributorAllNewLabelsC, 2, function(x) length(which(x=="not relevant")))
#count.contributorNewLabelsCNonRel
#sum(count.contributorNewLabelsCNonRel)

#old LabelsC not relevant
count.contributorOldLabelsCNonRel <- apply(contributorAllOldLabelsC, 2, function(x) length(which(x=="not relevant")))
count.contributorOldLabelsCNonRel
sum(count.contributorOldLabelsCNonRel)

# hot map lables on
count.contributorHotMapLabelsC <- apply(contributorAllHotMapLabelsC, 2, function(x) length(which(x=="On")))
count.contributorHotMapLabelsC
sum(count.contributorHotMapLabelsC)

# hot map lables off
count.contributorHotMapLabelsCOff <- apply(contributorAllHotMapLabelsC, 2, function(x) length(which(x=="Off")))
count.contributorHotMapLabelsCOff
sum(count.contributorHotMapLabelsCOff)

# hot map non LabelsC on
count.contributorHotMapNonLabelsC <- apply(contributorAllHotMapNonLabelsC, 2, function(x) length(which(x=="On")))
count.contributorHotMapNonLabelsC
sum(count.contributorHotMapNonLabelsC)

# hot map non LabelsC off
count.contributorHotMapNonLabelsCOff <- apply(contributorAllHotMapNonLabelsC, 2, function(x) length(which(x=="Off")))
count.contributorHotMapNonLabelsCOff
sum(count.contributorHotMapNonLabelsCOff)

# all LabelsC relevant
#count.contributorLabelsC <- apply(contributorAllLabelsC, 2, function(x) length(which(x=="relevant")))
#count.contributorLabelsC
#sum(count.contributorLabelsC)

# all LabelsC not relevant
#count.contributorLabelsCNonRel <- apply(contributorAllLabelsC, 2, function(x) length(which(x=="not relevant")))
##count.contributorLabelsCNonRel
#sum(count.contributorLabelsCNonRel)

# Contributor Treat x Control -------------------------------------

# Indus 3 labels selected 16 other regions selected
# Stud 3 labels selected 9 other regions selected
#hot_map_Indus_Stud <- matrix(c(3, 3, 16, 9), nrow = 2)

# or
# Indus ex:3 labels selected 9 off or 3 from 12 possible
# Stud ex:3 labels selected 13 off or 3 from 16 possible

#hot_map_Contributor_alt <- matrix(c(3/12, 3/16, 9/12, 13/16), nrow = 2)

hot_map_Contributor_alt <- matrix(c(sum(count.contributorHotMapLabelsT), sum(count.contributorHotMapLabelsC), sum(count.contributorHotMapLabelsTOff), sum(count.contributorHotMapLabelsCOff)), nrow = 2)

rownames(hot_map_Contributor_alt) <- c("Contributor Treat", "Contributor Control")
colnames(hot_map_Contributor_alt) <- c("yes-label", "no-label")

#hot_map_Indus

#chisq.test(hot_map_Indus)

#fisher.test(hot_map_Indus)

#oddsratio.wald(hot_map_Indus)

hot_map_Contributor_alt

chisq.test(hot_map_Contributor_alt)

fisher.test(hot_map_Contributor_alt)

oddsratio.wald(hot_map_Contributor_alt)

#total new labels considered relevant ex: 21 on from 32 possible only Indus
#total new labels considered relevant ex: 40 on from 60 possible only Stud

#relevant_labels_Indus_Stud <- matrix(c(21/32, 40/60, 11/32, 20/60), nrow = 2)

#relevant_labels_Indus <- matrix(c(sum(count.contributorNewLabels), sum(count.StudNewLabels), sum(count.contributorNewLabelsNonRel), sum(count.StudNewLabelsNonRel)), nrow = 2)

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

#treat <- sum(count.contributorNewLabels)/sum(count.contributorNewLabelsNonRel)
#treat
#control <-sum(count.StudNewLabels)/sum(count.StudNewLabelsNonRel)
#control

#odd <- treat/control
#odd

# total labels considered relevant and non relevant Contrib Treat
# total labels considered relevant and non relevant Contrib Control

#relevant_labels_Indus_Stud_alt <- matrix(c(240/438, 52/112, 198/438, 60/112), nrow = 2)

relevant_labels_Contributor_alt <- matrix(c(sum(count.contributorLabelsT), sum(count.contributorOldLabelsC), sum(count.contributorLabelsTNonRel), sum(count.contributorOldLabelsCNonRel)), nrow = 2)

rownames(relevant_labels_Contributor_alt) <- c("All Labels Contributor Treat", "All Labels Contributor Control")
colnames(relevant_labels_Contributor_alt) <- c("yes-relevant", "no-relevant")

relevant_labels_Contributor_alt 

chisq.test(relevant_labels_Contributor_alt)

fisher.test(relevant_labels_Contributor_alt)

oddsratio.wald(relevant_labels_Contributor_alt)

#treat_alt <- 240/198
#treat_alt
#control_alt <-52/60
#control_alt

#odd_alt <- treat_alt/control_alt
#odd_alt

treat <- sum(count.contributorLabelsT) / sum(count.contributorLabelsTNonRel)
treat
control <-sum(count.contributorOldLabelsC)/sum(count.contributorOldLabelsCNonRel)
control

odd <- treat/control
odd


