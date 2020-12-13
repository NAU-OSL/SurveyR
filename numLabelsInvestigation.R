model_PUC_1 <- matrix(c(5679,5653,4430,5532,5486,5022,5254,4612,5194,4629,4816,4977,5002,4913,4864,4306,4360,4233,3994,628,2319,2370,
                         0,1,4,1,2,2,1,3,1,3,3,1,3,2,1,3,0,2,1,3,2,1,
                         1,0,2,0,0,2,2,0,2,0,1,1,2,2,0,4,0,0,2,3,2,1,
                         3,0,5,0,0,4,5,0,2,0,1,1,4,4,0,10,0,0,4,7,3,1), ncol = 22,nrow = 4, byrow = TRUE)

model_PUC_1 <- t(model_PUC_1)
PUC_df_1 <- as.data.frame(model_PUC_1) 
PUC_df_1
colnames(PUC_df_1)


names(PUC_df_1)[names(PUC_df_1) == "V1"] <- "IssueNumber"
names(PUC_df_1)[names(PUC_df_1) == "V2"] <- "numLabels"
names(PUC_df_1)[names(PUC_df_1) == "V3"] <- "numOptions"
names(PUC_df_1)[names(PUC_df_1) == "V4"] <- "optionsWeighted"
colnames(PUC_df_1)

class(PUC_df_1$IssueNumber) 
PUC_df_1$IssueNumber <- as.character(PUC_df_1$IssueNumber)
class(PUC_df_1$IssueNumber) 

#lmod_PUC_1 <- lm(data = PUC_df_1, numLabels ~ numOptions)
#lmod_PUC_1
#summary(lmod_PUC_1)

#lmod_PUC_1 <- lm(data = PUC_df_1, numLabels ~ optionsWeighted)
#lmod_PUC_1
#summary(lmod_PUC_1)

lmod_PUC_1 <- lm(data = PUC_df_1, optionsWeighted ~ numLabels)
lmod_PUC_1
summary(lmod_PUC_1)

model_PUC <- matrix(c(5679,5653,4430,5532,5486,5022,5254,4612,5194,4629,4816,4977,5002,4913,4864,4306,4360,4233,3994,628,2319,2370,
                      0,	1,	4,	1,	2,	2,	1,	3,	1,	3,	3,	1,	3,	2,	1,	3,	0,	2,	2,	3,	2,	1,
                      2,	2,	3,	3,	2,	4,	3,	3,	5,	4,	5,	1,	4,	3,	5,	5,	1,	1,	3,	6,	6,	6,
                      2,	3,	7,	4,	4,	6,	4,	6,	6,	7,	8,	2,	7,	5,	6,	8,	1,	3,	5,	9,	8,	7,
                      2,	1,	0,	0,	0,	0,	0,	6,	2,	0,	0,	0,	3,	0,	3,	4,	0,	0,	3,	3,	0,	2,
                      4,	2,	0,	0,	0,	0,	0,	2,	5,	0,	0,	3,	6,	0,	1,	10,	0,	0,	7,	5,	0,	3
                      ), ncol = 22,nrow = 6, byrow = TRUE)

model_PUC <- t(model_PUC)
PUC_df <- as.data.frame(model_PUC) 
PUC_df
colnames(PUC_df)

names(PUC_df)[names(PUC_df) == "V1"] <- "IssueNumber"
names(PUC_df)[names(PUC_df) == "V2"] <- "numLabels"
names(PUC_df)[names(PUC_df) == "V3"] <- "numLabelsAPI"
names(PUC_df)[names(PUC_df) == "V4"] <- "totalLabels"
names(PUC_df)[names(PUC_df) == "V5"] <- "numOptions"
names(PUC_df)[names(PUC_df) == "V6"] <- "optionsWeighted"
colnames(PUC_df)

class(PUC_df$IssueNumber) 
PUC_df$IssueNumber <- as.character(PUC_df$IssueNumber)
class(PUC_df$IssueNumber)

#lmod_PUC <- lm(data = PUC_df, numLabels ~ numOptions)
#lmod_PUC
#summary(lmod_PUC)

#lmod_PUC <- lm(data = PUC_df, numLabels ~ optionsWeighted)
#lmod_PUC
#summary(lmod_PUC)

#lmod_PUC <- lm(data = PUC_df, numOptions  ~ numLabels)
#lmod_PUC
#summary(lmod_PUC)

#lmod_PUC <- lm(data = PUC_df, optionsWeighted  ~ numLabels)
#lmod_PUC
#summary(lmod_PUC)

#lmod_PUC <- lm(data = PUC_df, numOptions  ~ numLabelsAPI)
#lmod_PUC
#summary(lmod_PUC)

#lmod_PUC <- lm(data = PUC_df, optionsWeighted  ~ numLabelsAPI)
#lmod_PUC
#summary(lmod_PUC)

#lmod_PUC <- lm(data = PUC_df, numOptions  ~ totalLabels)
#lmod_PUC
#summary(lmod_PUC)

#lmod_PUC <- lm(data = PUC_df, optionsWeighted  ~ totalLabels)
#lmod_PUC
#summary(lmod_PUC)


#---------------------------- INFNET JAVA

model_INFNET_1 <- matrix(c(5679,5653,4430,5532,5486,5022,5254,4612,5194,4629,4816,4977,5002,4913,4864,4306,4360,4233,3994,628,2319,2370,
                        0,  1,  4,  1,  2,  2,  1,  3,  1,  3,  3,  1,  3,  2,  1,  3,  0,  2,  1,  3,  2,  1,
                        2,	1,	1,	0,	2,	1,	1,	2,	1,	1,	0,	2,	1,	1,	0,	3,	0,	3,	3,	0,	2,	0,
                        6,	1,	1,	0,	4,	1,	3,	5,	1,	1,	0,	3,	2,	3,	0,	6,	0,	7,	5,	0,	5,	0), ncol = 22,nrow = 4, byrow = TRUE)

model_INFNET_1 <- t(model_INFNET_1)
INFNET_df_1 <- as.data.frame(model_INFNET_1) 
INFNET_df_1
colnames(INFNET_df_1)


names(INFNET_df_1)[names(INFNET_df_1) == "V1"] <- "IssueNumber"
names(INFNET_df_1)[names(INFNET_df_1) == "V2"] <- "numLabels"
names(INFNET_df_1)[names(INFNET_df_1) == "V3"] <- "numOptions"
names(INFNET_df_1)[names(INFNET_df_1) == "V4"] <- "optionsWeighted"
colnames(INFNET_df_1)

class(INFNET_df_1$IssueNumber) 
INFNET_df_1$IssueNumber <- as.character(INFNET_df_1$IssueNumber)
class(INFNET_df_1$IssueNumber) 

lmod_INFNET_1 <- lm(data = INFNET_df_1, optionsWeighted  ~ numLabels)
lmod_INFNET_1
summary(lmod_INFNET_1)

lmod_INFNET_1 <- lm(data = INFNET_df_1, numOptions  ~  numLabels)
lmod_INFNET_1
summary(lmod_INFNET_1)

# ------------------

model_INFNET <- matrix(c(5679,5653,4430,5532,5486,5022,5254,4612,5194,4629,4816,4977,5002,4913,4864,4306,4360,4233,3994,628,2319,2370,
                      0,	1,	4,	1,	2,	2,	1,	3,	1,	3,	3,	1,	3,	2,	1,	3,	0,	2,	2,	3,	2,	1,
                      2,	2,	3,	3,	2,	4,	3,	3,	5,	4,	5,	1,	4,	3,	5,	5,	1,	1,	3,	6,	6,	6,
                      2,	3,	7,	4,	4,	6,	4,	6,	6,	7,	8,	2,	7,	5,	6,	8,	1,	3,	5,	9,	8,	7,
                      2,	0,	1,	2,	2,	1,	0,	0,	0,	1,	1,	2,	0,	0,	1,	1,	0,	2,	2,	0,	0,	0,
                      4,	0,	3,	3,	3,	1,	0,	0,	0,	3,	1,	4,	0,	0,	1,	3,	0,	4,	5,	0,	0,	0
), ncol = 22,nrow = 6, byrow = TRUE)

model_INFNET <- t(model_INFNET)
INFNET_df <- as.data.frame(model_INFNET) 
INFNET_df
colnames(INFNET_df)

names(INFNET_df)[names(INFNET_df) == "V1"] <- "IssueNumber"
names(INFNET_df)[names(INFNET_df) == "V2"] <- "numLabels"
names(INFNET_df)[names(INFNET_df) == "V3"] <- "numLabelsAPI"
names(INFNET_df)[names(INFNET_df) == "V4"] <- "totalLabels"
names(INFNET_df)[names(INFNET_df) == "V5"] <- "numOptions"
names(INFNET_df)[names(INFNET_df) == "V6"] <- "optionsWeighted"
colnames(INFNET_df)

class(INFNET_df$IssueNumber) 
INFNET_df$IssueNumber <- as.character(INFNET_df$IssueNumber)
class(INFNET_df$IssueNumber)

lmod_INFNET <- lm(data = INFNET_df, numOptions  ~ numLabels)
lmod_INFNET
summary(lmod_INFNET)

lmod_INFNET <- lm(data = INFNET_df, optionsWeighted  ~ numLabels)
lmod_INFNET
summary(lmod_INFNET)

lmod_INFNET <- lm(data = INFNET_df, numOptions  ~ numLabelsAPI)
lmod_INFNET
summary(lmod_INFNET)

lmod_INFNET <- lm(data = INFNET_df, optionsWeighted  ~ numLabelsAPI)
lmod_INFNET
summary(lmod_INFNET)

lmod_INFNET <- lm(data = INFNET_df, numOptions  ~ totalLabels)
lmod_INFNET
summary(lmod_INFNET)

lmod_INFNET <- lm(data = INFNET_df, optionsWeighted  ~ totalLabels)
lmod_INFNET
summary(lmod_INFNET)

