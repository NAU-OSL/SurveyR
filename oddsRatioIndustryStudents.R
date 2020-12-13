# Odds Ratio industry x Students

# Prepare DF

industryAllLabels <- industryAll[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os",	"groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
industryAllNewLabels <- industryAll[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os"	)]
industryAllOldLabels <- industryAll[c("X","groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
industryAllHotMapLabels <- industryAll[c("X","Q50_4","Q50_8","Q50_9","Q50_12")]
industryAllHotMapNonLabels <- industryAll[c("X","Q50_1","Q50_2","Q50_3","Q50_5","Q50_6","Q50_7","Q50_10","Q50_11")]

studentsAllLabels <- studentsAll[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os",	"groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
studentsAllNewLabels <- studentsAll[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os"	)]
studentsAllOldLabels <- studentsAll[c("X","groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
studentsAllHotMapLabels <- studentsAll[c("X","Q50_4","Q50_8","Q50_9","Q50_12")]
studentsAllHotMapNonLabels <- studentsAll[c("X","Q50_1","Q50_2","Q50_3","Q50_5","Q50_6","Q50_7","Q50_10","Q50_11")]

# Indus

#new labels relevant
count.IndusNewLabels <- apply(industryAllNewLabels, 2, function(x) length(which(x=="relevant")))
count.IndusNewLabels
sum(count.IndusNewLabels)

#old labels relevant
count.IndusOldLabels <- apply(industryAllOldLabels, 2, function(x) length(which(x=="relevant")))
count.IndusOldLabels
sum(count.IndusOldLabels)

#new labels not relevant
count.IndusNewLabelsNonRel <- apply(industryAllNewLabels, 2, function(x) length(which(x=="not relevant")))
count.IndusNewLabelsNonRel
sum(count.IndusNewLabelsNonRel)

#old labels not relevant
count.IndusOldLabelsNonRel <- apply(industryAllOldLabels, 2, function(x) length(which(x=="not relevant")))
count.IndusOldLabelsNonRel
sum(count.IndusOldLabelsNonRel)

# hot map lables on
count.IndusHotMapLabels <- apply(industryAllHotMapLabels, 2, function(x) length(which(x=="On")))
count.IndusHotMapLabels
sum(count.IndusHotMapLabels)

# hot map lables off
count.IndusHotMapLabelsOff <- apply(industryAllHotMapLabels, 2, function(x) length(which(x=="Off")))
count.IndusHotMapLabelsOff
sum(count.IndusHotMapLabelsOff)

# hot map non labels on
count.IndusHotMapNonLabels <- apply(industryAllHotMapNonLabels, 2, function(x) length(which(x=="On")))
count.IndusHotMapNonLabels
sum(count.IndusHotMapNonLabels)

# hot map non labels off
count.IndusHotMapNonLabelsOff <- apply(industryAllHotMapNonLabels, 2, function(x) length(which(x=="Off")))
count.IndusHotMapNonLabelsOff
sum(count.IndusHotMapNonLabelsOff)

# all labels relevant
count.IndusLabels <- apply(industryAllLabels, 2, function(x) length(which(x=="relevant")))
count.IndusLabels
sum(count.IndusLabels)

# all labels not relevant
count.IndusLabelsNonRel <- apply(industryAllLabels, 2, function(x) length(which(x=="not relevant")))
count.IndusLabelsNonRel
sum(count.IndusLabelsNonRel)

# Stud

#new labels relevant
count.StudNewLabels <- apply(studentsAllNewLabels, 2, function(x) length(which(x=="relevant")))
count.StudNewLabels
sum(count.StudNewLabels)

#old labels relevant
count.StudOldLabels <- apply(studentsAllOldLabels, 2, function(x) length(which(x=="relevant")))
count.StudOldLabels
sum(count.StudOldLabels)

#new labels not relevant
count.StudNewLabelsNonRel <- apply(studentsAllNewLabels, 2, function(x) length(which(x=="not relevant")))
count.StudNewLabelsNonRel
sum(count.StudNewLabelsNonRel)

#old labels not relevant
count.StudOldLabelsNonRel <- apply(studentsAllOldLabels, 2, function(x) length(which(x=="not relevant")))
count.StudOldLabelsNonRel
sum(count.StudOldLabelsNonRel)

# hot map lables on
count.StudHotMapLabels <- apply(studentsAllHotMapLabels, 2, function(x) length(which(x=="On")))
count.StudHotMapLabels
sum(count.StudHotMapLabels)

# hot map lables off
count.StudHotMapLabelsOff <- apply(studentsAllHotMapLabels, 2, function(x) length(which(x=="Off")))
count.StudHotMapLabelsOff
sum(count.StudHotMapLabelsOff)

# hot map non labels on
count.StudHotMapNonLabels <- apply(studentsAllHotMapNonLabels, 2, function(x) length(which(x=="On")))
count.StudHotMapNonLabels
sum(count.StudHotMapNonLabels)

# hot map non labels off
count.StudHotMapNonLabelsOff <- apply(studentsAllHotMapNonLabels, 2, function(x) length(which(x=="Off")))
count.StudHotMapNonLabelsOff
sum(count.StudHotMapNonLabelsOff)

# all labels relevant
count.StudLabels <- apply(studentsAllLabels, 2, function(x) length(which(x=="relevant")))
count.StudLabels
sum(count.StudLabels)

# all labels not relevant
count.StudLabelsNonRel <- apply(studentsAllLabels, 2, function(x) length(which(x=="not relevant")))
count.StudLabelsNonRel
sum(count.StudLabelsNonRel)

# Stud x Indus -------------------------------------

# Indus 3 labels selected 16 other regions selected
# Stud 3 labels selected 9 other regions selected
#hot_map_Indus_Stud <- matrix(c(3, 3, 16, 9), nrow = 2)

# or
# Indus ex:3 labels selected 9 off or 3 from 12 possible
# Stud ex:3 labels selected 13 off or 3 from 16 possible

#hot_map_Indus_alt <- matrix(c(3/12, 3/16, 9/12, 13/16), nrow = 2)

hot_map_Indus_Stud_alt <- matrix(c(sum(count.IndusHotMapLabels), sum(count.StudHotMapLabels), sum(count.IndusHotMapLabelsOff), sum(count.StudHotMapLabelsOff)), nrow = 2)

rownames(hot_map_Indus_Stud_alt) <- c("Indus", "Stud")
colnames(hot_map_Indus_Stud_alt) <- c("yes-label", "no-label")

#hot_map_Indus

#chisq.test(hot_map_Indus)

#fisher.test(hot_map_Indus)

#oddsratio.wald(hot_map_Indus)

hot_map_Indus_Stud_alt

chisq.test(hot_map_Indus_Stud_alt)

fisher.test(hot_map_Indus_Stud_alt)

oddsratio.wald(hot_map_Indus_Stud_alt)

#total new labels considered relevant ex: 21 on from 32 possible only Indus
#total new labels considered relevant ex: 40 on from 60 possible only Stud

#relevant_labels_Indus_Stud <- matrix(c(21/32, 40/60, 11/32, 20/60), nrow = 2)

relevant_labels_Indus_Stud <- matrix(c(sum(count.IndusNewLabels), sum(count.StudNewLabels), sum(count.IndusNewLabelsNonRel), sum(count.StudNewLabelsNonRel)), nrow = 2)

rownames(relevant_labels_Indus_Stud) <- c("new Labels Indus", "new Labels Stud")
colnames(relevant_labels_Indus_Stud) <- c("yes-relevant", "no-relevant")

relevant_labels_Indus_Stud

chisq.test(relevant_labels_Indus_Stud)

fisher.test(relevant_labels_Indus_Stud)

oddsratio.wald(relevant_labels_Indus_Stud)

# by hand ex:
#treat <- 21/11
#treat
#control <-40/20
#control

#odd <- treat/control
#odd

treat <- sum(count.IndusNewLabels)/sum(count.IndusNewLabelsNonRel)
treat
control <-sum(count.StudNewLabels)/sum(count.StudNewLabelsNonRel)
control

odd <- treat/control
odd

# total labels considered relevant and non relevant Indus
# total labels considered relevant and non relevant Stud

#relevant_labels_Indus_Stud_alt <- matrix(c(240/438, 52/112, 198/438, 60/112), nrow = 2)

relevant_labels_Indus_Stud_alt <- matrix(c(sum(count.IndusLabels), sum(count.StudLabels), sum(count.IndusLabelsNonRel), sum(count.StudLabelsNonRel)), nrow = 2)

rownames(relevant_labels_Indus_Stud_alt) <- c("All Labels Indus", "All Labels Stud")
colnames(relevant_labels_Indus_Stud_alt) <- c("yes-relevant", "no-relevant")

relevant_labels_Indus_Stud_alt

chisq.test(relevant_labels_Indus_Stud_alt)

fisher.test(relevant_labels_Indus_Stud_alt)

oddsratio.wald(relevant_labels_Indus_Stud_alt)

#treat_alt <- 240/198
#treat_alt
#control_alt <-52/60
#control_alt

#odd_alt <- treat_alt/control_alt
#odd_alt

treat <- sum(count.IndusLabels) / sum(count.IndusLabelsNonRel)
treat
control <-sum(count.StudLabels)/sum(count.StudLabelsNonRel)
control

odd <- treat/control
odd

