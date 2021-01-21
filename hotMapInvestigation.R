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

#----- Print

par(mfrow=c(1,1))
par(cex=0.4, mai=c(0.5,0.5,0.5,0.5))
par(las=2)
pdf(file="./figures/treatHotMap.pdf")
barplot(count.thm, main="hot spot treatment", horiz=TRUE,)
#hist(count.1t, col="violet")
dev.off()

par(mfrow=c(1,1))
pdf(file="./figures/controlHotMap.pdf")
barplot(count.chm, main="hot spot control", horiz=TRUE,)
#hist(count.1t, col="violet")
dev.off()

count.allhm <- count.chm + count.thm

count.thmaux <- c(0,0,0,0,0,0,0,0)
count.thmaux [1] <- count.thm[2] #author
count.thmaux [2] <- count.thm[3] #body
count.thmaux [3] <- count.thm[5] #code
count.thmaux [4] <- count.thm[6] #comments
count.thmaux [5] <- count.thm[7] #participants
count.thmaux [6] <- count.thm[10] #linked
#count.thmaux [7] <- count.thm[4]+count.thm[8]+count.thm[9]+count.thm[12] #labels
#count.thmaux [8] <- count.thm[1]+count.thm[11] #titles
count.thmaux [7] <- count.thm[13] #labels
count.thmaux [8] <- count.thm[14] #tiltles
count.thmaux

count.chmaux <- c(0,0,0,0,0,0,0,0)
count.chmaux [1] <- count.chm[2] #author
count.chmaux [2] <- count.chm[3] #body
count.chmaux [3] <- count.chm[5] #code
count.chmaux [4] <- count.chm[6] #comments
count.chmaux [5] <- count.chm[7] #participants
count.chmaux [6] <- count.chm[10] #linked
#count.chmaux [7] <- count.chm[4]+count.chm[8]+count.chm[9]+count.chm[12] #labels
#count.chmaux [8] <- count.chm[1]+count.chm[11] #titles
count.chmaux [7] <- count.chm[13] #labels
count.chmaux [8] <- count.chm[14] #tiltles
count.chmaux

count.allhmaux <- count.chmaux + count.thmaux
count.allhmaux
#title        author          body        labels          code      comments  participants     newLabel1 
#33            16            54            25            41            25             4             0 
#newLabel2        linked  tileListPage labelListPage     sumLabels     sumTitles 
#3             6            33            24            52            66 

#c("Title","Author","Body","Side Label","Code Snippet","Comments","Participants","New Label 1", "New Label 1","linked",  "tileListPage", "labelListPage",     "sumLabels",     "sumTitles"

datahmt3 <- data.frame(
  region=c("Author","Body","Code","Comments","Particip","Linked",   "Labels",     "Titles"),
  #total=c(16,54,41,25,4,6,52,66),  #c(16,54,41,25,4,6,52,66)
  top3=c(6,19,19,12,2,1,24,27),
  total=count.allhmaux
)
datahmt3#,6,19,19,12,2,1,24,27
df <- datahmt3[order(datahmt3$top3,decreasing = TRUE),]
df
#names.arg=c("Title","Author","Body","Side Label","Code Snippet","Comments","Participants","New Label 1", "New Label 1","linked",  "tileListPage", "labelListPage",     "sumLabels",     "sumTitles"),
par(mfrow=c(1,1))
pdf(file="./figures/AllHotMap.pdf")
barplot(height=datahmt3$total, names=datahmt3$region, main="hot spot ",  horiz=TRUE,)
#hist(count.1t, col="violet")
dev.off()

par(mfrow=c(1,1))
mx <- t(as.matrix(df[-1]))
mx
colnames(mx) <- df$region
colours = c("Green","Yellow")
# note the use of ylim to give 30% space for the legend
barplot(mx,main='Hot Spot counts',ylab='Counts', xlab='Regions',beside = TRUE, 
        col=colours, ylim=c(0,max(mx)*1.3))
# to add a box around the plot
box()

# add a legend
legend('topright',fill=colours,legend=c('Top 3 issues','Total'))

# Treatment x Control
datahmtc <- data.frame(
  region=c("Author","Body","Code","Comments","Particip","Linked",   "Labels",     "Titles"),
  count.thmaux,  
  count.chmaux
)
datahmtc#,6,19,19,12,2,1,24,27
df <- datahmtc[order(datahmtc$count.thm,decreasing = TRUE),]
df
#names.arg=c("Title","Author","Body","Side Label","Code Snippet","Comments","Participants","New Label 1", "New Label 1","linked",  "tileListPage", "labelListPage",     "sumLabels",     "sumTitles"),
par(mfrow=c(1,1))
pdf(file="./figures/AllHotMap.pdf")
barplot(height=datahmtc$count.thm, names=datahmtc$region, main="hot spot ",  horiz=TRUE,)
#hist(count.1t, col="violet")
dev.off()

par(mfrow=c(1,1))
mx <- t(as.matrix(df[-1]))
mx
colnames(mx) <- df$region
colours = c("Blue","Red")
# note the use of ylim to give 30% space for the legend xlab='Regions' ylab='Counts',
barplot(mx,main='Regions counts' ,beside = TRUE, las=2,
        col=colours, ylim=c(0,max(mx)*1.3))
# to add a box around the plot
box()

# add a legend
legend('topright',fill=colours,legend=c('Treatment','Control'))

library(tidyr)
library(ggplot2)

ggplot(data = data %>% gather(Variable, counts, -region), 
       aes(x = region, y = counts, fill = Variable)) + 
  geom_bar(stat = 'identity', position = 'dodge', width=0.5)
