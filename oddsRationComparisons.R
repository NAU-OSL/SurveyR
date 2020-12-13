# Odds Ratio 

# Prepare DF

InfnetAllLabels <- InfnetAll[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os",	"groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
InfnetAllNewLabels <- InfnetAll[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os"	)]
InfnetAllOldLabels <- InfnetAll[c("X","groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
InfnetAllHotMapLabels <- InfnetAll[c("X","Q50_4","Q50_8","Q50_9","Q50_12")]
InfnetAllHotMapNonLabels <- InfnetAll[c("X","Q50_1","Q50_2","Q50_3","Q50_5","Q50_6","Q50_7","Q50_10","Q50_11")]

blogAllLabels <-   blogAll  [c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os",	"groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
blogAllNewLabels <- blogAll[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os"	)]
blogAllOldLabels <- blogAll[c("X","groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
blogAllHotMapLabels <- blogAll[c("X","Q50_4","Q50_8","Q50_9","Q50_12")]
blogAllHotMapNonLabels <- blogAll[c("X","Q50_1","Q50_2","Q50_3","Q50_5","Q50_6","Q50_7","Q50_10","Q50_11")]

casnavAllLabels <-   casnavAll  [c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os",	"groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
casnavAllNewLabels <- casnavAll[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os"	)]
casnavAllOldLabels <- casnavAll[c("X","groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
casnavAllHotMapLabels <- casnavAll[c("X","Q50_4","Q50_8","Q50_9","Q50_12")]
casnavAllHotMapNonLabels <- casnavAll[c("X","Q50_1","Q50_2","Q50_3","Q50_5","Q50_6","Q50_7","Q50_10","Q50_11")]

PucAllLabels <- PucAll[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os",	"groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
PucAllNewLabels <- PucAll[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os"	)]
PucAllOldLabels <- PucAll[c("X","groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
PucAllHotMapLabels <- PucAll[c("X","Q50_4","Q50_8","Q50_9","Q50_12")]
PucAllHotMapNonLabels <- PucAll[c("X","Q50_1","Q50_2","Q50_3","Q50_5","Q50_6","Q50_7","Q50_10","Q50_11")]

NauAllLabels <- NauAll[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os",	"groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
NauAllNewLabels <- NauAll[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os"	)]
NauAllOldLabels <- NauAll[c("X","groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
NauAllHotMapLabels <- NauAll[c("X","Q50_4","Q50_8","Q50_9","Q50_12")]
NauAllHotMapNonLabels <- NauAll[c("X","Q50_1","Q50_2","Q50_3","Q50_5","Q50_6","Q50_7","Q50_10","Q50_11")]


# INFNET
#new labels relevant
count.InfnetNewLabels <- apply(InfnetAllNewLabels, 2, function(x) length(which(x=="relevant")))
count.InfnetNewLabels
sum(count.InfnetNewLabels)

#old labels relevant
count.InfnetOldLabels <- apply(InfnetAllOldLabels, 2, function(x) length(which(x=="relevant")))
count.InfnetOldLabels
sum(count.InfnetOldLabels)

#new labels not relevant
count.InfnetNewLabelsNonRel <- apply(InfnetAllNewLabels, 2, function(x) length(which(x=="not relevant")))
count.InfnetNewLabelsNonRel
sum(count.InfnetNewLabelsNonRel)

#old labels not relevant
count.InfnetOldLabelsNonRel <- apply(InfnetAllOldLabels, 2, function(x) length(which(x=="not relevant")))
count.InfnetOldLabelsNonRel
sum(count.InfnetOldLabelsNonRel)

# hot map lables on
count.InfnetHotMapLabels <- apply(InfnetAllHotMapLabels, 2, function(x) length(which(x=="On")))
count.InfnetHotMapLabels
sum(count.InfnetHotMapLabels)

# hot map lables off
count.InfnetHotMapLabelsOff <- apply(InfnetAllHotMapLabels, 2, function(x) length(which(x=="Off")))
count.InfnetHotMapLabelsOff
sum(count.InfnetHotMapLabelsOff)

# hot map non labels on
count.InfnetHotMapNonLabels <- apply(InfnetAllHotMapNonLabels, 2, function(x) length(which(x=="On")))
count.InfnetHotMapNonLabels
sum(count.InfnetHotMapNonLabels)

# hot map non labels off
count.InfnetHotMapNonLabelsOff <- apply(InfnetAllHotMapNonLabels, 2, function(x) length(which(x=="Off")))
count.InfnetHotMapNonLabelsOff
sum(count.InfnetHotMapNonLabelsOff)

# all labels relevant
count.InfnetLabels <- apply(InfnetAllLabels, 2, function(x) length(which(x=="relevant")))
count.InfnetLabels
sum(count.InfnetLabels)

# all labels not relevant
count.InfnetLabelsNonRel <- apply(InfnetAllLabels, 2, function(x) length(which(x=="not relevant")))
count.InfnetLabelsNonRel
sum(count.InfnetLabelsNonRel)

# Blog

#new labels relevant
count.BlogNewLabels <- apply(blogAllNewLabels, 2, function(x) length(which(x=="relevant")))
count.BlogNewLabels
sum(count.BlogNewLabels)

#old labels relevant
count.BlogOldLabels <- apply(blogAllOldLabels, 2, function(x) length(which(x=="relevant")))
count.BlogOldLabels
sum(count.BlogOldLabels)

#new labels not relevant
count.BlogNewLabelsNonRel <- apply(blogAllNewLabels, 2, function(x) length(which(x=="not relevant")))
count.BlogNewLabelsNonRel
sum(count.BlogNewLabelsNonRel)

#old labels not relevant
count.BlogOldLabelsNonRel <- apply(blogAllOldLabels, 2, function(x) length(which(x=="not relevant")))
count.BlogOldLabelsNonRel
sum(count.BlogOldLabelsNonRel)

# hot map labels On
count.BlogHotMapLabels <- apply(blogAllHotMapLabels, 2, function(x) length(which(x=="On")))
count.BlogHotMapLabels
sum(count.BlogHotMapLabels)

#hot map labels off
count.BlogHotMapLabelsOff <- apply(blogAllHotMapLabels, 2, function(x) length(which(x=="Off")))
count.BlogHotMapLabelsOff
sum(count.BlogHotMapLabelsOff)

# hot map non labels on
count.BlogHotMapNonLabels <- apply(blogAllHotMapNonLabels, 2, function(x) length(which(x=="On")))
count.BlogHotMapNonLabels
sum(count.BlogHotMapNonLabels)

#hot map non labels off
count.BlogHotMapNonLabelsOff <- apply(blogAllHotMapNonLabels, 2, function(x) length(which(x=="Off")))
count.BlogHotMapNonLabelsOff
sum(count.BlogHotMapNonLabelsOff)

# All Blog labels relevant
count.BlogLabels <- apply(blogAllLabels, 2, function(x) length(which(x=="relevant")))
count.BlogLabels
sum(count.BlogLabels)

# All Blog labels not relevant
count.BlogLabelsNonRel <- apply(blogAllLabels, 2, function(x) length(which(x=="not relevant")))
count.BlogLabelsNonRel
sum(count.BlogLabelsNonRel)

# PUC

#new labels relevant
count.PucNewLabels <- apply(PucAllNewLabels, 2, function(x) length(which(x=="relevant")))
count.PucNewLabels
sum(count.PucNewLabels)

#old labels relevant
count.PucOldLabels <- apply(PucAllOldLabels, 2, function(x) length(which(x=="relevant")))
count.PucOldLabels
sum(count.PucOldLabels)

#new labels not relevant
count.PucNewLabelsNonRel <- apply(PucAllNewLabels, 2, function(x) length(which(x=="not relevant")))
count.PucNewLabelsNonRel
sum(count.PucNewLabelsNonRel)

#old labels not relevant
count.PucOldLabelsNonRel <- apply(PucAllOldLabels, 2, function(x) length(which(x=="not relevant")))
count.PucOldLabelsNonRel
sum(count.PucOldLabelsNonRel)

# hot map lables on
count.PucHotMapLabels <- apply(PucAllHotMapLabels, 2, function(x) length(which(x=="On")))
count.PucHotMapLabels
sum(count.PucHotMapLabels)

# hot map lables off
count.PucHotMapLabelsOff <- apply(PucAllHotMapLabels, 2, function(x) length(which(x=="Off")))
count.PucHotMapLabelsOff
sum(count.PucHotMapLabelsOff)

# hot map non labels on
count.PucHotMapNonLabels <- apply(PucAllHotMapNonLabels, 2, function(x) length(which(x=="On")))
count.PucHotMapNonLabels
sum(count.PucHotMapNonLabels)

# hot map non labels off
count.PucHotMapNonLabelsOff <- apply(PucAllHotMapNonLabels, 2, function(x) length(which(x=="Off")))
count.PucHotMapNonLabelsOff
sum(count.PucHotMapNonLabelsOff)

# all labels relevant
count.PucLabels <- apply(PucAllLabels, 2, function(x) length(which(x=="relevant")))
count.PucLabels
sum(count.PucLabels)

# all labels not relevant
count.PucLabelsNonRel <- apply(PucAllLabels, 2, function(x) length(which(x=="not relevant")))
count.PucLabelsNonRel
sum(count.PucLabelsNonRel)


# CASNAV

#new labels relevant
count.CasnavNewLabels <- apply(casnavAllNewLabels, 2, function(x) length(which(x=="relevant")))
count.CasnavNewLabels
sum(count.CasnavNewLabels)

#old labels relevant
count.CasnavOldLabels <- apply(casnavAllOldLabels, 2, function(x) length(which(x=="relevant")))
count.CasnavOldLabels
sum(count.CasnavOldLabels)

#new labels not relevant
count.CasnavNewLabelsNonRel <- apply(casnavAllNewLabels, 2, function(x) length(which(x=="not relevant")))
count.CasnavNewLabelsNonRel
sum(count.CasnavNewLabelsNonRel)

#old labels not relevant
count.CasnavOldLabelsNonRel <- apply(casnavAllOldLabels, 2, function(x) length(which(x=="not relevant")))
count.CasnavOldLabelsNonRel
sum(count.CasnavOldLabelsNonRel)

# hot map lables on
count.CasnavHotMapLabels <- apply(casnavAllHotMapLabels, 2, function(x) length(which(x=="On")))
count.CasnavHotMapLabels
sum(count.CasnavHotMapLabels)

# hot map lables off
count.CasnavHotMapLabelsOff <- apply(casnavAllHotMapLabels, 2, function(x) length(which(x=="Off")))
count.CasnavHotMapLabelsOff
sum(count.CasnavHotMapLabelsOff)

# hot map non labels on
count.CasnavHotMapNonLabels <- apply(casnavAllHotMapNonLabels, 2, function(x) length(which(x=="On")))
count.CasnavHotMapNonLabels
sum(count.CasnavHotMapNonLabels)

# hot map non labels off
count.CasnavHotMapNonLabelsOff <- apply(casnavAllHotMapNonLabels, 2, function(x) length(which(x=="Off")))
count.CasnavHotMapNonLabelsOff
sum(count.CasnavHotMapNonLabelsOff)

# all labels relevant
count.CasnavLabels <- apply(casnavAllLabels, 2, function(x) length(which(x=="relevant")))
count.CasnavLabels
sum(count.CasnavLabels)

# all labels not relevant
count.CasnavLabelsNonRel <- apply(casnavAllLabels, 2, function(x) length(which(x=="not relevant")))
count.CasnavLabelsNonRel
sum(count.CasnavLabelsNonRel)

# NAU

#new labels relevant
count.NauNewLabels <- apply(NauAllNewLabels, 2, function(x) length(which(x=="relevant")))
count.NauNewLabels
sum(count.NauNewLabels)

#old labels relevant
count.NauOldLabels <- apply(NauAllOldLabels, 2, function(x) length(which(x=="relevant")))
count.NauOldLabels
sum(count.NauOldLabels)

#new labels not relevant
count.NauNewLabelsNonRel <- apply(NauAllNewLabels, 2, function(x) length(which(x=="not relevant")))
count.NauNewLabelsNonRel
sum(count.NauNewLabelsNonRel)

#old labels not relevant
count.NauOldLabelsNonRel <- apply(NauAllOldLabels, 2, function(x) length(which(x=="not relevant")))
count.NauOldLabelsNonRel
sum(count.NauOldLabelsNonRel)

# hot map lables on
count.NauHotMapLabels <- apply(NauAllHotMapLabels, 2, function(x) length(which(x=="On")))
count.NauHotMapLabels
sum(count.NauHotMapLabels)

# hot map lables off
count.NauHotMapLabelsOff <- apply(NauAllHotMapLabels, 2, function(x) length(which(x=="Off")))
count.NauHotMapLabelsOff
sum(count.NauHotMapLabelsOff)

# hot map non labels on
count.NauHotMapNonLabels <- apply(NauAllHotMapNonLabels, 2, function(x) length(which(x=="On")))
count.NauHotMapNonLabels
sum(count.NauHotMapNonLabels)

# hot map non labels off
count.NauHotMapNonLabelsOff <- apply(NauAllHotMapNonLabels, 2, function(x) length(which(x=="Off")))
count.NauHotMapNonLabelsOff
sum(count.NauHotMapNonLabelsOff)

# all labels relevant
count.NauLabels <- apply(NauAllLabels, 2, function(x) length(which(x=="relevant")))
count.NauLabels
sum(count.NauLabels)

# all labels not relevant
count.NauLabelsNonRel <- apply(NauAllLabels, 2, function(x) length(which(x=="not relevant")))
count.NauLabelsNonRel
sum(count.NauLabelsNonRel)

# Blog x INFNET -------------------------------------

# INFNET 3 labels selected 16 other regions selected
# BLOG 3 labels selected 9 other regions selected
#hot_map_INFNET_Blog <- matrix(c(3, 3, 16, 9), nrow = 2)

# or
# INFNET ex:3 labels selected 9 off or 3 from 12 possible
# BLOG ex:3 labels selected 13 off or 3 from 16 possible

#hot_map_INFNET_alt <- matrix(c(3/12, 3/16, 9/12, 13/16), nrow = 2)

hot_map_INFNET_Blog_alt <- matrix(c(sum(count.InfnetHotMapLabels), sum(count.BlogHotMapLabels), sum(count.InfnetHotMapLabelsOff), sum(count.BlogHotMapLabelsOff)), nrow = 2)

rownames(hot_map_INFNET_Blog_alt) <- c("INFNET", "BLOG")
colnames(hot_map_INFNET_Blog_alt) <- c("yes-label", "no-label")

#hot_map_INFNET

#chisq.test(hot_map_INFNET)

#fisher.test(hot_map_INFNET)

#oddsratio.wald(hot_map_INFNET)

hot_map_INFNET_Blog_alt

chisq.test(hot_map_INFNET_Blog_alt)

fisher.test(hot_map_INFNET_Blog_alt)

oddsratio.wald(hot_map_INFNET_Blog_alt)

#total new labels considered relevant ex: 21 on from 32 possible only INFNET
#total new labels considered relevant ex: 40 on from 60 possible only BLOG

#relevant_labels_INFNET_Blog <- matrix(c(21/32, 40/60, 11/32, 20/60), nrow = 2)

relevant_labels_INFNET_Blog <- matrix(c(sum(count.InfnetNewLabels), sum(count.BlogNewLabels), sum(count.InfnetNewLabelsNonRel), sum(count.BlogNewLabelsNonRel)), nrow = 2)

rownames(relevant_labels_INFNET_Blog) <- c("new Labels INFNET", "new Labels Blog")
colnames(relevant_labels_INFNET_Blog) <- c("yes-relevant", "no-relevant")

relevant_labels_INFNET_Blog

chisq.test(relevant_labels_INFNET_Blog)

fisher.test(relevant_labels_INFNET_Blog)

oddsratio.wald(relevant_labels_INFNET_Blog)

# by hand ex:
#treat <- 21/11
#treat
#control <-40/20
#control

#odd <- treat/control
#odd

treat <- sum(count.InfnetNewLabels)/sum(count.InfnetNewLabelsNonRel)
treat
control <-sum(count.BlogNewLabels)/sum(count.BlogNewLabelsNonRel)
control

odd <- treat/control
odd

# total labels considered relevant and non relevant INFNET
# total labels considered relevant and non relevant BLOG

#relevant_labels_INFNET_Blog_alt <- matrix(c(240/438, 52/112, 198/438, 60/112), nrow = 2)

relevant_labels_INFNET_Blog_alt <- matrix(c(sum(count.InfnetLabels), sum(count.BlogLabels), sum(count.InfnetLabelsNonRel), sum(count.BlogLabelsNonRel)), nrow = 2)

rownames(relevant_labels_INFNET_Blog_alt) <- c("All Labels INFNET", "All Labels BLOG")
colnames(relevant_labels_INFNET_Blog_alt) <- c("yes-relevant", "no-relevant")

relevant_labels_INFNET_Blog_alt

chisq.test(relevant_labels_INFNET_Blog_alt)

fisher.test(relevant_labels_INFNET_Blog_alt)

oddsratio.wald(relevant_labels_INFNET_Blog_alt)

#treat_alt <- 240/198
#treat_alt
#control_alt <-52/60
#control_alt

#odd_alt <- treat_alt/control_alt
#odd_alt

treat <- sum(count.InfnetLabels) / sum(count.InfnetLabelsNonRel)
treat
control <-sum(count.BlogLabels)/sum(count.BlogLabelsNonRel)
control

odd <- treat/control
odd


# Blog x PUC ---------------------------------------

# PUC 3 labels selected 16 other regions selected
# BLOG 3 labels selected 9 other regions selected
#hot_map_PUC_Blog <- matrix(c(3, 3, 16, 9), nrow = 2)

# or
# PUC ex:3 labels selected 9 off or 3 from 12 possible
# BLOG ex:3 labels selected 13 off or 3 from 16 possible

#hot_map_PUC_alt <- matrix(c(3/12, 3/16, 9/12, 13/16), nrow = 2)

hot_map_PUC_Blog_alt <- matrix(c(sum(count.PucHotMapLabels), sum(count.BlogHotMapLabels), sum(count.PucHotMapLabelsOff), sum(count.BlogHotMapLabelsOff)), nrow = 2)

rownames(hot_map_PUC_Blog_alt) <- c("PUC", "BLOG")
colnames(hot_map_PUC_Blog_alt) <- c("yes-label", "no-label")

#hot_map_PUC

#chisq.test(hot_map_PUC)

#fisher.test(hot_map_PUC)

#oddsratio.wald(hot_map_PUC)

hot_map_PUC_Blog_alt

chisq.test(hot_map_PUC_Blog_alt)

fisher.test(hot_map_PUC_Blog_alt)

oddsratio.wald(hot_map_PUC_Blog_alt)

#total new labels considered relevant ex: 21 on from 32 possible only PUC
#total new labels considered relevant ex: 40 on from 60 possible only BLOG

#relevant_labels_PUC_Blog <- matrix(c(21/32, 40/60, 11/32, 20/60), nrow = 2)

relevant_labels_PUC_Blog <- matrix(c(sum(count.PucNewLabels), sum(count.BlogNewLabels), sum(count.PucNewLabelsNonRel), sum(count.BlogNewLabelsNonRel)), nrow = 2)

rownames(relevant_labels_PUC_Blog) <- c("new Labels PUC", "new Labels Blog")
colnames(relevant_labels_PUC_Blog) <- c("yes-relevant", "no-relevant")

relevant_labels_PUC_Blog

chisq.test(relevant_labels_PUC_Blog)

fisher.test(relevant_labels_PUC_Blog)

oddsratio.wald(relevant_labels_PUC_Blog)

# by hand ex:
#treat <- 21/11
#treat
#control <-40/20
#control

#odd <- treat/control
#odd

treat <- sum(count.PucNewLabels)/sum(count.PucNewLabelsNonRel)
treat
control <-sum(count.BlogNewLabels)/sum(count.BlogNewLabelsNonRel)
control

odd <- treat/control
odd

# total labels considered relevant and non relevant PUC
# total labels considered relevant and non relevant BLOG

#relevant_labels_PUC_Blog_alt <- matrix(c(240/438, 52/112, 198/438, 60/112), nrow = 2)

relevant_labels_PUC_Blog_alt <- matrix(c(sum(count.PucLabels), sum(count.BlogLabels), sum(count.PucLabelsNonRel), sum(count.BlogLabelsNonRel)), nrow = 2)

rownames(relevant_labels_PUC_Blog_alt) <- c("All Labels PUC", "All Labels BLOG")
colnames(relevant_labels_PUC_Blog_alt) <- c("yes-relevant", "no-relevant")

relevant_labels_PUC_Blog_alt

chisq.test(relevant_labels_PUC_Blog_alt)

fisher.test(relevant_labels_PUC_Blog_alt)

oddsratio.wald(relevant_labels_PUC_Blog_alt)

#treat_alt <- 240/198
#treat_alt
#control_alt <-52/60
#control_alt

#odd_alt <- treat_alt/control_alt
#odd_alt

treat <- sum(count.PucLabels) / sum(count.PucLabelsNonRel)
treat
control <-sum(count.BlogLabels)/sum(count.BlogLabelsNonRel)
control

odd <- treat/control
odd

# Blog x NAU

# NAU 3 labels selected 16 other regions selected
# BLOG 3 labels selected 9 other regions selected
#hot_map_NAU_Blog <- matrix(c(3, 3, 16, 9), nrow = 2)

# or
# NAU ex:3 labels selected 9 off or 3 from 12 possible
# BLOG ex:3 labels selected 13 off or 3 from 16 possible

#hot_map_NAU_alt <- matrix(c(3/12, 3/16, 9/12, 13/16), nrow = 2)

hot_map_NAU_Blog_alt <- matrix(c(sum(count.NauHotMapLabels), sum(count.BlogHotMapLabels), sum(count.NauHotMapLabelsOff), sum(count.BlogHotMapLabelsOff)), nrow = 2)

rownames(hot_map_NAU_Blog_alt) <- c("NAU", "BLOG")
colnames(hot_map_NAU_Blog_alt) <- c("yes-label", "no-label")

#hot_map_NAU

#chisq.test(hot_map_NAU)

#fisher.test(hot_map_NAU)

#oddsratio.wald(hot_map_NAU)

hot_map_NAU_Blog_alt

chisq.test(hot_map_NAU_Blog_alt)

fisher.test(hot_map_NAU_Blog_alt)

oddsratio.wald(hot_map_NAU_Blog_alt)

#total new labels considered relevant ex: 21 on from 32 possible only NAU
#total new labels considered relevant ex: 40 on from 60 possible only BLOG

#relevant_labels_NAU_Blog <- matrix(c(21/32, 40/60, 11/32, 20/60), nrow = 2)

relevant_labels_NAU_Blog <- matrix(c(sum(count.NauNewLabels), sum(count.BlogNewLabels), sum(count.NauNewLabelsNonRel), sum(count.BlogNewLabelsNonRel)), nrow = 2)

rownames(relevant_labels_NAU_Blog) <- c("new Labels NAU", "new Labels Blog")
colnames(relevant_labels_NAU_Blog) <- c("yes-relevant", "no-relevant")

relevant_labels_NAU_Blog

chisq.test(relevant_labels_NAU_Blog)

fisher.test(relevant_labels_NAU_Blog)

oddsratio.wald(relevant_labels_NAU_Blog)

# by hand ex:
#treat <- 21/11
#treat
#control <-40/20
#control

#odd <- treat/control
#odd

treat <- sum(count.NauNewLabels)/sum(count.NauNewLabelsNonRel)
treat
control <-sum(count.BlogNewLabels)/sum(count.BlogNewLabelsNonRel)
control

odd <- treat/control
odd

# total labels considered relevant and non relevant NAU
# total labels considered relevant and non relevant BLOG

#relevant_labels_NAU_Blog_alt <- matrix(c(240/438, 52/112, 198/438, 60/112), nrow = 2)

relevant_labels_NAU_Blog_alt <- matrix(c(sum(count.NauLabels), sum(count.BlogLabels), sum(count.NauLabelsNonRel), sum(count.BlogLabelsNonRel)), nrow = 2)

rownames(relevant_labels_NAU_Blog_alt) <- c("All Labels NAU", "All Labels BLOG")
colnames(relevant_labels_NAU_Blog_alt) <- c("yes-relevant", "no-relevant")

relevant_labels_NAU_Blog_alt

chisq.test(relevant_labels_NAU_Blog_alt)

fisher.test(relevant_labels_NAU_Blog_alt)

oddsratio.wald(relevant_labels_NAU_Blog_alt)

#treat_alt <- 240/198
#treat_alt
#control_alt <-52/60
#control_alt

#odd_alt <- treat_alt/control_alt
#odd_alt

treat <- sum(count.NauLabels) / sum(count.NauLabelsNonRel)
treat
control <-sum(count.BlogLabels)/sum(count.BlogLabelsNonRel)
control

odd <- treat/control
odd


# Blog x CASNAV

# CASNAV 3 labels selected 16 other regions selected
# BLOG 3 labels selected 9 other regions selected
#hot_map_CASNAV_Blog <- matrix(c(3, 3, 16, 9), nrow = 2)

# or
# CASNAV ex:3 labels selected 9 off or 3 from 12 possible
# BLOG ex:3 labels selected 13 off or 3 from 16 possible

#hot_map_CASNAV_alt <- matrix(c(3/12, 3/16, 9/12, 13/16), nrow = 2)

hot_map_CASNAV_Blog_alt <- matrix(c(sum(count.CasnavHotMapLabels), sum(count.BlogHotMapLabels), sum(count.CasnavHotMapLabelsOff), sum(count.BlogHotMapLabelsOff)), nrow = 2)

rownames(hot_map_CASNAV_Blog_alt) <- c("CASNAV", "BLOG")
colnames(hot_map_CASNAV_Blog_alt) <- c("yes-label", "no-label")

#hot_map_CASNAV

#chisq.test(hot_map_CASNAV)

#fisher.test(hot_map_CASNAV)

#oddsratio.wald(hot_map_CASNAV)

hot_map_CASNAV_Blog_alt

chisq.test(hot_map_CASNAV_Blog_alt)

fisher.test(hot_map_CASNAV_Blog_alt)

oddsratio.wald(hot_map_CASNAV_Blog_alt)

#total new labels considered relevant ex: 21 on from 32 possible only CASNAV
#total new labels considered relevant ex: 40 on from 60 possible only BLOG

#relevant_labels_CASNAV_Blog <- matrix(c(21/32, 40/60, 11/32, 20/60), nrow = 2)

relevant_labels_CASNAV_Blog <- matrix(c(sum(count.CasnavNewLabels), sum(count.BlogNewLabels), sum(count.CasnavNewLabelsNonRel), sum(count.BlogNewLabelsNonRel)), nrow = 2)

rownames(relevant_labels_CASNAV_Blog) <- c("new Labels CASNAV", "new Labels Blog")
colnames(relevant_labels_CASNAV_Blog) <- c("yes-relevant", "no-relevant")

relevant_labels_CASNAV_Blog

chisq.test(relevant_labels_CASNAV_Blog)

fisher.test(relevant_labels_CASNAV_Blog)

oddsratio.wald(relevant_labels_CASNAV_Blog)

# by hand ex:
#treat <- 21/11
#treat
#control <-40/20
#control

#odd <- treat/control
#odd

treat <- sum(count.CasnavNewLabels)/sum(count.CasnavNewLabelsNonRel)
treat
control <-sum(count.BlogNewLabels)/sum(count.BlogNewLabelsNonRel)
control

odd <- treat/control
odd

# total labels considered relevant and non relevant CASNAV
# total labels considered relevant and non relevant BLOG

#relevant_labels_CASNAV_Blog_alt <- matrix(c(240/438, 52/112, 198/438, 60/112), nrow = 2)

relevant_labels_CASNAV_Blog_alt <- matrix(c(sum(count.CasnavLabels), sum(count.BlogLabels), sum(count.CasnavLabelsNonRel), sum(count.BlogLabelsNonRel)), nrow = 2)

rownames(relevant_labels_CASNAV_Blog_alt) <- c("All Labels CASNAV", "All Labels BLOG")
colnames(relevant_labels_CASNAV_Blog_alt) <- c("yes-relevant", "no-relevant")

relevant_labels_CASNAV_Blog_alt

chisq.test(relevant_labels_CASNAV_Blog_alt)

fisher.test(relevant_labels_CASNAV_Blog_alt)

oddsratio.wald(relevant_labels_CASNAV_Blog_alt)

#treat_alt <- 240/198
#treat_alt
#control_alt <-52/60
#control_alt

#odd_alt <- treat_alt/control_alt
#odd_alt

treat <- sum(count.CasnavLabels) / sum(count.CasnavLabelsNonRel)
treat
control <-sum(count.BlogLabels)/sum(count.BlogLabelsNonRel)
control

odd <- treat/control
odd

# INFNET x PUC

# INFNET x NAU

# INFNET x CASNAV

# PUC x NAU

# PUC x CASNAV

# NAU x CASNAV



