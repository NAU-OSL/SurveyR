#---------------------
# groups
#--------------------
# ExpCoder
#--------------------

treatExpCoderIssues <- treatExpCoder[c("X","Q39_1","Q39_2","Q39_3","Q39_4","Q39_5","Q39_6","Q39_7","Q39_8","Q39_9","Q39_10","Q39_11","Q39_12","Q39_13","Q39_14","Q39_15","Q39_16","Q39_17","Q39_18","Q39_19","Q39_20","Q39_21","Q39_22")]
colnames(treatExpCoderIssues) <- c("P",5679,5653,4430,5532,5486,5022,5254,4612,5194,4629,4816,4977,5002,4913,4864,4306,4360,4233,3994,628,2319,2370)


treatExpCoderIssuesPartCol <- treatExpCoderIssues[,1] 
treatExpCoderIssues <- treatExpCoderIssues[,-1]

count.1tec <- apply(treatExpCoderIssues, 2, function(x) length(which(x==1)))
count.1tec

count.2tec <- apply(treatExpCoderIssues, 2, function(x) length(which(x==2)))
count.2tec


count.3tec <- apply(treatExpCoderIssues, 2, function(x) length(which(x==3)))
count.3tec

count.tec <- apply(treatExpCoderIssues, 2, function(x) sum(x %in% c(1,2,3)))
count.tec

controlExpCoderIssues <- controlExpCoder[c("X","Q39_1","Q39_2","Q39_3","Q39_4","Q39_5","Q39_6","Q39_7","Q39_8","Q39_9","Q39_10","Q39_11","Q39_12","Q39_13","Q39_14","Q39_15","Q39_16","Q39_17","Q39_18","Q39_19","Q39_20","Q39_21","Q39_22")]
colnames(controlExpCoderIssues) <- c("P",5679,5653,4430,5532,5486,5022,5254,4612,5194,4629,4816,4977,5002,4913,4864,4306,4360,4233,3994,628,2319,2370)

controlAllIssuesPartCol <- controlExpCoderIssues[,1] 
controlExpCoderIssues <- controlExpCoderIssues[,-1]

count.1cec <- apply(controlExpCoderIssues, 2, function(x) length(which(x==1)))
count.1cec

count.2cec <- apply(controlExpCoderIssues, 2, function(x) length(which(x==2)))
count.2cec


count.3cec <- apply(controlExpCoderIssues, 2, function(x) length(which(x==3)))
count.3cec

count.cec <- apply(controlExpCoderIssues, 2, function(x) sum(x %in% c(1,2,3)))
count.cec

#--------------
# plot ExpCoder
#--------------

par(mfrow=c(2,2))    # set the plotting area into a 2*2 array
#par(mfrow=c(1,1))
par(cex=0.4, mai=c(0.5,0.5,0.5,0.5))
par(las=2)

#par(cex=0.4)
barplot(count.1tec, main="1st option treatment exp coder", horiz=TRUE,)
pie(count.1tec, main="1st option treatment exp coder", radius=1)

hist(count.1tec, col="violet")
boxplot(count.1tec, horizontal=TRUE)

#-------
barplot(count.2tec, main="2nd option treatment exp coder")
pie(count.2tec, main="2nd option treatment exp coder", radius=1)

hist(count.2tec, col="darkgreen")
boxplot(count.2tec, horizontal=TRUE)

#-------
barplot(count.3tec, main="3rd option treatment exp coder")
pie(count.3tec, main="3rd option treatment exp coder", radius=1)

hist(count.3tec, col="blue")
boxplot(count.3tec, horizontal=TRUE)

#-------
barplot(count.tec, main="All treatment exp coder")
pie(count.tec, main="All options treatment exp coder", radius=1)

hist(count.tec, col="yellow")
boxplot(count.tec, horizontal=TRUE)

#-------------
# grids
#--------------
par(mfrow=c(1,1))
df1ec <- data.frame(x = count.1tec, y = c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370"))
ggplot(df1ec, aes(x, y)) +
  geom_point()+
  labs(x = "1st counts treatment exp coder", y = "issues")

df2ec <- data.frame(x = count.2tec, y = c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370"))
ggplot(df2ec, aes(x, y)) +
  geom_point()+
  labs(x = "2nd counts treatment exp coder", y = "issues")

df3ec <- data.frame(x = count.3tec, y = c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370"))
ggplot(df3ec, aes(x, y)) +
  geom_point()+
  labs(x = "3rd counts treatment exp coder", y = "issues")

df4ec <- data.frame(x = count.tec, y = c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370"))
ggplot(df4ec, aes(x, y)) +
  geom_point()+
  labs(x = "All counts treatment exp coder", y = "issues")

#control---------------
par(mfrow=c(2,2))    # set the plotting area into a 2*2 array
#par(mfrow=c(1,1))
par(cex=0.4, mai=c(0.5,0.5,0.5,0.5))
par(las=2)

#par(cex=0.4)
barplot(count.1cec, main="1st option control exp coder", horiz=TRUE,)
pie(count.1cec, main="1st option control exp coder", radius=1)

hist(count.1cec, col="violet")
boxplot(count.1cec, horizontal=TRUE)

#-------
barplot(count.2cec, main="2nd option control exp coder")
pie(count.2cec, main="2nd option control exp coder", radius=1)

hist(count.2cec, col="darkgreen")
boxplot(count.2cec, horizontal=TRUE)

#-------
barplot(count.3cec, main="3rd option control exp coder")
pie(count.3cec, main="3rd option control exp coder", radius=1)

hist(count.3cec, col="blue")
boxplot(count.3cec, horizontal=TRUE)

#-------
barplot(count.cec, main="All options control exp coder")
pie(count.cec, main="All options control exp coder", radius=1)

hist(count.cec, col="yellow")
boxplot(count.cec, horizontal=TRUE)

#-------------
par(mfrow=c(1,1))
df1cec <- data.frame(x = count.1cec, y = c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370"))
ggplot(df1cec, aes(x, y)) +
  geom_point()+
  labs(x = "1st counts control exp coder", y = "issues")

df2cec <- data.frame(x = count.2cec, y = c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370"))
ggplot(df2cec, aes(x, y)) +
  geom_point()+
  labs(x = "2nd counts control exp coder", y = "issues")

df3cec <- data.frame(x = count.3cec, y = c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370"))
ggplot(df3cec, aes(x, y)) +
  geom_point()+
  labs(x = "3rd counts control exp coder", y = "issues")

df4cec <- data.frame(x = count.cec, y = c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370"))
ggplot(df4cec, aes(x, y)) +
  geom_point()+
  labs(x = "All counts control exp coder", y = "issues")

