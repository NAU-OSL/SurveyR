#---------------------
# groups
#--------------------
# Afinity
#--------------------

treatAfinityIssues <- treatAfinity[c("X","Q39_1","Q39_2","Q39_3","Q39_4","Q39_5","Q39_6","Q39_7","Q39_8","Q39_9","Q39_10","Q39_11","Q39_12","Q39_13","Q39_14","Q39_15","Q39_16","Q39_17","Q39_18","Q39_19","Q39_20","Q39_21","Q39_22")]
colnames(treatAfinityIssues) <- c("P",5679,5653,4430,5532,5486,5022,5254,4612,5194,4629,4816,4977,5002,4913,4864,4306,4360,4233,3994,628,2319,2370)


treatAfinityIssuesPartCol <- treatAfinityIssues[,1] 
treatAfinityIssues <- treatAfinityIssues[,-1]

count.1taf <- apply(treatAfinityIssues, 2, function(x) length(which(x==1)))
count.1taf

count.2taf <- apply(treatAfinityIssues, 2, function(x) length(which(x==2)))
count.2taf


count.3taf <- apply(treatAfinityIssues, 2, function(x) length(which(x==3)))
count.3taf

count.taf <- apply(treatAfinityIssues, 2, function(x) sum(x %in% c(1,2,3)))
count.taf

controlAfinityIssues <- controlAfinity[c("X","Q39_1","Q39_2","Q39_3","Q39_4","Q39_5","Q39_6","Q39_7","Q39_8","Q39_9","Q39_10","Q39_11","Q39_12","Q39_13","Q39_14","Q39_15","Q39_16","Q39_17","Q39_18","Q39_19","Q39_20","Q39_21","Q39_22")]
colnames(controlAfinityIssues) <- c("P",5679,5653,4430,5532,5486,5022,5254,4612,5194,4629,4816,4977,5002,4913,4864,4306,4360,4233,3994,628,2319,2370)

controlAllIssuesPartCol <- controlAfinityIssues[,1] 
controlAfinityIssues <- controlAfinityIssues[,-1]

count.1caf <- apply(controlAfinityIssues, 2, function(x) length(which(x==1)))
count.1caf

count.2caf <- apply(controlAfinityIssues, 2, function(x) length(which(x==2)))
count.2caf


count.3caf <- apply(controlAfinityIssues, 2, function(x) length(which(x==3)))
count.3caf

count.caf <- apply(controlAfinityIssues, 2, function(x) sum(x %in% c(1,2,3)))
count.caf

#--------------
# plot Afinity
#--------------

par(mfrow=c(2,2))    # set the plotting area into a 2*2 array
#par(mfrow=c(1,1))
par(cex=0.4, mai=c(0.5,0.5,0.5,0.5))
par(las=2)

#par(cex=0.4)
barplot(count.1taf, main="1st option treatment exp coder", horiz=TRUE,)
pie(count.1taf, main="1st option treatment exp coder", radius=1)

hist(count.1taf, col="violet")
boxplot(count.1taf, horizontal=TRUE)

#-------
barplot(count.2taf, main="2nd option treatment exp coder")
pie(count.2taf, main="2nd option treatment exp coder", radius=1)

hist(count.2taf, col="darkgreen")
boxplot(count.2taf, horizontal=TRUE)

#-------
barplot(count.3taf, main="3rd option treatment exp coder")
pie(count.3taf, main="3rd option treatment exp coder", radius=1)

hist(count.3taf, col="blue")
boxplot(count.3taf, horizontal=TRUE)

#-------
barplot(count.taf, main="All treatment exp coder")
pie(count.taf, main="All options treatment exp coder", radius=1)

hist(count.taf, col="yellow")
boxplot(count.taf, horizontal=TRUE)

#-------------
# grids
#--------------
par(mfrow=c(1,1))
df1ec <- data.frame(x = count.1taf, y = c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370"))
ggplot(df1ec, aes(x, y)) +
  geom_point()+
  labs(x = "1st counts treatment exp coder", y = "issues")

df2ec <- data.frame(x = count.2taf, y = c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370"))
ggplot(df2ec, aes(x, y)) +
  geom_point()+
  labs(x = "2nd counts treatment exp coder", y = "issues")

df3ec <- data.frame(x = count.3taf, y = c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370"))
ggplot(df3ec, aes(x, y)) +
  geom_point()+
  labs(x = "3rd counts treatment exp coder", y = "issues")

df4ec <- data.frame(x = count.taf, y = c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370"))
ggplot(df4ec, aes(x, y)) +
  geom_point()+
  labs(x = "All counts treatment exp coder", y = "issues")

#control---------------
par(mfrow=c(2,2))    # set the plotting area into a 2*2 array
#par(mfrow=c(1,1))
par(cex=0.4, mai=c(0.5,0.5,0.5,0.5))
par(las=2)

#par(cex=0.4)
barplot(count.1caf, main="1st option control exp coder", horiz=TRUE,)
pie(count.1caf, main="1st option control exp coder", radius=1)

hist(count.1caf, col="violet")
boxplot(count.1caf, horizontal=TRUE)

#-------
barplot(count.2caf, main="2nd option control exp coder")
pie(count.2caf, main="2nd option control exp coder", radius=1)

hist(count.2caf, col="darkgreen")
boxplot(count.2caf, horizontal=TRUE)

#-------
barplot(count.3caf, main="3rd option control exp coder")
pie(count.3caf, main="3rd option control exp coder", radius=1)

hist(count.3caf, col="blue")
boxplot(count.3caf, horizontal=TRUE)

#-------
barplot(count.caf, main="All options control exp coder")
pie(count.caf, main="All options control exp coder", radius=1)

hist(count.caf, col="yellow")
boxplot(count.caf, horizontal=TRUE)

#-------------
par(mfrow=c(1,1))
df1caf <- data.frame(x = count.1caf, y = c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370"))
ggplot(df1caf, aes(x, y)) +
  geom_point()+
  labs(x = "1st counts control exp coder", y = "issues")

df2caf <- data.frame(x = count.2caf, y = c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370"))
ggplot(df2caf, aes(x, y)) +
  geom_point()+
  labs(x = "2nd counts control exp coder", y = "issues")

df3caf <- data.frame(x = count.3caf, y = c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370"))
ggplot(df3caf, aes(x, y)) +
  geom_point()+
  labs(x = "3rd counts control exp coder", y = "issues")

df4caf <- data.frame(x = count.caf, y = c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370"))
ggplot(df4caf, aes(x, y)) +
  geom_point()+
  labs(x = "All counts control exp coder", y = "issues")

