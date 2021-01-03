# treatment

treatAllLabels <- treatAll[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os",	"groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]

#ui	io	google.commom	database	network	logging	test	os	groups	external.files	maintable	type..bug	type..performance	good.first.issue	fetcher	entry.editor	preferences	type..code.quality	type..enhancement	import	project.GSoC	type..feature	keywords
colnames(treatAllLabels) <- c("P","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os",	"groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")

treatAllLabelsPartCol <- treatAllLabels[,1] 
treatAllLabels <- treatAllLabels[,-1]

count.tl <- apply(treatAllLabels, 2, function(x) length(which(x=="relevant")))
count.tl

# control

controlAllLabels <- controlAll[c("X","groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]

#Q50_1	Q50_2	Q50_3	Q50_4	Q50_5	Q50_6	Q50_7	Q50_8	Q50_9	Q50_10	Q50_11	Q50_12
colnames(controlAllLabels) <- c("P","groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")

controlAllLabelsPartCol <- controlAllLabels[,1] 
controlAllLabels <- controlAllLabels[,-1]

count.cl <- apply(controlAllLabels, 2, function(x) length(which(x=="relevant")))
count.cl

# All

AllLabels <- all[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os",	"groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]

AllLabelsPartCol <- AllLabels[,1] 
AllLabels <- AllLabels[,-1]

count.al <- apply(AllLabels, 2, function(x) length(which(x=="relevant")))
count.al

# ControlAux (control with the new lalebs with 0 = zeros)

AuxLabels <- controlAux[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os",	"groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]

AuxLabelsPartCol <- AuxLabels[,1] 
AuxLabels <- AuxLabels[,-1]

count.aul <- apply(AuxLabels, 2, function(x) length(which(x=="relevant")))
count.aul
# labels x issues

#treatment

treatAllIssuesLabels <- treatAll[c("X","Q39_1","Q39_2","Q39_3","Q39_4","Q39_5","Q39_6","Q39_7","Q39_8","Q39_9","Q39_10","Q39_11","Q39_12","Q39_13","Q39_14","Q39_15","Q39_16","Q39_17","Q39_18","Q39_19","Q39_20","Q39_21","Q39_22","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os",	"groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]


colnames(treatAllIssuesLabels) <- c("P","i5679","i5653","i4430","i5532","i5486","i5022","i5254","i4612","i5194","i4629","i4816","i4977","i5002","i4913","i4864","i4306","i4360","i4233","i3994","i628","i2319","i2370","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os",	"groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")
#typeof(treatAllIssuesLabels["i3994"])
typeof(treatAllIssuesLabels$i3994)
# top 3 treatent issues: see issuesInvestigation.R

treatAllIssuesLabelsTop3 <- treatAllIssuesLabels %>% filter(i3994 %in% c("1","2", "3") | i4977 %in% c(1,2, 3) | i4233 %in% c(1,2, 3))

treatAllLabelsTop3 <- treatAllIssuesLabelsTop3[c("ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os",	"groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]

count.tltop3 <- apply(treatAllLabelsTop3, 2, function(x) length(which(x=="relevant")))
count.tltop3

count.tltop3notRel <- apply(treatAllLabelsTop3, 2, function(x) length(which(x=="not relevant")))
count.tltop3notRel

# control

controlAllIssuesLabels <- controlAll[c("X","Q39_1","Q39_2","Q39_3","Q39_4","Q39_5","Q39_6","Q39_7","Q39_8","Q39_9","Q39_10","Q39_11","Q39_12","Q39_13","Q39_14","Q39_15","Q39_16","Q39_17","Q39_18","Q39_19","Q39_20","Q39_21","Q39_22","groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]

colnames(controlAllIssuesLabels) <- c("P","i5679","i5653","i4430","i5532","i5486","i5022","i5254","i4612","i5194","i4629","i4816","i4977","i5002","i4913","i4864","i4306","i4360","i4233","i3994","i628","i2319","i2370","groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")
#typeof(treatAllIssuesLabels["i3994"])
typeof(controlAllIssuesLabels$i3994)
# top 3 treatent issues: see issuesInvestigation.R

controlAllIssuesLabelsTop3 <- controlAllIssuesLabels %>% filter(i3994 %in% c("1","2", "3") | i4977 %in% c(1,2, 3) | i4306 %in% c(1,2, 3))

controlAllLabelsTop3 <- controlAllIssuesLabelsTop3[c("groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]

count.cltop3 <- apply(controlAllLabelsTop3, 2, function(x) length(which(x=="relevant")))
count.cltop3

count.cltop3notRel <- apply(controlAllLabelsTop3, 2, function(x) length(which(x=="not relevant")))
count.cltop3notRel

# odds ratio

relevant_labels_LabelsTop3<- matrix(c(sum(count.tltop3), sum(count.cltop3), sum(count.tltop3notRel), sum(count.cltop3notRel)), nrow = 2)

rownames(relevant_labels_LabelsTop3) <- c("Treat All Labels", "control All Labels")
colnames(relevant_labels_LabelsTop3) <- c("relevant", "not relevant")

relevant_labels_LabelsTop3

chisq.test(relevant_labels_LabelsTop3)

fisher.test(relevant_labels_LabelsTop3)

oddsratio.wald(relevant_labels_LabelsTop3)

# by hand ex:
#treat <- 21/11
#treat
#control <-40/20
#control

#odd <- treat/control
#odd

treat <- sum(count.tltop3)/sum(count.tltop3notRel)
treat
control <-sum(count.cltop3)/sum(count.cltop3notRel)
control

odd <- treat/control
odd
#-------------------------
# Labels Treatment and Control
#-------------------------

par(mfrow=c(2,2))    # set the plotting area into a 2*2 array
#par(mfrow=c(1,1))
par(cex=0.4, mai=c(0.5,0.5,0.5,0.5))
par(las=2)

#par(cex=0.4)
barplot(count.tl, main="labels treatment", horiz=TRUE,)
pie(count.tl, main="labels treatment", radius=1)

hist(count.tl, col="violet")
boxplot(count.tl, horizontal=TRUE)


# control

par(mfrow=c(2,2))    # set the plotting area into a 2*2 array
#par(mfrow=c(1,1))
par(cex=0.4, mai=c(0.5,0.5,0.5,0.5))
par(las=2)

#par(cex=0.4)
barplot(count.cl, main="labels control", horiz=TRUE,)
pie(count.cl, main="labels control", radius=1)

hist(count.cl, col="violet")
boxplot(count.cl, horizontal=TRUE)

#-------------
# grids
#--------------
par(mfrow=c(1,1))
df1tl <- data.frame(x = count.tl, y = c("ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os",	"groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords"))
ggplot(df1tl, aes(x, y)) +
  geom_point()+
  labs(x = "labels treatment", y = "issues")

par(mfrow=c(1,1))
df1cl <- data.frame(x = count.cl, y = c("groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords"))
ggplot(df1cl, aes(x, y)) +
  geom_point()+
  labs(x = "labels control", y = "issues")

#------------ Treatment
datalabelT <- data.frame(
  #region=c("Author","Body","Code","Comments","Particip","Linked",   "Labels",     "Titles"),
  #total=c(16,54,41,25,4,6,52,66),  #c(16,54,41,25,4,6,52,66)
  labels=c("API ui",	"API io",	"API gc",	"API database",	"API network",	"API logging",	"API test",	"API os",	"groups",	"e.files",	"maintable",	"t.bug",	"t.performance",	"good.1.issue",	"fetcher",	"e.editor",	"preferences",	"t.quality",	"t.enhancem.",	"import",	"GSoC",	"t.feature",	"keywords"),
  count.tl
  #count1=count.1t+count.1c,
  #count2=count.2t+count.2c,
  #count3=count.3t+count.3c
  #top3=c(6,19,19,12,2,1,24,27)
)
datalabelT
df <- datalabelT[order(datalabelT$count.tl,decreasing = TRUE),]
df
#,6,19,19,12,2,1,24,27
#names.arg=c("Title","Author","Body","Side Label","Code Snippet","Comments","Participants","New Label 1", "New Label 1","linked",  "tileListPage", "labelListPage",     "sumLabels",     "sumTitles"),
par(mfrow=c(1,1))
pdf(file="./figures/AllTreatmentLabels.pdf")
barplot(height=df$count.tl, names=df$labels, main="Issues ",  horiz=TRUE,)
#hist(count.1t, col="violet")
dev.off()

par(mfrow=c(1,1))
#mx <- t(as.matrix(data[-1]))
mx <- t(as.matrix(df[-c(1)]))
mx
colnames(mx) <- df$labels
colours = c("blue")
# note the use of ylim to give 30% space for the legend
barplot(mx,main='Treatment Labels counts',ylab='Counts', xlab='Labels',beside = FALSE, 
        col=colours, ylim=c(0,max(mx)*1.1))
# to add a box around the plot
box()

# add a legend
#legend('topright',fill=colours,legend=c('1st','2nd','3rd'))

#------------ Control
datalabel <- data.frame(
  #region=c("Author","Body","Code","Comments","Particip","Linked",   "Labels",     "Titles"),
  #total=c(16,54,41,25,4,6,52,66),  #c(16,54,41,25,4,6,52,66)
  labels=c("groups",	"e.files",	"maintable",	"t.bug",	"t.performance",	"good.1.issue",	"fetcher",	"e.editor",	"preferences",	"t.quality",	"t.enhancem.",	"import",	"GSoC",	"t.feature",	"keywords"),
  count.cl
  #count1=count.1t+count.1c,
  #count2=count.2t+count.2c,
  #count3=count.3t+count.3c
  #top3=c(6,19,19,12,2,1,24,27)
)
datalabel
df <- datalabel[order(datalabel$count.cl,decreasing = TRUE),]
df
#,6,19,19,12,2,1,24,27
#names.arg=c("Title","Author","Body","Side Label","Code Snippet","Comments","Participants","New Label 1", "New Label 1","linked",  "tileListPage", "labelListPage",     "sumLabels",     "sumTitles"),
par(mfrow=c(1,1))
pdf(file="./figures/AllControlLabels.pdf")
barplot(height=df$count.cl, names=df$labels, main="Issues ",  horiz=TRUE,)
#hist(count.1t, col="violet")
dev.off()

par(mfrow=c(1,2))
#mx <- t(as.matrix(data[-1]))
mx <- t(as.matrix(df[-c(1)]))
mx
colnames(mx) <- df$labels
colours = c("red")
# note the use of ylim to give 30% space for the legend
barplot(mx,main='Control Labels counts',ylab='Counts', xlab='Labels',beside = FALSE, 
        col=colours, ylim=c(0,max(mx)*1.1))
# to add a box around the plot
box()

# add a legend
#legend('topright',fill=colours,legend=c('1st','2nd','3rd'))

# ---- All
#-
datalabelA <- data.frame(
  #region=c("Author","Body","Code","Comments","Particip","Linked",   "Labels",     "Titles"),
  #total=c(16,54,41,25,4,6,52,66),  #c(16,54,41,25,4,6,52,66)
  labels=c("API ui",	"API io",	"API gc",	"API database",	"API network",	"API logging",	"API test",	"API os","groups",	"e.files",	"maintable",	"t.bug",	"t.performance",	"good.1.issue",	"fetcher",	"e.editor",	"preferences",	"t.quality",	"t.enhancement",	"import",	"GSoC",	"t.feature",	"keywords"),
  count.al
  #count1=count.1t+count.1c,
  #count2=count.2t+count.2c,
  #count3=count.3t+count.3c
  #top3=c(6,19,19,12,2,1,24,27)
)
datalabelA
df <- datalabelA[order(datalabelA$count.al,decreasing = TRUE),]
df
#,6,19,19,12,2,1,24,27
#names.arg=c("Title","Author","Body","Side Label","Code Snippet","Comments","Participants","New Label 1", "New Label 1","linked",  "tileListPage", "labelListPage",     "sumLabels",     "sumTitles"),
par(mfrow=c(1,1))
pdf(file="./figures/AllLabels1.pdf")
barplot(height=df$count.al, names=df$labels, main="Issues ",  horiz=TRUE,)
#hist(count.1t, col="violet")
dev.off()

par(mfrow=c(1,1))
#mx <- t(as.matrix(data[-1]))
mx <- t(as.matrix(df[-c(1)]))
mx
colnames(mx) <- df$labels
colours = c("red")
# note the use of ylim to give 30% space for the legend
barplot(mx,main='All Labels counts',ylab='Counts', xlab='Labels',beside = FALSE, 
        col=colours, ylim=c(0,max(mx)*1.1))
# to add a box around the plot
box()

# add a legend
#legend('topright',fill=colours,legend=c('1st','2nd','3rd'))

# ---- Aux
#-
datalabelAux <- data.frame(
  #region=c("Author","Body","Code","Comments","Particip","Linked",   "Labels",     "Titles"),
  #total=c(16,54,41,25,4,6,52,66),  #c(16,54,41,25,4,6,52,66)
  labels=c("ui",	"io",	"gc",	"database",	"network",	"logging",	"test",	"os","groups",	"e.files",	"maintable",	"t.bug",	"t.performance",	"good.1.issue",	"fetcher",	"e.editor",	"preferences",	"t.quality",	"t.enhancem.",	"import",	"GSoC",	"t.feature",	"keywords"),
  count.aul,
  count.tl,
  count.all= count.aul+count.tl
  #count1=count.1t+count.1c,
  #count2=count.2t+count.2c,
  #count3=count.3t+count.3c
  #top3=c(6,19,19,12,2,1,24,27)
)
datalabelAux
df <- datalabelAux[order(datalabelAux$count.tl,decreasing = TRUE),]
df
#,6,19,19,12,2,1,24,27
#names.arg=c("Title","Author","Body","Side Label","Code Snippet","Comments","Participants","New Label 1", "New Label 1","linked",  "tileListPage", "labelListPage",     "sumLabels",     "sumTitles"),
par(mfrow=c(1,1))
pdf(file="./figures/AllLabels2.pdf")
barplot(height=df$count.all, names=df$labels, main="Issues ",  horiz=TRUE,)
#hist(count.1t, col="violet")
dev.off()

par(mfrow=c(1,1))
#mx <- t(as.matrix(data[-1]))
mx <- t(as.matrix(df[-c(1,4)]))
mx
colnames(mx) <- df$labels
colours = c("red","blue")
# note the use of ylim to give 30% space for the legend
barplot(mx,main='All Labels counts',ylab='Counts', xlab='Labels',beside = TRUE, 
        col=colours, ylim=c(0,max(mx)*1.1))
# to add a box around the plot
box()

# add a legend
legend('topright',fill=colours,legend=c('Control','Treatment'))
