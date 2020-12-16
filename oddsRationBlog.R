#blogT <- read.csv("surveyblog.csv")
#blogC <- read.csv("surveyblog-1.csv")

blogT <- treatBlog
blogC <- controlBlog

colnames(blogT)
colnames(blogC)

blogTLabels <- blogT[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os",	"groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
blogCLabels <- blogC[c("X","ui","groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
#blogCLabels <- blogC[c("X", "Q46_1",	"Q46_2",	"Q46_3",	"Q46_4",	"Q46_5",	"Q46_6",	"Q46_7",	"Q46_8",	"Q46_9",	"Q46_10",	"Q46_11",	"Q46_12",	"Q46_13",	"Q46_14",	"Q46_15", "Q46_16")]
#Q46_1	Q46_2	Q46_3	Q46_4	Q46_5	Q46_6	Q46_7	Q46_8	Q46_9	Q46_10	Q46_11	Q46_12	Q46_13	Q46_14	Q46_15	Q46_16 
blogTNewLabels <- blogT[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os"	)]
blogTOldLabels <- blogT[c("X","groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]

blogTHotMapLabels <- blogT[c("X","Q50_4","Q50_8","Q50_9","Q50_12")]
blogTHotMapNonLabels <- blogT[c("X","Q50_1","Q50_2","Q50_3","Q50_5","Q50_6","Q50_7","Q50_10","Q50_11")]

blogCHotMapLabels <- blogC[c("X","Q50_4","Q50_8","Q50_9","Q50_12")]
blogCHotMapNonLabels <- blogC[c("X","Q50_1","Q50_2","Q50_3","Q50_5","Q50_6","Q50_7","Q50_10","Q50_11")]

count.TblogNewLabels <- apply(blogTNewLabels, 2, function(x) length(which(x=="relevant")))
count.TblogNewLabels
sum(count.TblogNewLabels)

count.TblogOldLabels <- apply(blogTOldLabels, 2, function(x) length(which(x=="relevant")))
count.TblogOldLabels
sum(count.TblogOldLabels)

count.TblogNewLabelsNonRel <- apply(blogTNewLabels, 2, function(x) length(which(x=="not relevant")))
count.TblogNewLabelsNonRel
sum(count.TblogNewLabelsNonRel)

count.TblogOldLabelsNonRel <- apply(blogTOldLabels, 2, function(x) length(which(x=="not relevant")))
count.TblogOldLabelsNonRel
sum(count.TblogOldLabelsNonRel)

count.TblogHotMapLabels <- apply(blogTHotMapLabels, 2, function(x) length(which(x=="On")))
count.TblogHotMapLabels
sum(count.TblogHotMapLabels)

count.TblogHotMapLabelsOff <- apply(blogTHotMapLabels, 2, function(x) length(which(x=="Off")))
count.TblogHotMapLabelsOff
sum(count.TblogHotMapLabelsOff)

count.TblogHotMapNonLabels <- apply(blogTHotMapNonLabels, 2, function(x) length(which(x=="On")))
count.TblogHotMapNonLabels
sum(count.TblogHotMapNonLabels)

count.TblogLabels <- apply(blogTLabels, 2, function(x) length(which(x=="relevant")))
count.TblogLabels
sum(count.TblogLabels)

count.TblogLabelsNonRel <- apply(blogTLabels, 2, function(x) length(which(x=="not relevant")))
count.TblogLabelsNonRel
sum(count.TblogLabelsNonRel)

# control

count.CblogHotMapLabels <- apply(blogCHotMapLabels, 2, function(x) length(which(x=="On")))
count.CblogHotMapLabels
sum(count.CblogHotMapLabels)

count.CblogHotMapLabelsOff <- apply(blogCHotMapLabels, 2, function(x) length(which(x=="Off")))
count.CblogHotMapLabelsOff
sum(count.CblogHotMapLabelsOff)


count.CblogHotMapNonLabels <- apply(blogCHotMapNonLabels, 2, function(x) length(which(x=="On")))
count.CblogHotMapNonLabels
sum(count.CblogHotMapNonLabels)

count.CblogLabels <- apply(blogCLabels, 2, function(x) length(which(x=="relevant")))
count.CblogLabels
sum(count.CblogLabels)

count.CblogLabelsNonRel <- apply(blogCLabels, 2, function(x) length(which(x=="not relevant")))
count.CblogLabelsNonRel
sum(count.CblogLabelsNonRel)

# treatment 3 labels selected 16 other regions selected
# control 3 labels selected 9 other regions selected
#hot_map_BLOG <- matrix(c(3, 3, 16, 9), nrow = 2)

# or
# treatment ex:3 labels selected 9 off or 3 from 12 possible
# control ex:3 labels selected 13 off or 3 from 16 possible

#hot_map_blog_alt <- matrix(c(3/12, 3/16, 9/12, 13/16), nrow = 2)

hot_map_blog_alt <- matrix(c(sum(count.TblogHotMapLabels), sum(count.CblogHotMapLabels), sum(count.TblogHotMapLabelsOff), sum(count.CblogHotMapLabelsOff)), nrow = 2)

rownames(hot_map_blog_alt) <- c("Treatment", "control")
colnames(hot_map_blog_alt) <- c("yes-label", "no-label")

#hot_map_BLOG

#chisq.test(hot_map_BLOG)

#fisher.test(hot_map_BLOG)

#oddsratio.wald(hot_map_BLOG)

hot_map_blog_alt

chisq.test(hot_map_blog_alt)

fisher.test(hot_map_blog_alt)

oddsratio.wald(hot_map_blog_alt)

#total new labels considered relevant ex: 21 on from 32 possible only treatment
#total old labels considered relevant ex: 40 on from 60 possible only treatment

#relevant_labels_BLOG <- matrix(c(21/32, 40/60, 11/32, 20/60), nrow = 2)

#relevant_labels_BLOG <- matrix(c(sum(count.TblogNewLabels), sum(count.TblogNewLabelsNonRel), sum(count.TblogOldLabels), sum(count.TblogOldLabelsNonRel)), nrow = 2)
relevant_labels_BLOG <- matrix(c(sum(count.TblogNewLabels),  sum(count.TblogOldLabels), sum(count.TblogNewLabelsNonRel), sum(count.TblogOldLabelsNonRel)), nrow = 2)
#relevant_labels_BLOG <- matrix(c(sum(count.TblogNewLabels),  sum(count.CblogLabels), sum(count.TblogNewLabelsNonRel), sum(count.CblogLabelsNonRel)), nrow = 2)

rownames(relevant_labels_BLOG) <- c("new Labels", "old Labels")
colnames(relevant_labels_BLOG) <- c("yes-relevant", "no-relevant")

relevant_labels_BLOG

chisq.test(relevant_labels_BLOG)

cramerV <- function(data) {
  tempchi <- chisq.test(data);
  chi2 <- unname(tempchi$statistic["X-squared"]);
  pvalue <- unname(tempchi$p.value);
  cv <- sqrt(chi2 / sum(data) / (min(length(data), nrow(data))-1));
  c(effsize = cv, p.value = pvalue, chi2 = chi2); 
}

cramerV(relevant_labels_Affinity_non)


fisher.test(relevant_labels_BLOG)

oddsratio.wald(relevant_labels_BLOG)

# by hand ex:
#treat <- 21/11
#treat
#control <-40/20
#control

#odd <- treat/control
#odd

treat <- sum(count.TblogNewLabels)/sum(count.TblogNewLabelsNonRel)
treat
control <-sum(count.TblogOldLabels)/sum(count.TblogOldLabelsNonRel)
control

odd <- treat/control
odd

# total labels considered relevant and non relevant treatment
# total labels considered relevant and non relevant control

#relevant_labels_blog_alt <- matrix(c(240/438, 52/112, 198/438, 60/112), nrow = 2)

#relevant_labels_blog_alt <- matrix(c(sum(count.TblogNewLabels)+sum(count.TblogOldLabels), sum(count.CblogLabels), sum(count.TblogNewLabelsNonRel)+sum(count.TblogOldLabelsNonRel), sum(count.CblogLabelsNonRel)), nrow = 2)
relevant_labels_blog_alt <- matrix(c(sum(count.TblogLabels), sum(count.CblogLabels), sum(count.TblogLabelsNonRel), sum(count.CblogLabelsNonRel)), nrow = 2)

rownames(relevant_labels_blog_alt) <- c("Labels Treatment", "Labels control")
colnames(relevant_labels_blog_alt) <- c("yes-relevant", "no-relevant")

relevant_labels_blog_alt

chisq.test(relevant_labels_blog_alt)

cramerV <- function(data) {
  tempchi <- chisq.test(data);
  chi2 <- unname(tempchi$statistic["X-squared"]);
  pvalue <- unname(tempchi$p.value);
  cv <- sqrt(chi2 / sum(data) / (min(length(data), nrow(data))-1));
  c(effsize = cv, p.value = pvalue, chi2 = chi2); 
}

cramerV(relevant_labels_blog_alt)

fisher.test(relevant_labels_blog_alt)

oddsratio.wald(relevant_labels_blog_alt)

#treat_alt <- 240/198
#treat_alt
#control_alt <-52/60
#control_alt

#odd_alt <- treat_alt/control_alt
#odd_alt

treat <- (sum(count.TblogNewLabels)+sum(count.TblogOldLabels)) / (sum(count.TblogNewLabelsNonRel)+sum(count.TblogOldLabelsNonRel))
treat
control <-sum(count.CblogLabels)/sum(count.CblogLabelsNonRel)
control

odd <- treat/control
odd
