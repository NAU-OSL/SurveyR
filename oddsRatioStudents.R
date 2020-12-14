# Odds Ratio students 

# Prepare DF
#Treat
studentsAllLabelsT <- studentsTreat[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os",	"groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
studentsAllNewLabelsT <- studentsTreat[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os"	)]
studentsAllOldLabelsT <- studentsTreat[c("X","groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
studentsAllHotMapLabelsT <- studentsTreat[c("X","Q50_4","Q50_8","Q50_9","Q50_12")]
studentsAllHotMapNonLabelsT <- studentsTreat[c("X","Q50_1","Q50_2","Q50_3","Q50_5","Q50_6","Q50_7","Q50_10","Q50_11")]

# Control
#studentsAllLabelsC <- studentsControl[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os",	"groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
#studentsAllNewLabelsC <- studentsControl[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os"	)]
studentsAllOldLabelsC <- studentsControl[c("X","groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
studentsAllHotMapLabelsC <- studentsControl[c("X","Q50_4","Q50_8","Q50_9","Q50_12")]
studentsAllHotMapNonLabelsC <- studentsControl[c("X","Q50_1","Q50_2","Q50_3","Q50_5","Q50_6","Q50_7","Q50_10","Q50_11")]

# 
# stud Treat

#new LabelsT relevant
count.studNewLabelsT <- apply(studentsAllNewLabelsT, 2, function(x) length(which(x=="relevant")))
count.studNewLabelsT
sum(count.studNewLabelsT)

#old LabelsT relevant
count.studOldLabelsT <- apply(studentsAllOldLabelsT, 2, function(x) length(which(x=="relevant")))
count.studOldLabelsT
sum(count.studOldLabelsT)

#new LabelsT not relevant
count.studNewLabelsTNonRel <- apply(studentsAllNewLabelsT, 2, function(x) length(which(x=="not relevant")))
count.studNewLabelsTNonRel
sum(count.studNewLabelsTNonRel)

#old LabelsT not relevant
count.studOldLabelsTNonRel <- apply(studentsAllOldLabelsT, 2, function(x) length(which(x=="not relevant")))
count.studOldLabelsTNonRel
sum(count.studOldLabelsTNonRel)

# hot map lables on
count.studHotMapLabelsT <- apply(studentsAllHotMapLabelsT, 2, function(x) length(which(x=="On")))
count.studHotMapLabelsT
sum(count.studHotMapLabelsT)

# hot map lables off
count.studHotMapLabelsTOff <- apply(studentsAllHotMapLabelsT, 2, function(x) length(which(x=="Off")))
count.studHotMapLabelsTOff
sum(count.studHotMapLabelsTOff)

# hot map non LabelsT on
count.studHotMapNonLabelsT <- apply(studentsAllHotMapNonLabelsT, 2, function(x) length(which(x=="On")))
count.studHotMapNonLabelsT
sum(count.studHotMapNonLabelsT)

# hot map non LabelsT off
count.studHotMapNonLabelsTOff <- apply(studentsAllHotMapNonLabelsT, 2, function(x) length(which(x=="Off")))
count.studHotMapNonLabelsTOff
sum(count.studHotMapNonLabelsTOff)

# all LabelsT relevant
count.studLabelsT <- apply(studentsAllLabelsT, 2, function(x) length(which(x=="relevant")))
count.studLabelsT
sum(count.studLabelsT)

# all LabelsT not relevant
count.studLabelsTNonRel <- apply(studentsAllLabelsT, 2, function(x) length(which(x=="not relevant")))
count.studLabelsTNonRel
sum(count.studLabelsTNonRel)

# stud Control

#new LabelsC relevant
#count.studNewLabelsC <- apply(studentsAllNewLabelsC, 2, function(x) length(which(x=="relevant")))
#count.studNewLabelsC
#sum(count.studNewLabelsC)

#old LabelsC relevant
count.studOldLabelsC <- apply(studentsAllOldLabelsC, 2, function(x) length(which(x=="relevant")))
count.studOldLabelsC
sum(count.studOldLabelsC)

#new LabelsC not relevant
#count.studNewLabelsCNonRel <- apply(studentsAllNewLabelsC, 2, function(x) length(which(x=="not relevant")))
#count.studNewLabelsCNonRel
#sum(count.studNewLabelsCNonRel)

#old LabelsC not relevant
count.studOldLabelsCNonRel <- apply(studentsAllOldLabelsC, 2, function(x) length(which(x=="not relevant")))
count.studOldLabelsCNonRel
sum(count.studOldLabelsCNonRel)

# hot map lables on
count.studHotMapLabelsC <- apply(studentsAllHotMapLabelsC, 2, function(x) length(which(x=="On")))
count.studHotMapLabelsC
sum(count.studHotMapLabelsC)

# hot map lables off
count.studHotMapLabelsCOff <- apply(studentsAllHotMapLabelsC, 2, function(x) length(which(x=="Off")))
count.studHotMapLabelsCOff
sum(count.studHotMapLabelsCOff)

# hot map non LabelsC on
count.studHotMapNonLabelsC <- apply(studentsAllHotMapNonLabelsC, 2, function(x) length(which(x=="On")))
count.studHotMapNonLabelsC
sum(count.studHotMapNonLabelsC)

# hot map non LabelsC off
count.studHotMapNonLabelsCOff <- apply(studentsAllHotMapNonLabelsC, 2, function(x) length(which(x=="Off")))
count.studHotMapNonLabelsCOff
sum(count.studHotMapNonLabelsCOff)

# all LabelsC relevant
#count.studLabelsC <- apply(studentsAllLabelsC, 2, function(x) length(which(x=="relevant")))
#count.studLabelsC
#sum(count.studLabelsC)

# all LabelsC not relevant
#count.studLabelsCNonRel <- apply(studentsAllLabelsC, 2, function(x) length(which(x=="not relevant")))
##count.studLabelsCNonRel
#sum(count.studLabelsCNonRel)

# stud Treat x Control -------------------------------------

# stud 3 labels selected 16 other regions selected
# Stud 3 labels selected 9 other regions selected
#hot_map_stud_Stud <- matrix(c(3, 3, 16, 9), nrow = 2)

# or
# stud ex:3 labels selected 9 off or 3 from 12 possible
# Stud ex:3 labels selected 13 off or 3 from 16 possible

#hot_map_stud_alt <- matrix(c(3/12, 3/16, 9/12, 13/16), nrow = 2)

hot_map_stud_alt <- matrix(c(sum(count.studHotMapLabelsT), sum(count.studHotMapLabelsC), sum(count.studHotMapLabelsTOff), sum(count.studHotMapLabelsCOff)), nrow = 2)

rownames(hot_map_stud_alt) <- c("students Treat", "Ind Control")
colnames(hot_map_stud_alt) <- c("yes-label", "no-label")

#hot_map_stud

#chisq.test(hot_map_stud)

#fisher.test(hot_map_stud)

#oddsratio.wald(hot_map_stud)

hot_map_stud_alt

chisq.test(hot_map_stud_alt)

fisher.test(hot_map_stud_alt)

oddsratio.wald(hot_map_stud_alt)

#total new labels considered relevant ex: 21 on from 32 possible only stud
#total new labels considered relevant ex: 40 on from 60 possible only Stud

#relevant_labels_stud_Stud <- matrix(c(21/32, 40/60, 11/32, 20/60), nrow = 2)

#relevant_labels_stud <- matrix(c(sum(count.studNewLabels), sum(count.StudNewLabels), sum(count.studNewLabelsNonRel), sum(count.StudNewLabelsNonRel)), nrow = 2)

#rownames(relevant_labels_stud) <- c("new Labels stud", "new Labels Stud")
#colnames(relevant_labels_stud) <- c("yes-relevant", "no-relevant")

#relevant_labels_stud

#chisq.test(relevant_labels_stud)

#fisher.test(relevant_labels_stud)

#oddsratio.wald(relevant_labels_stud)

# by hand ex:
#treat <- 21/11
#treat
#control <-40/20
#control

#odd <- treat/control
#odd

#treat <- sum(count.studNewLabels)/sum(count.studNewLabelsNonRel)
#treat
#control <-sum(count.StudNewLabels)/sum(count.StudNewLabelsNonRel)
#control

#odd <- treat/control
#odd

# total labels considered relevant and non relevant stud Treat
# total labels considered relevant and non relevant stud Control

#relevant_labels_stud_Stud_alt <- matrix(c(240/438, 52/112, 198/438, 60/112), nrow = 2)

relevant_labels_stud_alt <- matrix(c(sum(count.studLabelsT), sum(count.studOldLabelsC), sum(count.studLabelsTNonRel), sum(count.studOldLabelsCNonRel)), nrow = 2)

rownames(relevant_labels_stud_alt) <- c("All Labels stud Treat", "All Labels stud Control")
colnames(relevant_labels_stud_alt) <- c("yes-relevant", "no-relevant")

relevant_labels_stud_alt 

chisq.test(relevant_labels_stud_alt)

fisher.test(relevant_labels_stud_alt)

oddsratio.wald(relevant_labels_stud_alt)

#treat_alt <- 240/198
#treat_alt
#control_alt <-52/60
#control_alt

#odd_alt <- treat_alt/control_alt
#odd_alt

treat <- sum(count.studLabelsT) / sum(count.studLabelsTNonRel)
treat
control <-sum(count.studOldLabelsC)/sum(count.studOldLabelsCNonRel)
control

odd <- treat/control
odd


