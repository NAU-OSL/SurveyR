#---------------------
# groups
#--------------------
# Contributor
#--------------------

treatContributorIssues <- treatContributor[c("X","Q39_1","Q39_2","Q39_3","Q39_4","Q39_5","Q39_6","Q39_7","Q39_8","Q39_9","Q39_10","Q39_11","Q39_12","Q39_13","Q39_14","Q39_15","Q39_16","Q39_17","Q39_18","Q39_19","Q39_20","Q39_21","Q39_22")]
colnames(treatContributorIssues) <- c("P",5679,5653,4430,5532,5486,5022,5254,4612,5194,4629,4816,4977,5002,4913,4864,4306,4360,4233,3994,628,2319,2370)


treatContributorIssuesPartCol <- treatContributorIssues[,1] 
treatContributorIssues <- treatContributorIssues[,-1]

count.1tc <- apply(treatContributorIssues, 2, function(x) length(which(x==1)))
count.1tc

count.2tc <- apply(treatContributorIssues, 2, function(x) length(which(x==2)))
count.2tc


count.3tc <- apply(treatContributorIssues, 2, function(x) length(which(x==3)))
count.3tc

count.tc <- apply(treatContributorIssues, 2, function(x) sum(x %in% c(1,2,3)))
count.tc

controlContributorIssues <- controlContributor[c("X","Q39_1","Q39_2","Q39_3","Q39_4","Q39_5","Q39_6","Q39_7","Q39_8","Q39_9","Q39_10","Q39_11","Q39_12","Q39_13","Q39_14","Q39_15","Q39_16","Q39_17","Q39_18","Q39_19","Q39_20","Q39_21","Q39_22")]
colnames(controlContributorIssues) <- c("P",5679,5653,4430,5532,5486,5022,5254,4612,5194,4629,4816,4977,5002,4913,4864,4306,4360,4233,3994,628,2319,2370)

controlAllIssuesPartCol <- controlContributorIssues[,1] 
controlContributorIssues <- controlContributorIssues[,-1]

count.1cc <- apply(controlContributorIssues, 2, function(x) length(which(x==1)))
count.1cc

count.2cc <- apply(controlContributorIssues, 2, function(x) length(which(x==2)))
count.2cc


count.3cc <- apply(controlContributorIssues, 2, function(x) length(which(x==3)))
count.3cc

count.cc <- apply(controlContributorIssues, 2, function(x) sum(x %in% c(1,2,3)))
count.cc

#--------------
# plot Contributor
#--------------

par(mfrow=c(2,2))    # set the plotting area into a 2*2 array
#par(mfrow=c(1,1))
par(cex=0.4, mai=c(0.5,0.5,0.5,0.5))
par(las=2)

#par(cex=0.4)
barplot(count.1tc, main="1st option treatment contributor", horiz=TRUE,)
pie(count.1tc, main="1st option treatment contributor", radius=1)

hist(count.1tc, col="violet")
boxplot(count.1tc, horizontal=TRUE)

#-------
barplot(count.2tc, main="2nd option treatment contributor")
pie(count.2tc, main="2nd option treatment contributor", radius=1)

hist(count.2tc, col="darkgreen")
boxplot(count.2tc, horizontal=TRUE)

#-------
barplot(count.3tc, main="3rd option treatment contributor")
pie(count.3tc, main="3rd option treatment contributor", radius=1)

hist(count.3tc, col="blue")
boxplot(count.3tc, horizontal=TRUE)

#-------
barplot(count.tc, main="All treatment contributor")
pie(count.tc, main="All options treatment contributor", radius=1)

hist(count.tc, col="yellow")
boxplot(count.tc, horizontal=TRUE)

#-------------
# grids
#--------------
par(mfrow=c(1,1))
df1tc <- data.frame(x = count.1tc, y = c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370"))
ggplot(df1tc, aes(x, y)) +
  geom_point()+
  labs(x = "1st counts treatment contributor", y = "issues")

df2tc <- data.frame(x = count.2tc, y = c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370"))
ggplot(df2tc, aes(x, y)) +
  geom_point()+
  labs(x = "2nd counts treatment contributor", y = "issues")

df3tc <- data.frame(x = count.3tc, y = c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370"))
ggplot(df3tc, aes(x, y)) +
  geom_point()+
  labs(x = "3rd counts treatment contributor", y = "issues")

df4tc <- data.frame(x = count.tc, y = c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370"))
ggplot(df4tc, aes(x, y)) +
  geom_point()+
  labs(x = "All counts treatment contributor", y = "issues")

#control---------------

par(mfrow=c(2,2))    # set the plotting area into a 2*2 array
#par(mfrow=c(1,1))
par(cex=0.4, mai=c(0.5,0.5,0.5,0.5))
par(las=2)

#par(cex=0.4)
barplot(count.1cc, main="1st option control contributor", horiz=TRUE,)
pie(count.1cc, main="1st option control contributor", radius=1)

hist(count.1cc, col="violet")
boxplot(count.1cc, horizontal=TRUE)

#-------
barplot(count.2cc, main="2nd option control contributor")
pie(count.2cc, main="2nd option control contributor", radius=1)

hist(count.2cc, col="darkgreen")
boxplot(count.2cc, horizontal=TRUE)

#-------
barplot(count.3cc, main="3rd option control contributor")
pie(count.3cc, main="3rd option control contributor", radius=1)

hist(count.3cc, col="blue")
boxplot(count.3cc, horizontal=TRUE)

#-------
barplot(count.cc, main="All options control contributor")
pie(count.cc, main="All options control contributor", radius=1)

hist(count.cc, col="yellow")
boxplot(count.cc, horizontal=TRUE)

#-------------
par(mfrow=c(1,1))
df1cc <- data.frame(x = count.1cc, y = c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370"))
ggplot(df1cc, aes(x, y)) +
  geom_point()+
  labs(x = "1st counts control contributor", y = "issues")

df2cc <- data.frame(x = count.2cc, y = c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370"))
ggplot(df2cc, aes(x, y)) +
  geom_point()+
  labs(x = "2nd counts control contributor", y = "issues")

df3cc <- data.frame(x = count.3cc, y = c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370"))
ggplot(df3cc, aes(x, y)) +
  geom_point()+
  labs(x = "3rd counts control contributor", y = "issues")

df4cc <- data.frame(x = count.cc, y = c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370"))
ggplot(df4cec, aes(x, y)) +
  geom_point()+
  labs(x = "All counts control contributor", y = "issues")

