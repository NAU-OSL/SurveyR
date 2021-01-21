# Odds Ratio industry x Students

# Prepare DF

industryAllLabels <- industryAll[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os",	"groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
#industryAllNewLabels <- industryAll[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os"	)]
industryAllNewLabels <- industryTreat[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os"	)]
industryAllOldLabels <- industryAll[c("X","groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
industryAllHotMapLabels <- industryAll[c("X","Q50_4","Q50_8","Q50_9","Q50_12")]
industryAllHotMapNonLabels <- industryAll[c("X","Q50_1","Q50_2","Q50_3","Q50_5","Q50_6","Q50_7","Q50_10","Q50_11")]

industryOldLabelsComp <- industryAll[c("X","groups",	"external.files",	"maintable",	"fetcher",	"entry.editor",	"preferences",	"import",	"keywords")]
industryOldLabelsType <- industryAll[c("X",	"type..bug",	"type..performance",	"good.first.issue",		"type..code.quality",	"type..enhancement",	"project.GSoC",	"type..feature")]

studentsAllLabels <- studentsAll[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os",	"groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
#studentsAllNewLabels <- studentsAll[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os"	)]
studentsAllNewLabels <- studentsTreat[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os"	)]
studentsAllOldLabels <- studentsAll[c("X","groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
studentsAllHotMapLabels <- studentsAll[c("X","Q50_4","Q50_8","Q50_9","Q50_12")]
studentsAllHotMapNonLabels <- studentsAll[c("X","Q50_1","Q50_2","Q50_3","Q50_5","Q50_6","Q50_7","Q50_10","Q50_11")]

studentsOldLabelsComp <- studentsAll[c("X","groups",	"external.files",	"maintable",	"fetcher",	"entry.editor",	"preferences",	"import",	"keywords")]
studentsOldLabelsType <- studentsAll[c("X",	"type..bug",	"type..performance",	"good.first.issue",		"type..code.quality",	"type..enhancement",	"project.GSoC",	"type..feature")]

# Indus

# Gambi ---------

industryOldLabelsTypePart <- industryOldLabelsType
industryOldLabelsType <- industryOldLabelsType[,-1]
count.IndusOldLabelsType <- apply(industryOldLabelsType, 2, function(x) length(which(x=="relevant")))
count.IndusOldLabelsType
sum(count.IndusOldLabelsType)

industryOldLabelsCompPart <- industryOldLabelsComp
industryOldLabelsComp <- industryOldLabelsComp[,-1]
count.IndusOldLabelsComp <- apply(industryOldLabelsComp, 2, function(x) length(which(x=="relevant")))
count.IndusOldLabelsComp
sum(count.IndusOldLabelsComp)

studentsOldLabelsTypePart <- studentsOldLabelsType
studentsOldLabelsType <- studentsOldLabelsType[,-1]
count.StudOldLabelsType <- apply(studentsOldLabelsType, 2, function(x) length(which(x=="relevant")))
count.StudOldLabelsType
sum(count.StudOldLabelsType)

studentsOldLabelsCompPart <- studentsOldLabelsComp
studentsOldLabelsComp <- studentsOldLabelsComp[,-1]
count.StudOldLabelsComp <- apply(studentsOldLabelsComp, 2, function(x) length(which(x=="relevant")))
count.StudOldLabelsComp
sum(count.StudOldLabelsComp)

# -------------- participants
#-- Type
#allOldLabelsTCompPart <- allOldLabelsTComp

count.industryOldLabelsTypePart <- apply(industryOldLabelsTypePart, 1, function(x) length(which(x=="relevant")))

industryOldLabelsTypePart$tot <- count.industryOldLabelsTypePart

industryOldLabelsTypePartViolin <- industryOldLabelsTypePart[c("X","tot")]

industryOldLabelsTypePartViolin$X <- "Type"

# - Comp
#allOldLabelsTTypePart <- allOldLabelsTType

count.industryOldLabelsCompPart <- apply(industryOldLabelsCompPart, 1, function(x) length(which(x=="relevant")))

industryOldLabelsCompPart$tot <- count.industryOldLabelsCompPart

industryOldLabelsCompPartViolin <- industryOldLabelsCompPart[c("X","tot")]

industryOldLabelsCompPartViolin$X <- "Comp"

# - API
industryAllNewLabelsPart <- industryAllNewLabels

count.industryAllNewLabelsPart <- apply(industryAllNewLabelsPart, 1, function(x) length(which(x=="relevant")))

industryAllNewLabelsPart$tot <- count.industryAllNewLabelsPart

industryAllNewLabelsPartViolin <- industryAllNewLabelsPart[c("X","tot")]

industryAllNewLabelsPartViolin$X <- "API"

#new labels relevant

industryAllNewLabelsPart <- industryAllNewLabels
industryAllNewLabels <- industryAllNewLabels[,-1]
count.IndusNewLabels <- apply(industryAllNewLabels, 2, function(x) length(which(x=="relevant")))
count.IndusNewLabels
sum(count.IndusNewLabels)

#old labels relevant
industryAllOldLabels <- industryAllOldLabels[,-1]
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
studentsAllNewLabels <- studentsAllNewLabels[,-1]
count.StudNewLabels <- apply(studentsAllNewLabels, 2, function(x) length(which(x=="relevant")))
count.StudNewLabels
sum(count.StudNewLabels)

#old labels relevant
studentsAllOldLabels <- studentsAllOldLabels[,-1]
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
# ----------  - New x Old - I x S - APi x Comp

relevant_labels_IndStu_apiComp_new_old <- matrix(c(sum(count.IndusNewLabels), sum(count.StudNewLabels), sum(count.IndusOldLabelsComp), sum(count.StudOldLabelsComp)), nrow = 2)

rownames(relevant_labels_IndStu_apiComp_new_old) <- c("Indus", "Stu")
colnames(relevant_labels_IndStu_apiComp_new_old) <- c("new Labels ", "Comp Labels")

relevant_labels_IndStu_apiComp_new_old

chisq.test(relevant_labels_IndStu_apiComp_new_old)

cramerV <- function(data) {
  tempchi <- chisq.test(data);
  chi2 <- unname(tempchi$statistic["X-squared"]);
  pvalue <- unname(tempchi$p.value);
  cv <- sqrt(chi2 / sum(data) / (min(length(data), nrow(data))-1));
  c(effsize = cv, p.value = pvalue, chi2 = chi2); 
}

cramerV(relevant_labels_IndStu_apiComp_new_old)

fisher.test(relevant_labels_IndStu_apiComp_new_old)

oddsratio.wald(relevant_labels_IndStu_apiComp_new_old)

# ---------- - New x Old - I x S - APi x Type

relevant_labels_IndStu_apiType_new_old <- matrix(c(sum(count.IndusNewLabels), sum(count.StudNewLabels), sum(count.IndusOldLabelsType), sum(count.StudOldLabelsType)), nrow = 2)

rownames(relevant_labels_IndStu_apiType_new_old) <- c("Indus", "Stu")
colnames(relevant_labels_IndStu_apiType_new_old) <- c("new Labels ", "Type Labels")

relevant_labels_IndStu_apiType_new_old

chisq.test(relevant_labels_IndStu_apiType_new_old)

cramerV <- function(data) {
  tempchi <- chisq.test(data);
  chi2 <- unname(tempchi$statistic["X-squared"]);
  pvalue <- unname(tempchi$p.value);
  cv <- sqrt(chi2 / sum(data) / (min(length(data), nrow(data))-1));
  c(effsize = cv, p.value = pvalue, chi2 = chi2); 
}

cramerV(relevant_labels_IndStu_apiType_new_old)

fisher.test(relevant_labels_IndStu_apiType_new_old)

oddsratio.wald(relevant_labels_IndStu_apiType_new_old)


# ---------- T x T - New x Old - I x S

relevant_labels_IndStu_non_new_old <- matrix(c(sum(count.IndusNewLabels), sum(count.StudNewLabels), sum(count.IndusOldLabels), sum(count.StudOldLabels)), nrow = 2)

rownames(relevant_labels_IndStu_non_new_old) <- c("Indus", "Stu")
colnames(relevant_labels_IndStu_non_new_old) <- c("new Labels ", "old Labels")

relevant_labels_IndStu_non_new_old

chisq.test(relevant_labels_IndStu_non_new_old)

cramerV <- function(data) {
  tempchi <- chisq.test(data);
  chi2 <- unname(tempchi$statistic["X-squared"]);
  pvalue <- unname(tempchi$p.value);
  cv <- sqrt(chi2 / sum(data) / (min(length(data), nrow(data))-1));
  c(effsize = cv, p.value = pvalue, chi2 = chi2); 
}

cramerV(relevant_labels_IndStu_non_new_old)

fisher.test(relevant_labels_IndStu_non_new_old)

oddsratio.wald(relevant_labels_IndStu_non_new_old)

#--------- Gambi
nNew<-8
nOld<-13

datalabelISNewOldSumGambi <- data.frame(
  #region=c("Author","Body","Code","Comments","Particip","Linked",   "Labels",     "Titles"),
  #total=c(16,54,41,25,4,6,52,66),  #c(16,54,41,25,4,6,52,66)
  #labels=c("ui",	"io",	"gc",	"db",	"network",	"logging",	"test",	"os"),
  #labels=c("New",	"Old","New",	"Old"),
  
  (sum(count.IndusNewLabels/ti/nNew)+sum(count.StudNewLabels/ts/nNew))/2,
  (sum(count.IndusOldLabelsType/ti/nOld)+sum(count.StudOldLabelsType/ts/nOld))/2,
  
  count.all= sum(count.StudNewLabels/ts/nNew)+sum(count.IndusNewLabels/ti/nNew)+sum(count.StudOldLabelsType/ts/nOld)+sum(count.IndusOldLabelsType/ti/nOld)
  #count1=count.1t+count.1c,
  #count2=count.2t+count.2c,
  #count3=count.3t+count.3c
  #top3=c(6,19,19,12,2,1,24,27)
)
datalabelISNewOldSumGambi
df <- datalabelISNewOldSumGambi[order(datalabelISNewOldSumGambi$count.all,decreasing = TRUE),]
df
#,6,19,19,12,2,1,24,27
#names.arg=c("Title","Author","Body","Side Label","Code Snippet","Comments","Participants","New Label 1", "New Label 1","linked",  "tileListPage", "labelListPage",     "sumLabels",     "sumTitles"),
par(mfrow=c(1,1))
pdf(file="./figures/newOldLabelsIndStu.pdf")
barplot(height=df$count.all, names=df$labels, main="Issues ",  horiz=TRUE,)
#hist(count.1t, col="violet")
dev.off()

par(mfrow=c(1,1))
#mx <- t(as.matrix(data[-1]))
#mx <- t(as.matrix(df[-c(1,5)]))
mx <- t(as.matrix(df[-3]))

mx
#colnames(mx) <- df$labels
colours = c("green","yellow")
# note the use of ylim to give 30% space for the legend
#barplot(mx,main='New Labels counts Industry x Students Normalized',ylab='Counts', xlab='Labels',beside = TRUE, 
barplot(mx,main='API x Project Without Bug/Feature',ylab='Counts', xlab='Labels',beside = TRUE, 
        col=colours, ylim=c(0,max(mx)*1.1), names=c("API",	"Project"), las=2)
# to add a box around the plot
box()

# add a legend
legend('topleft',fill=colours,legend=c('API','Project'))


# ---- Ind x Stu
#-
par(mfrow=c(3,1))
ti <- nrow(industryTreat)
ts <- nrow(studentsTreat)
nNew<-8
nOld<-15
#treatAllLabels <- treatAllLabels[,-1]
datalabelISNewOld <- data.frame(
  #region=c("Author","Body","Code","Comments","Particip","Linked",   "Labels",     "Titles"),
  #total=c(16,54,41,25,4,6,52,66),  #c(16,54,41,25,4,6,52,66)
  #labels=c("ui",	"io",	"gc",	"db",	"network",	"logging",	"test",	"os"),
  #labels=c("New",	"Old","New",	"Old"),
  
  sum(count.IndusNewLabels/ti/nNew),
  sum(count.IndusOldLabels/ti/nOld),
  sum(count.StudNewLabels/ts/nNew),
  sum(count.StudOldLabels/ts/nOld),
  count.all= sum(count.StudNewLabels/ts/nNew)+sum(count.IndusNewLabels/ti/nNew)+sum(count.StudOldLabels/ts/nOld)+sum(count.IndusOldLabels/ti/nOld)
  #count1=count.1t+count.1c,
  #count2=count.2t+count.2c,
  #count3=count.3t+count.3c
  #top3=c(6,19,19,12,2,1,24,27)
)
datalabelISNewOld
df <- datalabelISNewOld[order(datalabelISNewOld$count.all,decreasing = TRUE),]
df
#,6,19,19,12,2,1,24,27
#names.arg=c("Title","Author","Body","Side Label","Code Snippet","Comments","Participants","New Label 1", "New Label 1","linked",  "tileListPage", "labelListPage",     "sumLabels",     "sumTitles"),
par(mfrow=c(1,1))
pdf(file="./figures/newOldLabelsIndStu.pdf")
barplot(height=df$count.all, names=df$labels, main="Issues ",  horiz=TRUE,)
#hist(count.1t, col="violet")
dev.off()

par(mfrow=c(1,1))
#mx <- t(as.matrix(data[-1]))
#mx <- t(as.matrix(df[-c(1,5)]))
mx <- t(as.matrix(df[-5]))

mx
#colnames(mx) <- df$labels
colours = c("gray","gray","orange","orange")
# note the use of ylim to give 30% space for the legend
#barplot(mx,main='New Labels counts Industry x Students Normalized',ylab='Counts', xlab='Labels',beside = TRUE, 
barplot(mx,main='Industry x Students',ylab='Counts', xlab='Labels',beside = TRUE, 
        col=colours, ylim=c(0,max(mx)*1.1), names=c("New",	"Old","New",	"Old"), las=2)
# to add a box around the plot
box()

# add a legend
legend('topleft',fill=colours,legend=c('Industry New','Industry Old','Students New','Students Old'))

#------------------

datalabelISNewOldSum <- data.frame(
  #region=c("Author","Body","Code","Comments","Particip","Linked",   "Labels",     "Titles"),
  #total=c(16,54,41,25,4,6,52,66),  #c(16,54,41,25,4,6,52,66)
  #labels=c("ui",	"io",	"gc",	"db",	"network",	"logging",	"test",	"os"),
  #labels=c("New",	"Old","New",	"Old"),
  
(sum(count.IndusNewLabels/ti/nNew)+sum(count.StudNewLabels/ts/nNew))/2,
  (sum(count.IndusOldLabels/ti/nOld)+sum(count.StudOldLabels/ts/nOld))/2,
  
  count.all= sum(count.StudNewLabels/ts/nNew)+sum(count.IndusNewLabels/ti/nNew)+sum(count.StudOldLabels/ts/nOld)+sum(count.IndusOldLabels/ti/nOld)
  #count1=count.1t+count.1c,
  #count2=count.2t+count.2c,
  #count3=count.3t+count.3c
  #top3=c(6,19,19,12,2,1,24,27)
)
datalabelISNewOldSum
df <- datalabelISNewOldSum[order(datalabelISNewOldSum$count.all,decreasing = TRUE),]
df
#,6,19,19,12,2,1,24,27
#names.arg=c("Title","Author","Body","Side Label","Code Snippet","Comments","Participants","New Label 1", "New Label 1","linked",  "tileListPage", "labelListPage",     "sumLabels",     "sumTitles"),
par(mfrow=c(1,1))
pdf(file="./figures/newOldLabelsIndStu.pdf")
barplot(height=df$count.all, names=df$labels, main="Issues ",  horiz=TRUE,)
#hist(count.1t, col="violet")
dev.off()

par(mfrow=c(1,1))
#mx <- t(as.matrix(data[-1]))
#mx <- t(as.matrix(df[-c(1,5)]))
mx <- t(as.matrix(df[-3]))

mx
#colnames(mx) <- df$labels
colours = c("green","yellow")
# note the use of ylim to give 30% space for the legend
#barplot(mx,main='New Labels counts Industry x Students Normalized',ylab='Counts', xlab='Labels',beside = TRUE, 
barplot(mx,main='API x Project',ylab='Counts', xlab='Labels',beside = TRUE, 
        col=colours, ylim=c(0,max(mx)*1.1), names=c("API",	"Project"), las=2)
# to add a box around the plot
box()

# add a legend
legend('topleft',fill=colours,legend=c('API','Project'))

#------------------
# ---- Ind x Stu
#-
par(mfrow=c(2,1))
ti <- nrow(industryTreat)
ts <- nrow(studentsTreat)
nNew<-8
nOld<-15
#treatAllLabels <- treatAllLabels[,-1]
datalabelISN <- data.frame(
  #region=c("Author","Body","Code","Comments","Particip","Linked",   "Labels",     "Titles"),
  #total=c(16,54,41,25,4,6,52,66),  #c(16,54,41,25,4,6,52,66)
  labels=c("ui",	"io",	"gc",	"db",	"network",	"logging",	"test",	"os"),
  
  count.IndusNewLabels/ti/nNew,
  count.StudNewLabels/ts/nNew,
 
  count.all= count.StudNewLabels/ts/nNew+count.IndusNewLabels/ti/nNew
  
  #count1=count.1t+count.1c,
  #count2=count.2t+count.2c,
  #count3=count.3t+count.3c
  #top3=c(6,19,19,12,2,1,24,27)
)
datalabelISN
df <- datalabelISN[order(datalabelISN$count.all,decreasing = TRUE),]
df
#,6,19,19,12,2,1,24,27
#names.arg=c("Title","Author","Body","Side Label","Code Snippet","Comments","Participants","New Label 1", "New Label 1","linked",  "tileListPage", "labelListPage",     "sumLabels",     "sumTitles"),
par(mfrow=c(1,1))
pdf(file="./figures/newLabelsIndStu.pdf")
barplot(height=df$count.all, names=df$labels, main="Issues ",  horiz=TRUE,)
#hist(count.1t, col="violet")
dev.off()

par(mfrow=c(1,1))
#mx <- t(as.matrix(data[-1]))
mx <- t(as.matrix(df[-c(1,4)]))
mx
colnames(mx) <- df$labels
colours = c("gray","orange")
# note the use of ylim to give 30% space for the legend
#barplot(mx,main='New Labels counts Industry x Students Normalized',ylab='Counts', xlab='Labels',beside = TRUE, 
barplot(mx,main='New Labels Industry x Students',ylab='Counts', beside = TRUE, 
        col=colours, ylim=c(0,max(mx)*1.1),  las=2)
# to add a box around the plot
box()

# add a legend
legend('topright',fill=colours,legend=c('Industry','Students'))

#------------------

datalabelISO <- data.frame(
  #region=c("Author","Body","Code","Comments","Particip","Linked",   "Labels",     "Titles"),
  #total=c(16,54,41,25,4,6,52,66),  #c(16,54,41,25,4,6,52,66)
  labels=c("groups",	"e.files",	"maintable",	"t.bug",	"t.perform",	"g.1.issue",	"fetcher",	"e.editor",	"pref",	"t.quality",	"t.enhanc",	"import",	"GSoC",	"tfeature",	"keywords"),
  
  count.IndusOldLabels/ti/nOld,
  count.StudOldLabels/ts/nOld,
  
  count.all= count.StudOldLabels/ts/nOld+count.IndusOldLabels/ti/nOld
  
  #count1=count.1t+count.1c,
  #count2=count.2t+count.2c,
  #count3=count.3t+count.3c
  #top3=c(6,19,19,12,2,1,24,27)
)
datalabelISO
df <- datalabelISO[order(datalabelISO$count.all,decreasing = TRUE),]
df
#,6,19,19,12,2,1,24,27
#names.arg=c("Title","Author","Body","Side Label","Code Snippet","Comments","Participants","New Label 1", "New Label 1","linked",  "tileListPage", "labelListPage",     "sumLabels",     "sumTitles"),
par(mfrow=c(1,1))
pdf(file="./figures/newLabelsIndStu.pdf")
barplot(height=df$count.all, names=df$labels, main="Issues ",  horiz=TRUE,)
#hist(count.1t, col="violet")
dev.off()

par(mfrow=c(1,1))
#mx <- t(as.matrix(data[-1]))
mx <- t(as.matrix(df[-c(1,4)]))
mx
colnames(mx) <- df$labels
colours = c("gray","orange")
# note the use of ylim to give 30% space for the legend
#barplot(mx,main='New Labels counts Industry x Students Normalized',ylab='Counts', xlab='Labels',beside = TRUE, 
barplot(mx,main='Old Labels Industry x Students',ylab='Counts', beside = TRUE, 
        col=colours, ylim=c(0,max(mx)*1.1),  las=2)
# to add a box around the plot
box()

# add a legend
legend('topright',fill=colours,legend=c('Industry','Students'))
# -----------------
relevant_labels_Indus_Stud <- matrix(c(sum(count.IndusNewLabels), sum(count.StudNewLabels), sum(count.IndusNewLabelsNonRel), sum(count.StudNewLabelsNonRel)), nrow = 2)

rownames(relevant_labels_Indus_Stud) <- c("new Labels Indus", "new Labels Stud")
colnames(relevant_labels_Indus_Stud) <- c("yes-relevant", "no-relevant")

relevant_labels_Indus_Stud

chisq.test(relevant_labels_Indus_Stud)

cramerV <- function(data) {
  tempchi <- chisq.test(data);
  chi2 <- unname(tempchi$statistic["X-squared"]);
  pvalue <- unname(tempchi$p.value);
  cv <- sqrt(chi2 / sum(data) / (min(length(data), nrow(data))-1));
  c(effsize = cv, p.value = pvalue, chi2 = chi2); 
}

cramerV(relevant_labels_Indus_Stud)

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

cramerV <- function(data) {
  tempchi <- chisq.test(data);
  chi2 <- unname(tempchi$statistic["X-squared"]);
  pvalue <- unname(tempchi$p.value);
  cv <- sqrt(chi2 / sum(data) / (min(length(data), nrow(data))-1));
  c(effsize = cv, p.value = pvalue, chi2 = chi2); 
}

cramerV(relevant_labels_Indus_Stud_alt)


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

# Only treatment indus x Stu
#relevant_labels_Indus_Stud_alt <- matrix(c(240/438, 52/112, 198/438, 60/112), nrow = 2)

relevant_labels_Indus_Stud_Talt <- matrix(c(sum(count.IndusLabelsT), sum(count.studLabelsT), sum(count.IndusLabelsTNonRel), sum(count.studLabelsTNonRel)), nrow = 2)

rownames(relevant_labels_Indus_Stud_Talt) <- c("All Labels Indus Treat", "All Labels Stud Treat")
colnames(relevant_labels_Indus_Stud_Talt) <- c("yes-relevant", "no-relevant")

relevant_labels_Indus_Stud_Talt 

chisq.test(relevant_labels_Indus_Stud_Talt)

fisher.test(relevant_labels_Indus_Stud_Talt)

oddsratio.wald(relevant_labels_Indus_Stud_Talt)

#treat_alt <- 240/198
#treat_alt
#control_alt <-52/60
#control_alt

#odd_alt <- treat_alt/control_alt
#odd_alt

treat <- sum(count.IndusLabelsT) / sum(count.IndusLabelsTNonRel)
treat
control <-sum(count.studLabelsT)/sum(count.studLabelsTNonRel)
control

odd <- treat/control
odd

# ---- Ind x Stu
#-
par(mfrow=c(2,2))
ti <- nrow(industryTreat)
ts <- nrow(studentsTreat)
#treatAllLabels <- treatAllLabels[,-1]
datalabelIS <- data.frame(
  #region=c("Author","Body","Code","Comments","Particip","Linked",   "Labels",     "Titles"),
  #total=c(16,54,41,25,4,6,52,66),  #c(16,54,41,25,4,6,52,66)
  labels=c("ui",	"io",	"gc",	"db",	"network",	"logging",	"test",	"os"),
  
  count.IndusNewLabels/ti,
  count.StudNewLabels/ts,
  count.all= count.StudNewLabels/ts+count.IndusNewLabels/ti
  #count1=count.1t+count.1c,
  #count2=count.2t+count.2c,
  #count3=count.3t+count.3c
  #top3=c(6,19,19,12,2,1,24,27)
)
datalabelIS
df <- datalabelIS[order(datalabelIS$count.all,decreasing = TRUE),]
df
#,6,19,19,12,2,1,24,27
#names.arg=c("Title","Author","Body","Side Label","Code Snippet","Comments","Participants","New Label 1", "New Label 1","linked",  "tileListPage", "labelListPage",     "sumLabels",     "sumTitles"),
par(mfrow=c(1,1))
pdf(file="./figures/newLabelsIndStu.pdf")
barplot(height=df$count.all, names=df$labels, main="Issues ",  horiz=TRUE,)
#hist(count.1t, col="violet")
dev.off()

par(mfrow=c(1,1))
#mx <- t(as.matrix(data[-1]))
mx <- t(as.matrix(df[-c(1,4)]))
mx
colnames(mx) <- df$labels
colours = c("gray","orange")
# note the use of ylim to give 30% space for the legend
#barplot(mx,main='New Labels counts Industry x Students Normalized',ylab='Counts', xlab='Labels',beside = TRUE, 
barplot(mx,main='Industry x Students',ylab='Counts', xlab='Labels',beside = TRUE, 
                col=colours, ylim=c(0,max(mx)*1.1))
# to add a box around the plot
box()

# add a legend
legend('topright',fill=colours,legend=c('Industry','Students'))

par(mfrow=c(2,2))
