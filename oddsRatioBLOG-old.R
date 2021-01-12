# BLOG

# treatment 3 labels selected 16 other regions selected
# control 3 labels selected 9 other regions selected
#hot_map_BLOG <- matrix(c(3, 3, 16, 9), nrow = 2)

# or
# treatment 2 labels selected 22 off
# control 3 labels selected 24 off

#hot_map_BLOG_alt <- matrix(c(19/76, 6/28, 57/76, 22/28), nrow = 2)

hot_map_BLOG_alt <- matrix(c(19, 6, 57, 22), nrow = 2)

rownames(hot_map_BLOG_alt) <- c("Treatment", "control")
colnames(hot_map_BLOG_alt) <- c("yes-label", "no-label")

#hot_map_BLOG

#chisq.test(hot_map_BLOG)

#fisher.test(hot_map_BLOG)

#oddsratio.wald(hot_map_BLOG)

hot_map_BLOG_alt

chisq.test(hot_map_BLOG_alt)

fisher.test(hot_map_BLOG_alt)

oddsratio.wald(hot_map_BLOG_alt)

#total new labels considered relevant 105 on from 152 possible only treatment
#total old labels considered relevant 135 on from 286 possible only treatment

#relevant_labels_BLOG <- matrix(c(105/152, 135/286, 47/152, 151/286), nrow = 2)

relevant_labels_BLOG <- matrix(c(105, 135, 47, 151), nrow = 2)


rownames(relevant_labels_BLOG) <- c("new Labels", "old Labels")
colnames(relevant_labels_BLOG) <- c("yes-relevant", "no-relevant")

relevant_labels_BLOG

chisq.test(relevant_labels_BLOG)

fisher.test(relevant_labels_BLOG)

oddsratio.wald(relevant_labels_BLOG)


treat <- 105/47
treat
control <-135/151
control

odd <- treat/control
odd
# new labels where 150% more relevant than old in the same group

# total labels considered relevant and non relevant treatment
# total labels considered relevant and non relevant control

#relevant_labels_BLOG_alt <- matrix(c(240/438, 52/112, 198/438, 60/112), nrow = 2)

relevant_labels_BLOG_alt <- matrix(c(240, 52, 198, 60), nrow = 2)

rownames(relevant_labels_BLOG_alt) <- c("Labels Treatment", "Labels control")
colnames(relevant_labels_BLOG_alt) <- c("yes-relevant", "no-relevant")

relevant_labels_BLOG_alt

chisq.test(relevant_labels_BLOG_alt)

fisher.test(relevant_labels_BLOG_alt)

oddsratio.wald(relevant_labels_BLOG_alt)

treat_alt <- (240/438) / (198/438)
treat_alt
control_alt <-(52/112) / (60/112)
control_alt

odd_alt <- treat_alt/control_alt
odd_alt
#40% more relevant the use the labels in treatment group than in the control ?