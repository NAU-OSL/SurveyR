#--- industry

industryAllIssues <- industryAll[c("X","Q39_1","Q39_2","Q39_3","Q39_4","Q39_5","Q39_6","Q39_7","Q39_8","Q39_9","Q39_10","Q39_11","Q39_12","Q39_13","Q39_14","Q39_15","Q39_16","Q39_17","Q39_18","Q39_19","Q39_20","Q39_21","Q39_22")]
colnames(industryAllIssues) <- c("P",5679,5653,4430,5532,5486,5022,5254,4612,5194,4629,4816,4977,5002,4913,4864,4306,4360,4233,3994,628,2319,2370)

industryAllIssuesPartCol <- industryAllIssues[,1] 
industryAllIssues <- industryAllIssues[,-1]

count.1ai <- apply(industryAllIssues, 2, function(x) length(which(x==1)))
count.1ai

count.2ai <- apply(industryAllIssues, 2, function(x) length(which(x==2)))
count.2ai


count.3ai <- apply(industryAllIssues, 2, function(x) length(which(x==3)))
count.3ai

count.ai <- apply(industryAllIssues, 2, function(x) sum(x %in% c(1,2,3)))
count.ai

#--- students

studentsAllIssues <- studentsAll[c("X","Q39_1","Q39_2","Q39_3","Q39_4","Q39_5","Q39_6","Q39_7","Q39_8","Q39_9","Q39_10","Q39_11","Q39_12","Q39_13","Q39_14","Q39_15","Q39_16","Q39_17","Q39_18","Q39_19","Q39_20","Q39_21","Q39_22")]
colnames(studentsAllIssues) <- c("P",5679,5653,4430,5532,5486,5022,5254,4612,5194,4629,4816,4977,5002,4913,4864,4306,4360,4233,3994,628,2319,2370)

studentsAllIssuesPartCol <- studentsAllIssues[,1] 
studentsAllIssues <- studentsAllIssues[,-1]

count.1as <- apply(studentsAllIssues, 2, function(x) length(which(x==1)))
count.1as

count.2as <- apply(studentsAllIssues, 2, function(x) length(which(x==2)))
count.2as


count.3as <- apply(studentsAllIssues, 2, function(x) length(which(x==3)))
count.3as

count.as <- apply(studentsAllIssues, 2, function(x) sum(x %in% c(1,2,3)))
count.as

# plot 

par(mfrow=c(2,2))
nai <- nrow(industryAll)
nas<- nrow(studentsAll)
datatis <- data.frame(
  #region=c("Author","Body","Code","Comments","Particip","Linked",   "Labels",     "Titles"),
  #total=c(16,54,41,25,4,6,52,66),  #c(16,54,41,25,4,6,52,66)
  issues=c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370"),
  count=count.ai/nai+count.as/nas,
  count.ai/nai,
  count.as/nas
  #top3=c(6,19,19,12,2,1,24,27)
)
datatis
df <- datatis[order(datatis$count,decreasing = TRUE),]
df
#,6,19,19,12,2,1,24,27
#names.arg=c("Title","Author","Body","Side Label","Code Snippet","Comments","Participants","New Label 1", "New Label 1","linked",  "tileListPage", "labelListPage",     "sumLabels",     "sumTitles"),
par(mfrow=c(1,1))
pdf(file="./figures/AllIndustryStudents.pdf")
barplot(height=df$count, names=df$issues, main="Issues ",  horiz=TRUE,)
#hist(count.1t, col="violet")
dev.off()

par(mfrow=c(1,1))
#mx <- t(as.matrix(data[-1]))
mx <- t(as.matrix(df[-c(1,2)]))
mx
colnames(mx) <- df$issues
colours = c("gray","orange")
# note the use of ylim to give 30% space for the legend cex.axis=1.5 ylab='Counts', xlab='Issues',
barplot(mx,main='Issues counts Industry x Students',beside = TRUE, las=2, cex.names=0.8,
        col=colours, ylim=c(0,max(mx)*1.1))
# to add a box around the plot
box()
legend('topright',fill=colours,legend=c('Industry','Students'))

#--- Exp Coder

allExpCoderIssues <- allExpCoder[c("X","Q39_1","Q39_2","Q39_3","Q39_4","Q39_5","Q39_6","Q39_7","Q39_8","Q39_9","Q39_10","Q39_11","Q39_12","Q39_13","Q39_14","Q39_15","Q39_16","Q39_17","Q39_18","Q39_19","Q39_20","Q39_21","Q39_22")]
colnames(allExpCoderIssues) <- c("P",5679,5653,4430,5532,5486,5022,5254,4612,5194,4629,4816,4977,5002,4913,4864,4306,4360,4233,3994,628,2319,2370)

allExpCoderIssuesPartCol <- allExpCoderIssues[,1] 
allExpCoderIssues <- allExpCoderIssues[,-1]

count.1aec <- apply(allExpCoderIssues, 2, function(x) length(which(x==1)))
count.1aec

count.2aec <- apply(allExpCoderIssues, 2, function(x) length(which(x==2)))
count.2aec


count.3aec <- apply(allExpCoderIssues, 2, function(x) length(which(x==3)))
count.3aec

count.aec <- apply(allExpCoderIssues, 2, function(x) sum(x %in% c(1,2,3)))
count.aec

# ----------- Non Exp Coder

allNonExpCoderIssues <- allNonExpCoder[c("X","Q39_1","Q39_2","Q39_3","Q39_4","Q39_5","Q39_6","Q39_7","Q39_8","Q39_9","Q39_10","Q39_11","Q39_12","Q39_13","Q39_14","Q39_15","Q39_16","Q39_17","Q39_18","Q39_19","Q39_20","Q39_21","Q39_22")]
colnames(allNonExpCoderIssues) <- c("P",5679,5653,4430,5532,5486,5022,5254,4612,5194,4629,4816,4977,5002,4913,4864,4306,4360,4233,3994,628,2319,2370)

allNonExpCoderIssuesPartCol <- allNonExpCoderIssues[,1] 
allNonExpCoderIssues <- allNonExpCoderIssues[,-1]

count.1anec <- apply(allNonExpCoderIssues, 2, function(x) length(which(x==1)))
count.1anec

count.2anec <- apply(allNonExpCoderIssues, 2, function(x) length(which(x==2)))
count.2anec


count.3anec <- apply(allNonExpCoderIssues, 2, function(x) length(which(x==3)))
count.3anec

count.anec <- apply(allNonExpCoderIssues, 2, function(x) sum(x %in% c(1,2,3)))
count.anec


# Exp x Non Exp

aec <- nrow(allExpCoder)
anec <- nrow(allNonExpCoder)
dataaecnc <- data.frame(
  #region=c("Author","Body","Code","Comments","Particip","Linked",   "Labels",     "Titles"),
  #total=c(16,54,41,25,4,6,52,66),  #c(16,54,41,25,4,6,52,66)
  issues=c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370"),
  count=count.aec/aec+count.anec/anec,
  count.aec/aec,
  count.anec/anec
  #top3=c(6,19,19,12,2,1,24,27)
)
dataaecnc
df <- dataaecnc[order(dataaecnc$count,decreasing = TRUE),]
df
#,6,19,19,12,2,1,24,27
#names.arg=c("Title","Author","Body","Side Label","Code Snippet","Comments","Participants","New Label 1", "New Label 1","linked",  "tileListPage", "labelListPage",     "sumLabels",     "sumTitles"),
par(mfrow=c(1,1))
pdf(file="./figures/AllIssuesExpCodeNonExpCoder.pdf")
barplot(height=df$count, names=df$issues, main="Issues ",  horiz=TRUE,)
#hist(count.1t, col="violet")
dev.off()

par(mfrow=c(1,1))
#mx <- t(as.matrix(data[-1]))
mx <- t(as.matrix(df[-c(1,2)]))
mx
colnames(mx) <- df$issues
colours = c("black","white")
# note the use of ylim to give 30% space for the legend,ylab='Counts', xlab='Issues'
barplot(mx,main='Issues counts Exp x Novice Coder',beside = TRUE, las=2,cex.names=0.8,
        col=colours, ylim=c(0,max(mx)*1.1))
# to add a box around the plot
box()
legend('topright',fill=colours,legend=c('Exp','Novice'))

#--- Exp Contrib

allContributorIssues <- allContributor[c("X","Q39_1","Q39_2","Q39_3","Q39_4","Q39_5","Q39_6","Q39_7","Q39_8","Q39_9","Q39_10","Q39_11","Q39_12","Q39_13","Q39_14","Q39_15","Q39_16","Q39_17","Q39_18","Q39_19","Q39_20","Q39_21","Q39_22")]
colnames(allContributorIssues) <- c("P",5679,5653,4430,5532,5486,5022,5254,4612,5194,4629,4816,4977,5002,4913,4864,4306,4360,4233,3994,628,2319,2370)

allContributorIssuesPartCol <- allContributorIssues[,1] 
allContributorIssues <- allContributorIssues[,-1]

count.1aco <- apply(allContributorIssues, 2, function(x) length(which(x==1)))
count.1aco

count.2aco <- apply(allContributorIssues, 2, function(x) length(which(x==2)))
count.2aco


count.3aco <- apply(allContributorIssues, 2, function(x) length(which(x==3)))
count.3aco

count.aco <- apply(allContributorIssues, 2, function(x) sum(x %in% c(1,2,3)))
count.aco

#--- Novice Contrib

allNonContributorIssues <- allNonContributor[c("X","Q39_1","Q39_2","Q39_3","Q39_4","Q39_5","Q39_6","Q39_7","Q39_8","Q39_9","Q39_10","Q39_11","Q39_12","Q39_13","Q39_14","Q39_15","Q39_16","Q39_17","Q39_18","Q39_19","Q39_20","Q39_21","Q39_22")]
colnames(allNonContributorIssues) <- c("P",5679,5653,4430,5532,5486,5022,5254,4612,5194,4629,4816,4977,5002,4913,4864,4306,4360,4233,3994,628,2319,2370)

allNonContributorIssuesPartCol <- allContributorIssues[,1] 
allNonContributorIssues <- allNonContributorIssues[,-1]

count.1anco <- apply(allNonContributorIssues, 2, function(x) length(which(x==1)))
count.1anco

count.2anco <- apply(allNonContributorIssues, 2, function(x) length(which(x==2)))
count.2anco


count.3anco <- apply(allNonContributorIssues, 2, function(x) length(which(x==3)))
count.3anco

count.anco <- apply(allNonContributorIssues, 2, function(x) sum(x %in% c(1,2,3)))
count.anco

# Exp Cont x Novice Contrib

nac <- nrow(allContributor)
nanc<- nrow(allNonContributor)
datateconc <- data.frame(
  #region=c("Author","Body","Code","Comments","Particip","Linked",   "Labels",     "Titles"),
  #total=c(16,54,41,25,4,6,52,66),  #c(16,54,41,25,4,6,52,66)
  issues=c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370"),
  count=count.aco/nac+count.anco/nanc,
  count.aco/nac,
  count.anco/nanc
  #top3=c(6,19,19,12,2,1,24,27)
)
datateconc
df <- datateconc[order(datateconc$count,decreasing = TRUE),]
df
#,6,19,19,12,2,1,24,27
#names.arg=c("Title","Author","Body","Side Label","Code Snippet","Comments","Participants","New Label 1", "New Label 1","linked",  "tileListPage", "labelListPage",     "sumLabels",     "sumTitles"),
par(mfrow=c(1,1))
pdf(file="./figures/AllIssuesExpContNoviceCont.pdf")
barplot(height=df$count, names=df$issues, main="Issues ",  horiz=TRUE,)
#hist(count.1t, col="violet")
dev.off()

par(mfrow=c(1,1))
#mx <- t(as.matrix(data[-1]))
mx <- t(as.matrix(df[-c(1,2)]))
mx
colnames(mx) <- df$issues
colours = c("papayawhip","skyblue")
# note the use of ylim to give 30% space for the legend ,ylab='Counts', xlab='Issues'
barplot(mx,main='Issues counts Exp x Novice Contributor',beside = TRUE, las=2,cex.names=0.8,
        col=colours, ylim=c(0,max(mx)*1.1))
# to add a box around the plot
box()
legend('topright',fill=colours,legend=c('Exp','Novice'))




#--- Affinity

allAffinityIssues <- allAffinity[c("X","Q39_1","Q39_2","Q39_3","Q39_4","Q39_5","Q39_6","Q39_7","Q39_8","Q39_9","Q39_10","Q39_11","Q39_12","Q39_13","Q39_14","Q39_15","Q39_16","Q39_17","Q39_18","Q39_19","Q39_20","Q39_21","Q39_22")]
colnames(allAffinityIssues) <- c("P",5679,5653,4430,5532,5486,5022,5254,4612,5194,4629,4816,4977,5002,4913,4864,4306,4360,4233,3994,628,2319,2370)

allAffinityIssuesPartCol <- allAffinityIssues[,1] 
allAffinityIssues <- allAffinityIssues[,-1]

count.1af <- apply(allAffinityIssues, 2, function(x) length(which(x==1)))
count.1af

count.2af <- apply(allAffinityIssues, 2, function(x) length(which(x==2)))
count.2af


count.3af <- apply(allAffinityIssues, 2, function(x) length(which(x==3)))
count.3af

count.af <- apply(allAffinityIssues, 2, function(x) sum(x %in% c(1,2,3)))
count.af

#--- Non Affinity

allNonAffinityIssues <- allNonAffinity[c("X","Q39_1","Q39_2","Q39_3","Q39_4","Q39_5","Q39_6","Q39_7","Q39_8","Q39_9","Q39_10","Q39_11","Q39_12","Q39_13","Q39_14","Q39_15","Q39_16","Q39_17","Q39_18","Q39_19","Q39_20","Q39_21","Q39_22")]
colnames(allNonAffinityIssues) <- c("P",5679,5653,4430,5532,5486,5022,5254,4612,5194,4629,4816,4977,5002,4913,4864,4306,4360,4233,3994,628,2319,2370)

allNonAffinityIssuesPartCol <- allNonAffinityIssues[,1] 
allNonAffinityIssues <- allNonAffinityIssues[,-1]

count.1anf <- apply(allNonAffinityIssues, 2, function(x) length(which(x==1)))
count.1anf

count.2anf <- apply(allNonAffinityIssues, 2, function(x) length(which(x==2)))
count.2anf


count.3anf <- apply(allNonAffinityIssues, 2, function(x) length(which(x==3)))
count.3anf

count.anf <- apply(allNonAffinityIssues, 2, function(x) sum(x %in% c(1,2,3)))
count.anf

# plot

naf <- nrow(allAffinity)
nanf<- nrow(allNonAffinity)
datatafanf <- data.frame(
  #region=c("Author","Body","Code","Comments","Particip","Linked",   "Labels",     "Titles"),
  #total=c(16,54,41,25,4,6,52,66),  #c(16,54,41,25,4,6,52,66)
  issues=c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370"),
  count=count.af/naf+count.anf/nanf,
  count.af/naf,
  count.anf/nanf
  #top3=c(6,19,19,12,2,1,24,27)
)
datatafanf
df <- datatafanf[order(datatafanf$count,decreasing = TRUE),]
df
#,6,19,19,12,2,1,24,27
#names.arg=c("Title","Author","Body","Side Label","Code Snippet","Comments","Participants","New Label 1", "New Label 1","linked",  "tileListPage", "labelListPage",     "sumLabels",     "sumTitles"),
par(mfrow=c(1,1))
pdf(file="./figures/AllIssuesAffinityNonAffinity.pdf")
barplot(height=df$count, names=df$issues, main="Issues ",  horiz=TRUE,)
#hist(count.1t, col="violet")
dev.off()

par(mfrow=c(1,1))
#mx <- t(as.matrix(data[-1]))
mx <- t(as.matrix(df[-c(1,2)]))
mx
colnames(mx) <- df$issues
colours = c("lightblue","lightgoldenrod")
# note the use of ylim to give 30% space for the legend ,ylab='Counts', xlab='Issues'
barplot(mx,main='Issues counts High x Low Exp JabrRef Tech',beside = TRUE, las=2, cex.names=0.8,
        col=colours, ylim=c(0,max(mx)*1.1))
# to add a box around the plot
box()
legend('topright',fill=colours,legend=c('High','Low'))


# count choices for each issue


treatAllIssues <- treatAll[c("X","Q39_1","Q39_2","Q39_3","Q39_4","Q39_5","Q39_6","Q39_7","Q39_8","Q39_9","Q39_10","Q39_11","Q39_12","Q39_13","Q39_14","Q39_15","Q39_16","Q39_17","Q39_18","Q39_19","Q39_20","Q39_21","Q39_22")]
colnames(treatAllIssues) <- c("P",5679,5653,4430,5532,5486,5022,5254,4612,5194,4629,4816,4977,5002,4913,4864,4306,4360,4233,3994,628,2319,2370)


treatAllIssuesPartCol <- treatAllIssues[,1] 
treatAllIssues <- treatAllIssues[,-1]

count.1t <- apply(treatAllIssues, 2, function(x) length(which(x==1)))
count.1t

count.2t <- apply(treatAllIssues, 2, function(x) length(which(x==2)))
count.2t


count.3t <- apply(treatAllIssues, 2, function(x) length(which(x==3)))
count.3t

count.t <- apply(treatAllIssues, 2, function(x) sum(x %in% c(1,2,3)))
count.t

controlAllIssues <- controlAll[c("X","Q39_1","Q39_2","Q39_3","Q39_4","Q39_5","Q39_6","Q39_7","Q39_8","Q39_9","Q39_10","Q39_11","Q39_12","Q39_13","Q39_14","Q39_15","Q39_16","Q39_17","Q39_18","Q39_19","Q39_20","Q39_21","Q39_22")]
colnames(controlAllIssues) <- c("P",5679,5653,4430,5532,5486,5022,5254,4612,5194,4629,4816,4977,5002,4913,4864,4306,4360,4233,3994,628,2319,2370)

controlAllIssuesPartCol <- controlAllIssues[,1] 
controlAllIssues <- controlAllIssues[,-1]

count.1c <- apply(controlAllIssues, 2, function(x) length(which(x==1)))
count.1c

count.2c <- apply(controlAllIssues, 2, function(x) length(which(x==2)))
count.2c


count.3c <- apply(controlAllIssues, 2, function(x) length(which(x==3)))
count.3c

count.c <- apply(controlAllIssues, 2, function(x) sum(x %in% c(1,2,3)))
count.c


#df$count.1or2 <- apply(df[1:4], 1, function(x) sum(x %in% c(1,2)))
#df$count.na <- apply(df[1:4], 1, function(x) sum(is.na(x)))



#maybe normalize by the number of possible occurences or remove those with no values
#numOnLabels <- numOnLabels / (2*nrow(dataset)) # 2 columns with labels * num rows = total possible values

# compare with the other labels
#library(dplyr)

#treatAllIssues$Q39_1 <- as.numeric(treatAllIssues$Q39_1)

#treatAllIssues$X <- as.factor(treatAllIssues$X)

#treatAllIssues <- treatAllIssues %>%
 # mutate(col = replace(Q39_1,is.na(Q39_1),0))

#treatAllIssues <- treatAllIssues %>%
 # mutate(Q39_1 = if_else(is.na(Q39_1), 0, Q39_1))

#library(data.table)

#ans_df <- nafill(df, fill=0)

# or even faster, in-place
#setnafill(treatAllIssues, fill=0)

#plot(treatAllIssues$X, treatAllIssues$Q39_1,
#     main="test",
#     ylab="Y")

#df <- read.csv("df.csv",sep=",",head=T)
#x <- cbind(treatAllIssues$X,treatAllIssues$X,treatAllIssues$X,treatAllIssues$X)
#y <- cbind(treatAllIssues$Q39_1,treatAllIssues$Q39_2,treatAllIssues$Q39_3,treatAllIssues$Q39_4)
#matplot(x,y,type="p")

#treatAllIssues$Q39_1

#treatAllIssues

#plot(c(5679,5653,4430,5532,5486,5022,5254,4612,5194,4629,4816,4977,5002,4913,4864,4306,4360,4233,3994,628,2319,2370),count.1t,
 #    main="test",
     #xlim=(c(5679,5653,4430,5532,5486,5022,5254,4612,5194,4629,4816,4977,5002,4913,4864,4306,4360,4233,3994,628,2319,2370)),
  #   ylab="# 1st choice")

#library(ggplot2)
#ggplot(treatAllIssues, aes(x = c(5679,5653,4430,5532,5486,5022,5254,4612,5194,4629,4816,4977,5002,4913,4864,4306,4360,4233,3994,628,2319,2370), y = count.1t)) +
 # geom_point()

#-------------------------
# All Treatment and Control
#-------------------------

par(mfrow=c(2,2))    # set the plotting area into a 2*2 array
#par(mfrow=c(1,1))
par(cex=0.4, mai=c(0.5,0.5,0.5,0.5))
par(las=2)

#par(cex=0.4)
barplot(count.1t, main="1st option treatment", horiz=TRUE,)
pie(count.1t, main="1st option treatment", radius=1)

hist(count.1t, col="violet")
boxplot(count.1t, horizontal=TRUE)

#-------
barplot(count.2t, main="2nd option treatment")
pie(count.2t, main="2nd option treatment", radius=1)

hist(count.2t, col="darkgreen")
boxplot(count.2t, horizontal=TRUE)

#-------
barplot(count.3t, main="3rd option treatment")
pie(count.3t, main="3rd option treatment", radius=1)

hist(count.3t, col="blue")
boxplot(count.3t, horizontal=TRUE)

#-------
barplot(count.t, main="All treatment")
pie(count.t, main="All options treatment", radius=1)

hist(count.t, col="yellow")
boxplot(count.t, horizontal=TRUE)
#--------------
#counts <- table(count.1t, count.2t)
#barplot(count.1t, count.2t, main="num choices",
#        xlab="issues", col=c("darkblue","red"),
#        legend = rownames(counts), beside=TRUE)

#counts <- table(count.1t, count.2t)#barplot(count.1t, count.2t, count.3t, main="num choices", horiz=TRUE,
        #xlab="issues", col=c("darkblue","red","green"),
        #legend = rownames(counts))

#ggplot(data, aes(x=count.1t, y=count.2t)) + geom_bar(stat="counts") + 
#  labs(x="issues", y="counts")


#-------------
# grids
#--------------
par(mfrow=c(1,1))
df1 <- data.frame(x = count.1t, y = c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370"))
ggplot(df1, aes(x, y)) +
  geom_point()+
  labs(x = "1st counts treatment", y = "issues")

df2 <- data.frame(x = count.2t, y = c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370"))
ggplot(df2, aes(x, y)) +
  geom_point()+
  labs(x = "2nd counts treatment", y = "issues")

df3 <- data.frame(x = count.3t, y = c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370"))
ggplot(df3, aes(x, y)) +
  geom_point()+
  labs(x = "3rd counts treatment", y = "issues")

df4 <- data.frame(x = count.t, y = c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370"))
ggplot(df4, aes(x, y)) +
  geom_point()+
  labs(x = "All counts treatment", y = "issues")

#ggplot(df2, aes(x, y)) +
 # geom_point() +
  #scale_y_discrete(labels = c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370"))

#----------------
#jpeg(file="saving_plot1.jpeg")
#hist(Temperature, col="darkgreen")
#dev.off()

#png(file="C:/Datamentor/R-tutorial/saving_plot2.png",
#    width=600, height=350)
#hist(Temperature, col="gold")
#dev.off()

par(mfrow=c(1,1))
treatAllIssuesTest <- cbind(treatAllIssuesPartCol,treatAllIssues)

#nrow(treatAllIssuesTest)
#ncol(treatAllIssuesTest)
#library(gridExtra)
#pdf("treatAllIssues.pdf")
#grid.table(treatAllIssuesTest, height=31,width=24)
#dev.off()

#Plot your table with table Grob in the library(gridExtra)
#pdf(file="treatAllIssuesTest.pdf")
#ss <- tableGrob(treatAllIssuesTest)

#Make a scatterplot of your data
#k <- ggplot(df2,aes(x=x$"Value 1",y=x$"Value 2")) + 
#k <- 
#  ggplot(df2,aes(x=x,y=y)) + 
#  geom_point()+
#  labs(x = "counts", y = "issues")


#Arrange them as you want with grid.arrange
#grid.arrange(ss)
#dev.off()


#control---------------
par(mfrow=c(2,2))    # set the plotting area into a 2*2 array
#par(mfrow=c(1,1))
par(cex=0.4, mai=c(0.5,0.5,0.5,0.5))
par(las=2)

#par(cex=0.4)
barplot(count.1c, main="1st option control", horiz=TRUE,)
pie(count.1c, main="1st option control", radius=1)

hist(count.1c, col="violet")
boxplot(count.1c, horizontal=TRUE)

#-------
barplot(count.2c, main="2nd option")
pie(count.2c, main="2nd option control", radius=1)

hist(count.2c, col="darkgreen")
boxplot(count.2c, horizontal=TRUE)

#-------
barplot(count.3c, main="3rd option")
pie(count.3c, main="3rd option control", radius=1)

hist(count.3c, col="blue")
boxplot(count.3c, horizontal=TRUE)

#-------
barplot(count.c, main="All options")
pie(count.c, main="All options control", radius=1)

hist(count.c, col="yellow")
boxplot(count.c, horizontal=TRUE)

#-------------
par(mfrow=c(1,1))
df1c <- data.frame(x = count.1c, y = c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370"))
ggplot(df1c, aes(x, y)) +
  geom_point()+
  labs(x = "1st counts control", y = "issues")

df2c <- data.frame(x = count.2c, y = c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370"))
ggplot(df2c, aes(x, y)) +
  geom_point()+
  labs(x = "2nd counts control", y = "issues")

df3c <- data.frame(x = count.3c, y = c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370"))
ggplot(df3c, aes(x, y)) +
  geom_point()+
  labs(x = "3rd counts control", y = "issues")

df4c <- data.frame(x = count.c, y = c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370"))
ggplot(df4c, aes(x, y)) +
  geom_point()+
  labs(x = "All counts control", y = "issues")

#----- Print

pdf(file="treatAllIssues1st.pdf")
hist(count.1t, col="violet")
dev.off()

pdf(file="treatAllIssues2nd.pdf")
hist(count.2t, col="darkgreen")
dev.off()

pdf(file="treatAllIssues3rt.pdf")
hist(count.2t, col="blue")
dev.off()

pdf(file="treatAllIssues.pdf")
hist(count.t, col="red")
dev.off()

# 1st, 2nd, 3rd

data123 <- data.frame(
  #region=c("Author","Body","Code","Comments","Particip","Linked",   "Labels",     "Titles"),
  #total=c(16,54,41,25,4,6,52,66),  #c(16,54,41,25,4,6,52,66)
  issues=c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370"),
  count=count.t+count.c,
  count1=count.1t+count.1c,
  count2=count.2t+count.2c,
  count3=count.3t+count.3c
  #top3=c(6,19,19,12,2,1,24,27)
)
data123
df <- data123[order(data123$count,decreasing = TRUE),]
df
#,6,19,19,12,2,1,24,27
#names.arg=c("Title","Author","Body","Side Label","Code Snippet","Comments","Participants","New Label 1", "New Label 1","linked",  "tileListPage", "labelListPage",     "sumLabels",     "sumTitles"),
par(mfrow=c(1,1))
pdf(file="./figures/AllHotMap.pdf")
barplot(height=df$count, names=df$issues, main="Issues ",  horiz=TRUE,)
#hist(count.1t, col="violet")
dev.off()

par(mfrow=c(1,1))
#mx <- t(as.matrix(data[-1]))
mx <- t(as.matrix(df[-c(1,2)]))
mx
colnames(mx) <- df$issues
colours = c("red","blue","green")
# note the use of ylim to give 30% space for the legend
barplot(mx,main='Issues counts',ylab='Counts', xlab='Issues',beside = FALSE, 
        col=colours, ylim=c(0,max(mx)*2))
# to add a box around the plot
box()


# treat x Control

datatc <- data.frame(
  #region=c("Author","Body","Code","Comments","Particip","Linked",   "Labels",     "Titles"),
  #total=c(16,54,41,25,4,6,52,66),  #c(16,54,41,25,4,6,52,66)
  issues=c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370"),
  count=count.t+count.c,
  count.t,
  count.c
  #top3=c(6,19,19,12,2,1,24,27)
)
datatc
df <- datatc[order(datatc$count,decreasing = TRUE),]
df
#,6,19,19,12,2,1,24,27
#names.arg=c("Title","Author","Body","Side Label","Code Snippet","Comments","Participants","New Label 1", "New Label 1","linked",  "tileListPage", "labelListPage",     "sumLabels",     "sumTitles"),
par(mfrow=c(1,1))
pdf(file="./figures/AllHotMap.pdf")
barplot(height=df$count, names=df$issues, main="Issues ",  horiz=TRUE,)
#hist(count.1t, col="violet")
dev.off()

par(mfrow=c(1,1))
#mx <- t(as.matrix(data[-1]))
mx <- t(as.matrix(df[-c(1,2)]))
mx
colnames(mx) <- df$issues
colours = c("blue","red")
# note the use of ylim to give 30% space for the legend
barplot(mx,main='Issues counts Treatment Control',ylab='Counts', xlab='Issues',beside = FALSE, las=2,
        col=colours, ylim=c(0,max(mx)*2))
# to add a box around the plot
box()
legend('topright',fill=colours,legend=c('Treatment','Control'))

# treat 

datatreat <- data.frame(
  #region=c("Author","Body","Code","Comments","Particip","Linked",   "Labels",     "Titles"),
  #total=c(16,54,41,25,4,6,52,66),  #c(16,54,41,25,4,6,52,66)
  issues=c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370"),
  #count=count.t+count.c,
  count.t
  #count.c
  #top3=c(6,19,19,12,2,1,24,27)
)
datatreat
df <- datatreat[order(datatreat$count,decreasing = TRUE),]
df
#,6,19,19,12,2,1,24,27
#names.arg=c("Title","Author","Body","Side Label","Code Snippet","Comments","Participants","New Label 1", "New Label 1","linked",  "tileListPage", "labelListPage",     "sumLabels",     "sumTitles"),
par(mfrow=c(1,1))
pdf(file="./figures/AllHotMap.pdf")
barplot(height=df$count, names=df$issues, main="Issues ",  horiz=TRUE,)
#hist(count.1t, col="violet")
dev.off()

par(mfrow=c(1,1))
#mx <- t(as.matrix(data[-1]))
mx <- t(as.matrix(df[-c(1,1)]))
mx
colnames(mx) <- df$issues
colours = c("blue")
# note the use of ylim to give 30% space for the legend
barplot(mx,main='Issues counts Treatment',ylab='Counts', xlab='Issues',beside = FALSE, 
        col=colours, ylim=c(0,max(mx)*1.1))
# to add a box around the plot
box()

# add a legend
legend('topright',fill=colours,legend=c('Treatment','Control'))

# control 

datacontrol <- data.frame(
  #region=c("Author","Body","Code","Comments","Particip","Linked",   "Labels",     "Titles"),
  #total=c(16,54,41,25,4,6,52,66),  #c(16,54,41,25,4,6,52,66)
  issues=c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370"),
  #count=count.t+count.c,
  #count.t,
  count.c
  #top3=c(6,19,19,12,2,1,24,27)
)
datacontrol
df <- datacontrol[order(datacontrol$count,decreasing = TRUE),]
df
#,6,19,19,12,2,1,24,27
#names.arg=c("Title","Author","Body","Side Label","Code Snippet","Comments","Participants","New Label 1", "New Label 1","linked",  "tileListPage", "labelListPage",     "sumLabels",     "sumTitles"),
par(mfrow=c(1,1))
pdf(file="./figures/AllHotMap.pdf")
barplot(height=df$count, names=df$issues, main="Issues ",  horiz=TRUE,)
#hist(count.1t, col="violet")
dev.off()

par(mfrow=c(1,1))
#mx <- t(as.matrix(data[-1]))
mx <- t(as.matrix(df[-c(1,1)]))
mx
colnames(mx) <- df$issues
colours = c("red")
# note the use of ylim to give 30% space for the legend
barplot(mx,main='Issues counts Control',ylab='Counts', xlab='Issues',beside = FALSE, 
        col=colours, ylim=c(0,max(mx)*1.1))
# to add a box around the plot
box()

# add a legend
legend('topright',fill=colours,legend=c('Treatment','Control'))


library(tidyr)
library(ggplot2)

ggplot(data = data %>% gather(Variable, counts, -region), 
       aes(x = region, y = counts, fill = Variable)) + 
  geom_bar(stat = 'identity', position = 'dodge', width=0.5)

count.1t+count.1c
count.2t+count.2c
count.3t+count.3c
count.t+count.c
