#-----------------------------

#Select columns from hotmap

treatAllLabels <- treatAll[c("X","Q50_4","Q50_8","Q50_9","Q50_12")]

treatAllNonLabel <- treatAll[c("X","Q50_1","Q50_2","Q50_3","Q50_5","Q50_6","Q50_7","Q50_10","Q50_11")]

#select columns form relevancy

treatAllAPIrelevant <- treatAll[c("X","ui","io","google.commom","database","network","logging","test","os")]

treatAllNonAPIrelevant <- treatAll[c("X","ui","groups","external.files","maintable","type..bug","type..performance","good.first.issue","fetcher","entry.editor","preferences", "type..code.quality","type..enhancement", "import", "project.GSoC", "type..feature", "keywords") ]

#Select columns from hotmap

controlAllLabels <- controlAll[c("X","Q50_4","Q50_8","Q50_9","Q50_12")]

controlAllNonLabel <- controlAll[c("X","Q50_1","Q50_2","Q50_3","Q50_5","Q50_6","Q50_7","Q50_10","Q50_11")]

#select columns form relevancy

#controlAllAPIrelevant <- controlAll[c("X","ui","io","google.commom","database","network","logging","test","os")]

controlAllNonAPIrelevant <- controlAll[c("X","ui","groups","external.files","maintable","type..bug","type..performance","good.first.issue","fetcher","entry.editor","preferences", "type..code.quality","type..enhancement", "import", "project.GSoC", "type..feature", "keywords") ]


# sum labels On and Off from the hot map
# treatment
numOnLabelsTreat <- apply(treatAllLabels=="On",1,sum)
numOnLabelsTreat

treatAll$numOnLabelsTreat <- numOnLabelsTreat
treatAll$numOnLabelsTreat

numOffLabelsTreat <- apply(treatAllNonLabel=="Off",1,sum)
numOffLabelsTreat

treatAll$numOffLabelsTreat <- numOffLabelsTreat
treatAll$numOffLabelsTreat 

# sum labels relevancy from the matrix

numAPIrelevantTreat <- apply(treatAllAPIrelevant=="relevant",1,sum)
numAPIrelevantTreat

treatAll$numAPIrelevantTreat <- numAPIrelevantTreat
treatAll$numAPIrelevantTreat

numNonAPIrelevantTreat <- apply(treatAllNonAPIrelevant=="relevant",1,sum)
numNonAPIrelevantTreat

treatAll$numNonAPIrelevantTreat <- numNonAPIrelevantTreat
treatAll$numNonAPIrelevantTreat

treatAllReg <- treatAll[c("Q7","Q8","Q9","Q10","Q11","Q12","numNonAPIrelevantTreat","numAPIrelevantTreat","numOffLabelsTreat","numOnLabelsTreat")]

# control

numOnLabelsControl <- apply(controlAllLabels=="On",1,sum)
numOnLabelsControl

controlAll$numOnLabelsControl <- numOnLabelsControl
controlAll$numOnLabelsControl

numOffLabelsControl <- apply(controlAllNonLabel=="Off",1,sum)
numOffLabelsControl

controlAll$numOffLabelsControl <- numOffLabelsControl
controlAll$numOffLabelsControl

# sum labels relevancy from the matrix

#OBS control dont have API relevant!!!

numNonAPIrelevantControl <- apply(controlAllNonAPIrelevant=="relevant",1,sum)
numNonAPIrelevantControl

controlAll$numNonAPIrelevantControl <- numNonAPIrelevantControl
controlAll$numNonAPIrelevantControl

controlAllReg <- controlAll[c("Q7","Q8","Q9","Q10","Q11","Q12","numNonAPIrelevantControl","numOffLabelsControl","numOnLabelsControl")]

#------------------------------------
# trying linear fist
#----------------------------------
# regressions treat - 

# Num labels in Hot Map and Relevants implies a exp coder?
lmExpCoderT <- lm(data = treatAll, Q8 ~ numOnLabelsTreat + numAPIrelevantTreat)
summary(lmExpCoderT)

# Num labels in Hot Map and Relevants implies an coder with afinity in Java?
lmAfiT <- lm(data = treatAll, Q9 ~ numOnLabelsTreat + numAPIrelevantTreat)
summary(lmAfiT)

lmAfiT <- lm(data = treatAll, Q9 ~ numAPIrelevantTreat)
summary(lmAfiT)

#ExpCoder, Afinity implies num Labels in Hot Map?
lmHMT <- lm(data = treatAll, numOnLabelsTreat ~ Q7 + Q8 + Q9 + Q10 + Q11 + Q12)
summary(lmHMT)

# only java
lmHMT <- lm(data = treatAll, numOnLabelsTreat ~ Q9)
summary(lmHMT)

# regressions control

# Num labels in Hot Map and Relevants implies a exp coder? (using NonAPI values)
lmExpCoderC <- lm(data = controlAll, Q8 ~ numOnLabelsControl + numNonAPIrelevantControl)
summary(lmExpCoderC)

# Num labels in Hot Map and Relevants implies an coder with afinity in Java? (using NonAPI values)
lmAfiC <- lm(data = controlAll, Q9 ~ numOnLabelsControl + numNonAPIrelevantControl)
summary(lmAfiC)

lmAfiC <- lm(data = controlAll, Q9 ~ numNonAPIrelevantControl)
summary(lmAfiC)

#ExpCoder, Afinity implies num Labels in Hot Map?
lmHMC <- lm(data = controlAll, numOnLabelsControl ~ Q7 + Q8 + Q9 + Q10 + Q11 + Q12)
summary(lmHMC)

# only java
lmHMC <- lm(data = controlAll, numOnLabelsControl ~ Q7)
summary(lmHMC)

pairs(x=treatAllReg)
pairs(x=controlAllReg)

#----------------------------
# poisson
#----------------------------

# treatment

# Num labels in Hot Map and Relevants implies a exp coder?
poislmExpCoderT <- glm(data = treatAll, Q8 ~ numOnLabelsTreat + numAPIrelevantTreat, family=poisson(link=log))
summary(poislmExpCoderT)

plot(sqrt(residuals(poislmExpCoderT, type="response")^2) ~
       sqrt(fitted(poislmExpCoderT)),
     ylab=expression(group("|",y[i] - hat(mu)[i],"|")),
     xlab=expression(sqrt(hat(mu)[i])))
abline(c(0,1))

plot(residuals(poislmExpCoderT, type="pearson") ~
     fitted(poislmExpCoderT), ylab="Pearson residuals",xlab=expression(hat(mu)[i]))
abline(h=0, lty=2) 



poislmExpCoderT1 <- glm(data = treatAll, Q8 ~ numOnLabelsTreat , family=poisson(link=log))
summary(poislmExpCoderT1)

anova(poislmExpCoderT,poislmExpCoderT1)

plot(sqrt(residuals(poislmExpCoderT1, type="response")^2) ~
       sqrt(fitted(poislmExpCoderT1)),
     ylab=expression(group("|",y[i] - hat(mu)[i],"|")),
     xlab=expression(sqrt(hat(mu)[i])))
abline(c(0,1))

plot(residuals(poislmExpCoderT1, type="pearson") ~
       fitted(poislmExpCoderT1), ylab="Pearson residuals",xlab=expression(hat(mu)[i]))
abline(h=0, lty=2) 

# Num labels in Hot Map and Relevants implies an coder with afinity in Java?
poislmAfiT <- glm(data = treatAll, Q9 ~ numOnLabelsTreat + numAPIrelevantTreat, family=poisson(link=log))
summary(poislmAfiT)

poislmAfiT1 <- glm(data = treatAll, Q9 ~ numAPIrelevantTreat, family=poisson(link=log))
summary(poislmAfiT1)

#ExpCoder, Afinity, contributions implies num Labels in Hot Map?
poislmHMT <- glm(data = treatAll, numOnLabelsTreat ~ Q7 + Q8 + Q9 + Q10 + Q11 + Q12, family=poisson(link=log))
summary(poislmHMT)

# only java
poislmHMT1 <- glm(data = treatAll, numOnLabelsTreat ~ Q9, family=poisson(link=log))
summary(poislmHMT1)

#ExpCoder, Afinity, contributions implies num relevant new Labels ?
poislmLT <- glm(data = treatAll, numAPIrelevantTreat ~ Q7 + Q8 + Q9 + Q10 + Q11 + Q12, family=poisson(link=log))
summary(poislmLT)

plot(sqrt(residuals(poislmLT, type="response")^2) ~
       sqrt(fitted(poislmLT)),
     ylab=expression(group("|",y[i] - hat(mu)[i],"|")),
     xlab=expression(sqrt(hat(mu)[i])))
abline(c(0,1))

plot(residuals(poislmLT, type="pearson") ~
       fitted(poislmLT), ylab="Pearson residuals",xlab=expression(hat(mu)[i]))
abline(h=0, lty=2) 

# only contributions
poislmLT1 <- glm(data = treatAll, numAPIrelevantTreat ~ Q7, family=poisson(link=log))
summary(poislmLT1)

# only contributions and ExpCoder
poislmLT2 <- glm(data = treatAll, numAPIrelevantTreat ~ Q7 + Q8, family=poisson(link=log))
summary(poislmLT2)

# only contributions and java
poislmLT3 <- glm(data = treatAll, numAPIrelevantTreat ~ Q7 + Q9, family=poisson(link=log))
summary(poislmLT3)

# only contributions, ExpCoder and java
poislmLT4 <- glm(data = treatAll, numAPIrelevantTreat ~ Q7 + Q8 + Q9, family=poisson(link=log))
summary(poislmLT4)

# only afinity
poislmLT5 <- glm(data = treatAll, numAPIrelevantTreat ~ Q9 + Q10 + Q11 + Q12, family=poisson(link=log))
summary(poislmLT5)

# only javaFX
poislmLT6 <- glm(data = treatAll, numAPIrelevantTreat ~ Q12, family=poisson(link=log))
summary(poislmLT6)

anova(poislmLT,poislmLT6)

plot(sqrt(residuals(poislmLT6, type="response")^2) ~
       sqrt(fitted(poislmLT6)),
     ylab=expression(group("|",y[i] - hat(mu)[i],"|")),
     xlab=expression(sqrt(hat(mu)[i])))
abline(c(0,1))

plot(residuals(poislmLT6, type="pearson") ~
       fitted(poislmLT6), ylab="Pearson residuals",xlab=expression(hat(mu)[i]))
abline(h=0, lty=2) 

# control

# Num labels in Hot Map and Relevants implies a exp coder?
poislmExpCoderC <- glm(data = controlAll, Q8 ~ numOnLabelsControl + numNonAPIrelevantControl, family=poisson(link=log))
summary(poislmExpCoderC)

plot(residuals(poislmExpCoderC, type="pearson") ~
       fitted(poislmExpCoderC), ylab="Pearson residuals",xlab=expression(hat(mu)[i]))
abline(h=0, lty=2) 

# SEEMS TO HAVE OVERDISPERSION!

plot(sqrt(residuals(poislmExpCoderC, type="response")^2) ~
       sqrt(fitted(poislmExpCoderC)),
     ylab=expression(group("|",y[i] - hat(mu)[i],"|")),
     xlab=expression(sqrt(hat(mu)[i])))
abline(c(0,1))

#LACK OF FIT!

# Num labels in Hot Map and Relevants implies an coder with afinity in Java?
poislmAfiC <- glm(data = controlAll, Q9 ~ numOnLabelsControl + numNonAPIrelevantControl, family=poisson(link=log))
summary(poislmAfiC)

poislmAfiC <- glm(data = controlAll, Q9 ~ numNonAPIrelevantControl, family=poisson(link=log))
summary(poislmAfiC)

#ExpCoder, Afinity implies num Labels in Hot Map?
poislmHMC <- glm(data = controlAll, numOnLabelsControl ~ Q7 + Q8 + Q9 + Q10 + Q11 + Q12, family=poisson(link=log))
summary(poislmHMC)

# only java
poislmHMC <- glm(data = controlAll, numOnLabelsControl ~ Q9, family=poisson(link=log))
summary(poislmHMC)
