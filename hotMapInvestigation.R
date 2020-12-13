# treatment

treatAllHotMap <- treatAll[c("X","Q50_1","Q50_2","Q50_3","Q50_4","Q50_5","Q50_6","Q50_7","Q50_8","Q50_9","Q50_10","Q50_11","Q50_12")]
treatLabels <- treatAll[c("Q50_4","Q50_8","Q50_9","Q50_12")]
treatTitle <- treatAll[c("Q50_1","Q50_11")]

treatAllHotMap$sumLabels <- ""
treatAllHotMap$sumTitles <- ""

#sumLabel <- rowSums(treatLabels)
#sumTitle <- rowSums(treatTitle)

#Q50_1	Q50_2	Q50_3	Q50_4	Q50_5	Q50_6	Q50_7	Q50_8	Q50_9	Q50_10	Q50_11	Q50_12
colnames(treatAllHotMap) <- c("P","title","author","body","labels","code","comments","participants","newLabel1","newLabel2","linked", "tileListPage", "labelListPage", "sumLabels","sumTitles")

treatAllHotMapPartCol <- treatAllHotMap[,1] 
treatAllHotMap <- treatAllHotMap[,-1]

count.thm <- apply(treatAllHotMap, 2, function(x) length(which(x=="On")))
count.thm

sumLabel <- count.thm[4] + count.thm[8] +count.thm[9] +count.thm[12]

count.thm[13]<-sumLabel

sumTitle <- count.thm[1] +count.thm[11]

count.thm[14]<-sumTitle

count.thm
# control

controlAllHotMap <- controlAll[c("X","Q50_1","Q50_2","Q50_3","Q50_4","Q50_5","Q50_6","Q50_7","Q50_8","Q50_9","Q50_10","Q50_11","Q50_12")]
controlLabels <- treatAll[c("Q50_4","Q50_8","Q50_9","Q50_12")]
controlTitle <- treatAll[c("Q50_1","Q50_11")]

controlAllHotMap$sumLabels <- ""
controlAllHotMap$sumTitles <- ""

#Q50_1	Q50_2	Q50_3	Q50_4	Q50_5	Q50_6	Q50_7	Q50_8	Q50_9	Q50_10	Q50_11	Q50_12
colnames(controlAllHotMap) <- c("P","title","author","body","labels","code","comments","participants","newLabel1","newLabel2","linked", "tileListPage", "labelListPage", "sumLabels","sumTitles")

controlAllHotMapPartCol <- controlAllHotMap[,1] 
controlAllHotMap <- controlAllHotMap[,-1]

count.chm <- apply(controlAllHotMap, 2, function(x) length(which(x=="On")))
count.chm

sumLabel <- count.chm[4] + count.chm[8] +count.chm[9] +count.chm[12]

count.chm[13]<-sumLabel

sumTitle <- count.chm[1] +count.chm[11]

count.chm[14]<-sumTitle

count.chm

# hot map x issues

#treatment

treatAllIssuesHotMap <- treatAll[c("X","Q39_1","Q39_2","Q39_3","Q39_4","Q39_5","Q39_6","Q39_7","Q39_8","Q39_9","Q39_10","Q39_11","Q39_12","Q39_13","Q39_14","Q39_15","Q39_16","Q39_17","Q39_18","Q39_19","Q39_20","Q39_21","Q39_22","Q50_1","Q50_2","Q50_3","Q50_4","Q50_5","Q50_6","Q50_7","Q50_8","Q50_9","Q50_10","Q50_11","Q50_12")]

treatAllIssuesHotMap$sumLabels <- ""
treatAllIssuesHotMap$sumTitles <- ""

colnames(treatAllIssuesHotMap) <- c("P","i5679","i5653","i4430","i5532","i5486","i5022","i5254","i4612","i5194","i4629","i4816","i4977","i5002","i4913","i4864","i4306","i4360","i4233","i3994","i628","i2319","i2370","title","author","body","labels","code","comments","participants","newLabel1","newLabel2","linked", "tileListPage", "labelListPage", "sumLabels","sumTitles")
#typeof(treatAllIssuesHotMap["i3994"])
typeof(treatAllIssuesHotMap$i3994)
# top 3 treatent issues: see issuesInvestigation.R

treatAllIssuesHotMapTop3 <- treatAllIssuesHotMap %>% filter(i3994 %in% c("1","2", "3") | i4977 %in% c(1,2, 3) | i4233 %in% c(1,2, 3))

treatAllHotMapTop3 <- treatAllIssuesHotMapTop3[c("title","author","body","labels","code","comments","participants","newLabel1","newLabel2","linked", "tileListPage", "labelListPage", "sumLabels","sumTitles")]

count.thmtop3 <- apply(treatAllHotMapTop3, 2, function(x) length(which(x=="On")))
count.thmtop3

count.thmtop3off <- apply(treatAllHotMapTop3, 2, function(x) length(which(x=="Off")))
count.thmtop3off

sumLabel <- count.thmtop3[4] + count.thmtop3[8] +count.thmtop3[9] +count.thmtop3[12]
sumLabeloff <- count.thmtop3off[4] + count.thmtop3off[8] +count.thmtop3off[9] +count.thmtop3off[12]

count.thmtop3[13]<-sumLabel

sumTitle <- count.thmtop3[1] +count.thmtop3[11]

count.thmtop3[14]<-sumTitle

count.thmtop3

# control

controlAllIssuesHotMap <- controlAll[c("X","Q39_1","Q39_2","Q39_3","Q39_4","Q39_5","Q39_6","Q39_7","Q39_8","Q39_9","Q39_10","Q39_11","Q39_12","Q39_13","Q39_14","Q39_15","Q39_16","Q39_17","Q39_18","Q39_19","Q39_20","Q39_21","Q39_22","Q50_1","Q50_2","Q50_3","Q50_4","Q50_5","Q50_6","Q50_7","Q50_8","Q50_9","Q50_10","Q50_11","Q50_12")]

controlAllIssuesHotMap$sumLabels <- ""
controlAllIssuesHotMap$sumTitles <- ""

colnames(controlAllIssuesHotMap) <- c("P","i5679","i5653","i4430","i5532","i5486","i5022","i5254","i4612","i5194","i4629","i4816","i4977","i5002","i4913","i4864","i4306","i4360","i4233","i3994","i628","i2319","i2370","title","author","body","labels","code","comments","participants","newLabel1","newLabel2","linked", "tileListPage", "labelListPage", "sumLabels","sumTitles")
#typeof(treatAllIssuesHotMap["i3994"])
typeof(controlAllIssuesHotMap$i3994)
# top 3 treatent issues: see issuesInvestigation.R

controlAllIssuesHotMapTop3 <- controlAllIssuesHotMap %>% filter(i3994 %in% c("1","2", "3") | i4977 %in% c(1,2, 3) | i4306 %in% c(1,2, 3))

controlAllHotMapTop3 <- controlAllIssuesHotMapTop3[c("title","author","body","labels","code","comments","participants","newLabel1","newLabel2","linked", "tileListPage", "labelListPage", "sumLabels","sumTitles")]

count.chmtop3 <- apply(controlAllHotMapTop3, 2, function(x) length(which(x=="On")))
count.chmtop3

count.chmtop3off <- apply(controlAllHotMapTop3, 2, function(x) length(which(x=="Off")))
count.chmtop3off

sumLabelc <- count.chmtop3[4] + count.chmtop3[8] +count.chmtop3[9] +count.chmtop3[12]
sumLabelcoff <- count.chmtop3off[4] + count.chmtop3off[8] +count.chmtop3off[9] +count.chmtop3off[12]

count.chmtop3[13]<-sumLabelc

sumTitlec <- count.chmtop3[1] +count.chmtop3[11]

count.chmtop3[14]<-sumTitlec

count.chmtop3

# odds ratio

relevant_labels_hotmapTop3<- matrix(c(sumLabel, sumLabelc, sumLabeloff, sumLabelcoff), nrow = 2)

rownames(relevant_labels_hotmapTop3) <- c("Treat HotMap(labels)", "control HotMap(labels)")
colnames(relevant_labels_hotmapTop3) <- c("on", "off")

relevant_labels_hotmapTop3

chisq.test(relevant_labels_hotmapTop3)

fisher.test(relevant_labels_hotmapTop3)

oddsratio.wald(relevant_labels_hotmapTop3)

# by hand ex:
#treat <- 21/11
#treat
#control <-40/20
#control

#odd <- treat/control
#odd

treat <- sumLabel/sumLabeloff
treat
control <-sumLabelc/sumLabelcoff
control

odd <- treat/control
odd

#-------------------------
# HotMap Treatment and Control
#-------------------------

par(mfrow=c(2,2))    # set the plotting area into a 2*2 array
#par(mfrow=c(1,1))
par(cex=0.4, mai=c(0.5,0.5,0.5,0.5))
par(las=2)

#par(cex=0.4)
barplot(count.thm, main="hot map treatment", horiz=TRUE,)
pie(count.thm, main="hot map treatment", radius=1)

hist(count.thm, col="violet")
boxplot(count.thm, horizontal=TRUE)


# control

par(mfrow=c(2,2))    # set the plotting area into a 2*2 array
#par(mfrow=c(1,1))
par(cex=0.4, mai=c(0.5,0.5,0.5,0.5))
par(las=2)

#par(cex=0.4)
barplot(count.chm, main="hot map control", horiz=TRUE,)
pie(count.chm, main="hot map control", radius=1)

hist(count.chm, col="violet")
boxplot(count.chm, horizontal=TRUE)

#-------------
# grids
#--------------
par(mfrow=c(1,1))
df1thm <- data.frame(x = count.thm, y = c("title","author","body","labels","code","comments","participants","newLabel1","newLabel2","linked", "tileListPage", "labelListPage","sumTitles","sumLabels"))
ggplot(df1thm, aes(x, y)) +
  geom_point()+
  labs(x = "hot map treatment", y = "issues")

par(mfrow=c(1,1))
df1chm <- data.frame(x = count.chm, y = c("title","author","body","labels","code","comments","participants","newLabel1","newLabel2","linked", "tileListPage", "labelListPage","sumTitles","sumLabels"))
ggplot(df1chm, aes(x, y)) +
  geom_point()+
  labs(x = "hot map control", y = "issues")


