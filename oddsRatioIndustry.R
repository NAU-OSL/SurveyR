# Odds Ratio industry 

# Prepare DF
#Treat
industryAllLabelsT <- industryTreat[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os",	"groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
industryAllNewLabelsT <- industryTreat[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os"	)]
industryAllOldLabelsT <- industryTreat[c("X","groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
industryAllHotMapLabelsT <- industryTreat[c("X","Q50_4","Q50_8","Q50_9","Q50_12")]
industryAllHotMapNonLabelsT <- industryTreat[c("X","Q50_1","Q50_2","Q50_3","Q50_5","Q50_6","Q50_7","Q50_10","Q50_11")]

# Control
#industryAllLabelsC <- industryControl[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os",	"groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
#industryAllNewLabelsC <- industryControl[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os"	)]
industryAllOldLabelsC <- industryControl[c("X","groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
industryAllHotMapLabelsC <- industryControl[c("X","Q50_4","Q50_8","Q50_9","Q50_12")]
industryAllHotMapNonLabelsC <- industryControl[c("X","Q50_1","Q50_2","Q50_3","Q50_5","Q50_6","Q50_7","Q50_10","Q50_11")]

# 
# Indus Treat

#new LabelsT relevant
count.IndusNewLabelsT <- apply(industryAllNewLabelsT, 2, function(x) length(which(x=="relevant")))
count.IndusNewLabelsT
sum(count.IndusNewLabelsT)

#old LabelsT relevant
count.IndusOldLabelsT <- apply(industryAllOldLabelsT, 2, function(x) length(which(x=="relevant")))
count.IndusOldLabelsT
sum(count.IndusOldLabelsT)

#new LabelsT not relevant
count.IndusNewLabelsTNonRel <- apply(industryAllNewLabelsT, 2, function(x) length(which(x=="not relevant")))
count.IndusNewLabelsTNonRel
sum(count.IndusNewLabelsTNonRel)

#old LabelsT not relevant
count.IndusOldLabelsTNonRel <- apply(industryAllOldLabelsT, 2, function(x) length(which(x=="not relevant")))
count.IndusOldLabelsTNonRel
sum(count.IndusOldLabelsTNonRel)

# hot map lables on
count.IndusHotMapLabelsT <- apply(industryAllHotMapLabelsT, 2, function(x) length(which(x=="On")))
count.IndusHotMapLabelsT
sum(count.IndusHotMapLabelsT)

# hot map lables off
count.IndusHotMapLabelsTOff <- apply(industryAllHotMapLabelsT, 2, function(x) length(which(x=="Off")))
count.IndusHotMapLabelsTOff
sum(count.IndusHotMapLabelsTOff)

# hot map non LabelsT on
count.IndusHotMapNonLabelsT <- apply(industryAllHotMapNonLabelsT, 2, function(x) length(which(x=="On")))
count.IndusHotMapNonLabelsT
sum(count.IndusHotMapNonLabelsT)

# hot map non LabelsT off
count.IndusHotMapNonLabelsTOff <- apply(industryAllHotMapNonLabelsT, 2, function(x) length(which(x=="Off")))
count.IndusHotMapNonLabelsTOff
sum(count.IndusHotMapNonLabelsTOff)

# all LabelsT relevant
count.IndusLabelsT <- apply(industryAllLabelsT, 2, function(x) length(which(x=="relevant")))
count.IndusLabelsT
sum(count.IndusLabelsT)

# all LabelsT not relevant
count.IndusLabelsTNonRel <- apply(industryAllLabelsT, 2, function(x) length(which(x=="not relevant")))
count.IndusLabelsTNonRel
sum(count.IndusLabelsTNonRel)

# Indus Control

#new LabelsC relevant
#count.IndusNewLabelsC <- apply(industryAllNewLabelsC, 2, function(x) length(which(x=="relevant")))
#count.IndusNewLabelsC
#sum(count.IndusNewLabelsC)

#old LabelsC relevant
count.IndusOldLabelsC <- apply(industryAllOldLabelsC, 2, function(x) length(which(x=="relevant")))
count.IndusOldLabelsC
sum(count.IndusOldLabelsC)

#new LabelsC not relevant
#count.IndusNewLabelsCNonRel <- apply(industryAllNewLabelsC, 2, function(x) length(which(x=="not relevant")))
#count.IndusNewLabelsCNonRel
#sum(count.IndusNewLabelsCNonRel)

#old LabelsC not relevant
count.IndusOldLabelsCNonRel <- apply(industryAllOldLabelsC, 2, function(x) length(which(x=="not relevant")))
count.IndusOldLabelsCNonRel
sum(count.IndusOldLabelsCNonRel)

# hot map lables on
count.IndusHotMapLabelsC <- apply(industryAllHotMapLabelsC, 2, function(x) length(which(x=="On")))
count.IndusHotMapLabelsC
sum(count.IndusHotMapLabelsC)

# hot map lables off
count.IndusHotMapLabelsCOff <- apply(industryAllHotMapLabelsC, 2, function(x) length(which(x=="Off")))
count.IndusHotMapLabelsCOff
sum(count.IndusHotMapLabelsCOff)

# hot map non LabelsC on
count.IndusHotMapNonLabelsC <- apply(industryAllHotMapNonLabelsC, 2, function(x) length(which(x=="On")))
count.IndusHotMapNonLabelsC
sum(count.IndusHotMapNonLabelsC)

# hot map non LabelsC off
count.IndusHotMapNonLabelsCOff <- apply(industryAllHotMapNonLabelsC, 2, function(x) length(which(x=="Off")))
count.IndusHotMapNonLabelsCOff
sum(count.IndusHotMapNonLabelsCOff)

# all LabelsC relevant
#count.IndusLabelsC <- apply(industryAllLabelsC, 2, function(x) length(which(x=="relevant")))
#count.IndusLabelsC
#sum(count.IndusLabelsC)

# all LabelsC not relevant
#count.IndusLabelsCNonRel <- apply(industryAllLabelsC, 2, function(x) length(which(x=="not relevant")))
##count.IndusLabelsCNonRel
#sum(count.IndusLabelsCNonRel)

# Indus Treat x Control -------------------------------------

# Indus 3 labels selected 16 other regions selected
# Stud 3 labels selected 9 other regions selected
#hot_map_Indus_Stud <- matrix(c(3, 3, 16, 9), nrow = 2)

# or
# Indus ex:3 labels selected 9 off or 3 from 12 possible
# Stud ex:3 labels selected 13 off or 3 from 16 possible

#hot_map_Indus_alt <- matrix(c(3/12, 3/16, 9/12, 13/16), nrow = 2)

hot_map_Indus_alt <- matrix(c(sum(count.IndusHotMapLabelsT), sum(count.IndusHotMapLabelsC), sum(count.IndusHotMapLabelsTOff), sum(count.IndusHotMapLabelsCOff)), nrow = 2)

rownames(hot_map_Indus_alt) <- c("Industry Treat", "Ind Control")
colnames(hot_map_Indus_alt) <- c("yes-label", "no-label")

#hot_map_Indus

#chisq.test(hot_map_Indus)

#fisher.test(hot_map_Indus)

#oddsratio.wald(hot_map_Indus)

hot_map_Indus_alt

chisq.test(hot_map_Indus_alt)

fisher.test(hot_map_Indus_alt)

oddsratio.wald(hot_map_Indus_alt)

#total new labels considered relevant ex: 21 on from 32 possible only Indus
#total new labels considered relevant ex: 40 on from 60 possible only Stud

#relevant_labels_Indus_Stud <- matrix(c(21/32, 40/60, 11/32, 20/60), nrow = 2)

#relevant_labels_Indus <- matrix(c(sum(count.IndusNewLabels), sum(count.StudNewLabels), sum(count.IndusNewLabelsNonRel), sum(count.StudNewLabelsNonRel)), nrow = 2)

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

#treat <- sum(count.IndusNewLabels)/sum(count.IndusNewLabelsNonRel)
#treat
#control <-sum(count.StudNewLabels)/sum(count.StudNewLabelsNonRel)
#control

#odd <- treat/control
#odd

# total labels considered relevant and non relevant Indus Treat
# total labels considered relevant and non relevant Indus Control

#relevant_labels_Indus_Stud_alt <- matrix(c(240/438, 52/112, 198/438, 60/112), nrow = 2)

relevant_labels_Indus_alt <- matrix(c(sum(count.IndusLabelsT), sum(count.IndusOldLabelsC), sum(count.IndusLabelsTNonRel), sum(count.IndusOldLabelsCNonRel)), nrow = 2)

rownames(relevant_labels_Indus_alt) <- c("All Labels Indus Treat", "All Labels Indus Control")
colnames(relevant_labels_Indus_alt) <- c("yes-relevant", "no-relevant")

relevant_labels_Indus_alt 

chisq.test(relevant_labels_Indus_alt)

fisher.test(relevant_labels_Indus_alt)

oddsratio.wald(relevant_labels_Indus_alt)

#treat_alt <- 240/198
#treat_alt
#control_alt <-52/60
#control_alt

#odd_alt <- treat_alt/control_alt
#odd_alt

treat <- sum(count.IndusLabelsT) / sum(count.IndusLabelsTNonRel)
treat
control <-sum(count.IndusOldLabelsC)/sum(count.IndusOldLabelsCNonRel)
control

odd <- treat/control
odd


