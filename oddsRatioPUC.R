# PUC

# treatment 2 labels selected 25 other regions selected
# control 3 labels selected 20 other regions selected
#hot_map_PUC_PUC <- matrix(c(2, 3, 25, 20), nrow = 2)

# or
# treatment 2 labels selected 22 off or 2 from 24 on
# control 3 labels selected 24 off or 3 from 27 on

#hot_map_PUC_alt <- matrix(c(2/24, 3/27, 22/24, 24/27), nrow = 2)

hot_map_PUC_alt <- matrix(c(2, 3, 22, 24), nrow = 2)

rownames(hot_map_PUC_alt) <- c("Treatment", "control")
colnames(hot_map_PUC_alt) <- c("yes-label", "no-label")

#hot_map_PUC

#chisq.test(hot_map_PUC)

#fisher.test(hot_map_PUC)

#oddsratio.wald(hot_map_PUC)

hot_map_PUC_alt

chisq.test(hot_map_PUC_alt)

fisher.test(hot_map_PUC_alt)

oddsratio.wald(hot_map_PUC_alt)

# total new labels considered relevant only treatment
# total old labels considered relevant only treatment

#relevant_labels_PUC <- matrix(c(21/64, 48/120, 48/64, 72/120), nrow = 2)

relevant_labels_PUC <- matrix(c(21, 48, 48, 72), nrow = 2)

rownames(relevant_labels_PUC) <- c("new Labels", "old Labels")
colnames(relevant_labels_PUC) <- c("yes-relevant", "no-relevant")

relevant_labels_PUC

chisq.test(relevant_labels_PUC)

fisher.test(relevant_labels_PUC)

oddsratio.wald(relevant_labels_PUC)

treat <- 21/48
treat
control <-48/72
control

odd <- treat/control
odd

# total labels considered relevant and non relevant treatment
# total labels considered relevant and non relevant control

#relevant_labels_PUC_alt <- matrix(c(69/184, 60/144, 115/184, 84/144), nrow = 2)

relevant_labels_PUC_alt <- matrix(c(69, 60, 115, 84), nrow = 2)

rownames(relevant_labels_PUC_alt) <- c("Labels Treatment", "Labels control")
colnames(relevant_labels_PUC_alt) <- c("yes-relevant", "no-relevant")

relevant_labels_PUC_alt

chisq.test(relevant_labels_PUC_alt)

fisher.test(relevant_labels_PUC_alt)

oddsratio.wald(relevant_labels_PUC_alt)

treat_alt <- 69/115
treat_alt
control_alt <-60/84
control_alt

odd_alt <- treat_alt/control_alt
odd_alt

# compare all datasets
# PUC - labels ML relevant and not relevant x
# INFNET - labels ML relevant and not relevant x
# CASNAV...
# Blog
# CEFET
# DCTIM 

# classify participants using demographics comparing labels on/off  relevant/non-relevant

# coder x non coder
# contributor x non contributor
# java coder x non java coder
# english speaker x non english speaker
# know libraries x do not know libraries

#alunos graduação/alunos pós/empresa/pesquisa
#coders experientes/coders não experientes
#coder com afinidade na tecnologia do projeto/coders sem afinidade na tecnologia do projeto


