colnames(treatAll)

#cor(treatAll[,4:5])

library(GGally)
ggcorr(treatAll)

ggcorr(treatAll, 
       label = TRUE, name ="Demog Control",
       label_alpha = TRUE)

#ggcorr(controlAll)

#ggcorr(controlAll, 
#       label = TRUE, 
#       label_alpha = TRUE)

#typeof(treatAll$Q50_1)

#-------------
# treatment
#------------

treatAllIssues1Half <- treatAll[c("Q39_1","Q39_2","Q39_3","Q39_4","Q39_5","Q39_6","Q39_7","Q39_8","Q39_9","Q39_10","Q39_11")]
colnames(treatAllIssues1Half) <- c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816")
colnames(treatAllIssues1Half)

treatAllIssues2Half <- treatAll[c("Q39_12","Q39_13","Q39_14","Q39_15","Q39_16","Q39_17","Q39_18","Q39_19","Q39_20","Q39_21","Q39_22")]
colnames(treatAllIssues2Half) <- c("4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370")
colnames(treatAllIssues2Half)

treatAllIssues <- treatAll[c("Q39_1","Q39_2","Q39_3","Q39_4","Q39_5","Q39_6","Q39_7","Q39_8","Q39_9","Q39_10","Q39_11","Q39_12","Q39_13","Q39_14","Q39_15","Q39_16","Q39_17","Q39_18","Q39_19","Q39_20","Q39_21","Q39_22")]
colnames(treatAllIssues) <- c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370")
colnames(treatAllIssues)


count.tall1 <- apply(treatAllIssues, 2, function(x) length(which(x=="1")))
count.tall1
count.tall2 <- apply(treatAllIssues, 2, function(x) length(which(x=="2")))
count.tall2
count.tall3 <- apply(treatAllIssues, 2, function(x) length(which(x=="3")))
count.tall3


treatAllNewLabel <- treatAll[c("ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os")]
colnames(treatAllNewLabel) <- c("ui",	"io",	"gc",	"db",	"net",	"log",	"test",	"os")
colnames(treatAllNewLabel)

count.tallnewrel <- apply(treatAllNewLabel, 2, function(x) length(which(x=="relevant")))
count.tallnewrel
count.tallnewnotrel <- apply(treatAllNewLabel, 2, function(x) length(which(x=="not relevant")))
count.tallnewnotrel


treatAllOldLabel <- treatAll[c("groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
colnames(treatAllOldLabel) <- c("group",	"ext",	"main",	"tbug",	"tperf",	"1issue",	"fetch",	"edit",	"pref",	"tqual",	"tenha",	"imp",	"GSoC",	"tfeat",	"key")
colnames(treatAllOldLabel)

count.talloldrel <- apply(treatAllOldLabel, 2, function(x) length(which(x=="relevant")))
count.talloldrel
count.talloldnotrel <- apply(treatAllOldLabel, 2, function(x) length(which(x=="not relevant")))
count.talloldnotrel

treatAllHotMap <- treatAll[c("Q50_1","Q50_2","Q50_3","Q50_4","Q50_5","Q50_6","Q50_7","Q50_8","Q50_9","Q50_10","Q50_11","Q50_12")]
colnames(treatAllHotMap) <- c("title","auth","body","Stag","code","com","part","btag1","btag2","link","Ltitle","Ltag")
colnames(treatAllHotMap)

count.tallon <- apply(treatAllHotMap, 2, function(x) length(which(x=="On")))
count.tallon
count.talloff <- apply(treatAllHotMap, 2, function(x) length(which(x=="Off")))
count.talloff


count.tall123 <- apply(treatAllIssues, 2, function(x) length(which(x=="1" | x=="2" | x=="3")))
count.tall123

par(mfrow=c(2,2))
par(cex=0.7, mai=c(0.5,0.5,0.5,0.5))
par(las=2)

barplot(count.tall123, main=" All Issues Treatment")
barplot(count.tall1, main="1st Issues Treatment")
barplot(count.tall2, main="2nd Issues Treatment")
barplot(count.tall3, main="3rd Issues Treatment")

par(mfrow=c(2,2))
par(cex=0.7, mai=c(0.5,0.5,0.5,0.5))
par(las=2)

barplot(count.tallnewrel, main="new labels - relevant")
barplot(count.tallon, main="hot map - On")

barplot(count.tallnewnotrel, main="new labels - not relevant")
barplot(count.talloff, main="hot map - Off")


# binary?

treatAllBin <- data.frame(treatAll)

# hot map to binary

treatAllBin$Q50_1[treatAllBin$Q50_1 == "On"] <- "1"
treatAllBin$Q50_2[treatAllBin$Q50_2 == "On"] <- "1"
treatAllBin$Q50_3[treatAllBin$Q50_3 == "On"] <- "1"
treatAllBin$Q50_4[treatAllBin$Q50_4 == "On"] <- "1"
treatAllBin$Q50_5[treatAllBin$Q50_5 == "On"] <- "1"
treatAllBin$Q50_6[treatAllBin$Q50_6 == "On"] <- "1"
treatAllBin$Q50_7[treatAllBin$Q50_7 == "On"] <- "1"
treatAllBin$Q50_8[treatAllBin$Q50_8 == "On"] <- "1"
treatAllBin$Q50_9[treatAllBin$Q50_9 == "On"] <- "1"
treatAllBin$Q50_10[treatAllBin$Q50_10 == "On"] <- "1"
treatAllBin$Q50_11[treatAllBin$Q50_11 == "On"] <- "1"
treatAllBin$Q50_12[treatAllBin$Q50_12 == "On"] <- "1"

treatAllBin$Q50_1[treatAllBin$Q50_1 == "Off"] <- "0"
treatAllBin$Q50_2[treatAllBin$Q50_2 == "Off"] <- "0"
treatAllBin$Q50_3[treatAllBin$Q50_3 == "Off"] <- "0"
treatAllBin$Q50_4[treatAllBin$Q50_4 == "Off"] <- "0"
treatAllBin$Q50_5[treatAllBin$Q50_5 == "Off"] <- "0"
treatAllBin$Q50_6[treatAllBin$Q50_6 == "Off"] <- "0"
treatAllBin$Q50_7[treatAllBin$Q50_7 == "Off"] <- "0"
treatAllBin$Q50_8[treatAllBin$Q50_8 == "Off"] <- "0"
treatAllBin$Q50_9[treatAllBin$Q50_9 == "Off"] <- "0"
treatAllBin$Q50_10[treatAllBin$Q50_10 == "Off"] <- "0"
treatAllBin$Q50_11[treatAllBin$Q50_11 == "Off"] <- "0"
treatAllBin$Q50_12[treatAllBin$Q50_12 == "Off"] <- "0"

# labels to binary

treatAllBin$ui[treatAllBin$ui == "relevant"] <- "1"
treatAllBin$io[treatAllBin$io == "relevant"] <- "1"
treatAllBin$google.commom[treatAllBin$google.commom == "relevant"] <- "1"
treatAllBin$database[treatAllBin$database == "relevant"] <- "1"
treatAllBin$network[treatAllBin$network == "relevant"] <- "1"
treatAllBin$logging[treatAllBin$logging == "relevant"] <- "1"
treatAllBin$test[treatAllBin$test == "relevant"] <- "1"
treatAllBin$os[treatAllBin$os == "relevant"] <- "1"
treatAllBin$groups[treatAllBin$groups == "relevant"] <- "1"
treatAllBin$external.files[treatAllBin$external.files == "relevant"] <- "1"
treatAllBin$maintable[treatAllBin$maintable == "relevant"] <- "1"
treatAllBin$type..bug[treatAllBin$type..bug == "relevant"] <- "1"
treatAllBin$type..performance[treatAllBin$type..performance == "relevant"] <- "1"
treatAllBin$good.first.issue[treatAllBin$good.first.issue == "relevant"] <- "1"
treatAllBin$fetcher[treatAllBin$fetcher == "relevant"] <- "1"
treatAllBin$entry.editor[treatAllBin$entry.editor == "relevant"] <- "1"
treatAllBin$preferences[treatAllBin$preferences == "relevant"] <- "1"
treatAllBin$type..code.quality[treatAllBin$type..code.quality == "relevant"] <- "1"
treatAllBin$type..enhancement[treatAllBin$type..enhancement == "relevant"] <- "1"
treatAllBin$import[treatAllBin$import == "relevant"] <- "1"
treatAllBin$project.GSoC[treatAllBin$project.GSoC == "relevant"] <- "1"
treatAllBin$type..feature[treatAllBin$type..feature == "relevant"] <- "1"
treatAllBin$keywords[treatAllBin$keywords == "relevant"] <- "1"

treatAllBin$ui[treatAllBin$ui == "not relevant"] <- "0"
treatAllBin$io[treatAllBin$io == "not relevant"] <- "0"
treatAllBin$google.commom[treatAllBin$google.commom == "not relevant"] <- "0"
treatAllBin$database[treatAllBin$database == "not relevant"] <- "0"
treatAllBin$network[treatAllBin$network == "not relevant"] <- "0"
treatAllBin$logging[treatAllBin$logging == "not relevant"] <- "0"
treatAllBin$test[treatAllBin$test == "not relevant"] <- "0"
treatAllBin$os[treatAllBin$os == "not relevant"] <- "0"
treatAllBin$groups[treatAllBin$groups == "not relevant"] <- "0"
treatAllBin$external.files[treatAllBin$external.files == "not relevant"] <- "0"
treatAllBin$maintable[treatAllBin$maintable == "not relevant"] <- "0"
treatAllBin$type..bug[treatAllBin$type..bug == "not relevant"] <- "0"
treatAllBin$type..performance[treatAllBin$type..performance == "not relevant"] <- "0"
treatAllBin$good.first.issue[treatAllBin$good.first.issue == "not relevant"] <- "0"
treatAllBin$fetcher[treatAllBin$fetcher == "not relevant"] <- "0"
treatAllBin$entry.editor[treatAllBin$entry.editor == "not relevant"] <- "0"
treatAllBin$preferences[treatAllBin$preferences == "not relevant"] <- "0"
treatAllBin$type..code.quality[treatAllBin$type..code.quality == "not relevant"] <- "0"
treatAllBin$type..enhancement[treatAllBin$type..enhancement == "not relevant"] <- "0"
treatAllBin$import[treatAllBin$import == "not relevant"] <- "0"
treatAllBin$project.GSoC[treatAllBin$project.GSoC == "not relevant"] <- "0"
treatAllBin$type..feature[treatAllBin$type..feature == "not relevant"] <- "0"
treatAllBin$keywords[treatAllBin$keywords == "not relevant"] <- "0"

# issues to binary

treatAllBin$Q39_1[treatAllBin$Q39_1 == "2"] <- "1"
treatAllBin$Q39_2[treatAllBin$Q39_2 == "2"] <- "1"
treatAllBin$Q39_3[treatAllBin$Q39_3 == "2"] <- "1"
treatAllBin$Q39_4[treatAllBin$Q39_4 == "2"] <- "1"
treatAllBin$Q39_5[treatAllBin$Q39_5 == "2"] <- "1"
treatAllBin$Q39_6[treatAllBin$Q39_6 == "2"] <- "1"
treatAllBin$Q39_7[treatAllBin$Q39_7 == "2"] <- "1"
treatAllBin$Q39_8[treatAllBin$Q39_8 == "2"] <- "1"
treatAllBin$Q39_9[treatAllBin$Q39_9 == "2"] <- "1"
treatAllBin$Q39_10[treatAllBin$Q39_10 == "2"] <- "1"
treatAllBin$Q39_11[treatAllBin$Q39_11 == "2"] <- "1"
treatAllBin$Q39_12[treatAllBin$Q39_12 == "2"] <- "1"
treatAllBin$Q39_13[treatAllBin$Q39_13 == "2"] <- "1"
treatAllBin$Q39_14[treatAllBin$Q39_14 == "2"] <- "1"
treatAllBin$Q39_15[treatAllBin$Q39_15 == "2"] <- "1"
treatAllBin$Q39_16[treatAllBin$Q39_16 == "2"] <- "1"
treatAllBin$Q39_17[treatAllBin$Q39_17 == "2"] <- "1"
treatAllBin$Q39_18[treatAllBin$Q39_18 == "2"] <- "1"
treatAllBin$Q39_19[treatAllBin$Q39_19 == "2"] <- "1"
treatAllBin$Q39_20[treatAllBin$Q39_20 == "2"] <- "1"
treatAllBin$Q39_21[treatAllBin$Q39_21 == "2"] <- "1"
treatAllBin$Q39_22[treatAllBin$Q39_22 == "2"] <- "1"

treatAllBin$Q39_1[treatAllBin$Q39_1 == "3"] <- "1"
treatAllBin$Q39_2[treatAllBin$Q39_2 == "3"] <- "1"
treatAllBin$Q39_3[treatAllBin$Q39_3 == "3"] <- "1"
treatAllBin$Q39_4[treatAllBin$Q39_4 == "3"] <- "1"
treatAllBin$Q39_5[treatAllBin$Q39_5 == "3"] <- "1"
treatAllBin$Q39_6[treatAllBin$Q39_6 == "3"] <- "1"
treatAllBin$Q39_7[treatAllBin$Q39_7 == "3"] <- "1"
treatAllBin$Q39_8[treatAllBin$Q39_8 == "3"] <- "1"
treatAllBin$Q39_9[treatAllBin$Q39_9 == "3"] <- "1"
treatAllBin$Q39_10[treatAllBin$Q39_10 == "3"] <- "1"
treatAllBin$Q39_11[treatAllBin$Q39_11 == "3"] <- "1"
treatAllBin$Q39_12[treatAllBin$Q39_12 == "3"] <- "1"
treatAllBin$Q39_13[treatAllBin$Q39_13 == "3"] <- "1"
treatAllBin$Q39_14[treatAllBin$Q39_14 == "3"] <- "1"
treatAllBin$Q39_15[treatAllBin$Q39_15 == "3"] <- "1"
treatAllBin$Q39_16[treatAllBin$Q39_16 == "3"] <- "1"
treatAllBin$Q39_17[treatAllBin$Q39_17 == "3"] <- "1"
treatAllBin$Q39_18[treatAllBin$Q39_18 == "3"] <- "1"
treatAllBin$Q39_19[treatAllBin$Q39_19 == "3"] <- "1"
treatAllBin$Q39_20[treatAllBin$Q39_20 == "3"] <- "1"
treatAllBin$Q39_21[treatAllBin$Q39_21 == "3"] <- "1"
treatAllBin$Q39_22[treatAllBin$Q39_22 == "3"] <- "1"

treatAllBin$Q39_1[is.na(treatAllBin$Q39_1)] <- 0
treatAllBin$Q39_2[is.na(treatAllBin$Q39_2)] <- 0
treatAllBin$Q39_3[is.na(treatAllBin$Q39_3)] <- 0
treatAllBin$Q39_4[is.na(treatAllBin$Q39_4)] <- 0
treatAllBin$Q39_5[is.na(treatAllBin$Q39_5)] <- 0
treatAllBin$Q39_6[is.na(treatAllBin$Q39_6)] <- 0
treatAllBin$Q39_7[is.na(treatAllBin$Q39_7)] <- 0
treatAllBin$Q39_8[is.na(treatAllBin$Q39_8)] <- 0
treatAllBin$Q39_9[is.na(treatAllBin$Q39_9)] <- 0
treatAllBin$Q39_10[is.na(treatAllBin$Q39_10)] <- 0
treatAllBin$Q39_11[is.na(treatAllBin$Q39_11)] <- 0
treatAllBin$Q39_12[is.na(treatAllBin$Q39_12)] <- 0
treatAllBin$Q39_13[is.na(treatAllBin$Q39_13)] <- 0
treatAllBin$Q39_14[is.na(treatAllBin$Q39_14)] <- 0
treatAllBin$Q39_15[is.na(treatAllBin$Q39_15)] <- 0
treatAllBin$Q39_16[is.na(treatAllBin$Q39_16)] <- 0
treatAllBin$Q39_17[is.na(treatAllBin$Q39_17)] <- 0
treatAllBin$Q39_18[is.na(treatAllBin$Q39_18)] <- 0
treatAllBin$Q39_19[is.na(treatAllBin$Q39_19)] <- 0
treatAllBin$Q39_20[is.na(treatAllBin$Q39_20)] <- 0
treatAllBin$Q39_21[is.na(treatAllBin$Q39_21)] <- 0
treatAllBin$Q39_22[is.na(treatAllBin$Q39_22)] <- 0

# Check columns classes
sapply(treatAllBin, class)

#           a           b           c 
# "character" "character" "character" 

cols.num <- c("ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os",	"groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")
treatAllBin[cols.num] <- sapply(treatAllBin[cols.num],as.numeric)
sapply(treatAllBin, class)

cols.num <- c("Q50_1","Q50_2","Q50_3","Q50_4","Q50_5","Q50_6","Q50_7","Q50_8","Q50_9","Q50_10","Q50_11","Q50_12")
treatAllBin[cols.num] <- sapply(treatAllBin[cols.num],as.numeric)
sapply(treatAllBin, class)

cols.num <- c("Q39_1","Q39_2","Q39_3","Q39_4","Q39_5","Q39_6","Q39_7","Q39_8","Q39_9","Q39_10","Q39_11","Q39_12","Q39_13","Q39_14","Q39_15","Q39_16","Q39_17","Q39_18","Q39_19","Q39_20","Q39_21","Q39_22")
treatAllBin[cols.num] <- sapply(treatAllBin[cols.num],as.numeric)
sapply(treatAllBin, class)

#c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370")
#c("title","auth","body","tag","code","com","part","btag1","btag2","link","Ltitle","tag")

treatAllBinHotMap1half <- treatAllBin[c("Q39_1","Q39_2","Q39_3","Q39_4","Q39_5","Q39_6","Q39_7","Q39_8","Q39_9","Q39_10","Q39_11","Q50_1","Q50_2","Q50_3","Q50_4","Q50_5","Q50_6","Q50_7","Q50_8","Q50_9","Q50_10","Q50_11","Q50_12")]
colnames(treatAllBinHotMap1half) <- c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","title","auth","body","Stag","code","com","part","btag1","btag2","link","Ltitle","Ltag")
colnames(treatAllBinHotMap1half)

treatAllBinNewLabel1half <- treatAllBin[c("Q39_1","Q39_2","Q39_3","Q39_4","Q39_5","Q39_6","Q39_7","Q39_8","Q39_9","Q39_10","Q39_11","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os")]
colnames(treatAllBinNewLabel1half) <- c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","ui",	"io",	"gc",	"db",	"net",	"log",	"test",	"os")
colnames(treatAllBinNewLabel1half)

treatAllBinOldLabel1half <- treatAllBin[c("Q39_1","Q39_2","Q39_3","Q39_4","Q39_5","Q39_6","Q39_7","Q39_8","Q39_9","Q39_10","Q39_11","groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
colnames(treatAllBinOldLabel1half) <- c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","group",	"ext",	"main",	"tbug",	"tperf",	"1issue",	"fetch",	"edit",	"pref",	"tqual",	"tenha",	"imp",	"GSoC",	"tfeat",	"key")
colnames(treatAllBinOldLabel1half)

treatAllBinHotMap2half <- treatAllBin[c("Q39_12","Q39_13","Q39_14","Q39_15","Q39_16","Q39_17","Q39_18","Q39_19","Q39_20","Q39_21","Q39_22","Q50_1","Q50_2","Q50_3","Q50_4","Q50_5","Q50_6","Q50_7","Q50_8","Q50_9","Q50_10","Q50_11","Q50_12")]
colnames(treatAllBinHotMap2half) <- c("4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370","title","auth","body","Stag","code","com","part","btag1","btag2","link","Ltitle","Ltag")
colnames(treatAllBinHotMap2half)

treatAllBinNewLabel2half <- treatAllBin[c("Q39_12","Q39_13","Q39_14","Q39_15","Q39_16","Q39_17","Q39_18","Q39_19","Q39_20","Q39_21","Q39_22","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os")]
colnames(treatAllBinNewLabel2half) <- c("4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370","ui",	"io",	"gc",	"db",	"net",	"log",	"test",	"os")
colnames(treatAllBinNewLabel2half)

treatAllBinOldLabel2half <- treatAllBin[c("Q39_12","Q39_13","Q39_14","Q39_15","Q39_16","Q39_17","Q39_18","Q39_19","Q39_20","Q39_21","Q39_22","groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
colnames(treatAllBinOldLabel2half) <- c("4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370","group",	"ext",	"main",	"tbug",	"tperf",	"1issue",	"fetch",	"edit",	"pref",	"tqual",	"tenha",	"imp",	"GSoC",	"tfeat",	"key")
colnames(treatAllBinOldLabel2half)

treatAllDemogHotMap <- treatAllBin[c("Q8","Q7","Q9","Q10","Q11","Q12","Q50_1","Q50_2","Q50_3","Q50_4","Q50_5","Q50_6","Q50_7","Q50_8","Q50_9","Q50_10","Q50_11","Q50_12")]
colnames(treatAllDemogHotMap) <- c("prog","contr","java","post","grad","fx","title","auth","body","Stag","code","com","part","btag1","btag2","link","Ltitle","Ltag")
colnames(treatAllDemogHotMap)

treatAllDemogNewLabels <- treatAllBin[c("Q8","Q7","Q9","Q10","Q11","Q12","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os")]
colnames(treatAllDemogNewLabels) <- c("prog","contr","java","post","grad","fx","ui",	"io",	"gc",	"db",	"net",	"log",	"test",	"os")
colnames(treatAllDemogNewLabels)

treatAllDemogOldLabels <- treatAllBin[c("Q8","Q7","Q9","Q10","Q11","Q12","groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
colnames(treatAllDemogOldLabels) <- c("prog","contr","java","post","grad","fx","group",	"ext",	"main",	"tbug",	"tperf",	"1issue",	"fetch",	"edit",	"pref",	"tqual",	"tenha",	"imp",	"GSoC",	"tfeat",	"key")
colnames(treatAllDemogOldLabels)

treatAllDemogIssues <- treatAllBin[c("Q8","Q7","Q9","Q10","Q11","Q12","Q39_1","Q39_2","Q39_3","Q39_4","Q39_5","Q39_6","Q39_7","Q39_8","Q39_9","Q39_10","Q39_11","Q39_12","Q39_13","Q39_14","Q39_15","Q39_16","Q39_17","Q39_18","Q39_19","Q39_20","Q39_21","Q39_22")]
colnames(treatAllDemogIssues) <- c("prog","contr","java","post","grad","fx","5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370")
colnames(treatAllDemogIssues)

#library(dplyr)

#all_na <- function(x) any(!is.na(x))
#  treatAllBinHotMap  <- treatAllBinHotMap %>% select_if(all_na)

#treatAllBinHotMap[,which(unlist(lapply(treatAllBinHotMap, function(x) !all(is.na(x)))))]

#treatAllBinNewLabel %>% select_if(all_na)
#treatAllBinOldLabel %>% select_if(all_na)

cor(treatAllBinHotMap1half)
cor(treatAllBinHotMap2half)
cor(treatAllBinNewLabel1half)
cor(treatAllBinNewLabel2half)
cor(treatAllBinOldLabel1half)
cor(treatAllBinOldLabel2half)

cor(treatAllDemogHotMap)
cor(treatAllDemogNewLabels)
cor(treatAllDemogOldLabels)
cor(treatAllDemogIssues)


ggcorr(treatAllBinHotMap1half, name="Hot Map 1st",
       label = TRUE, 
       label_alpha = TRUE)

ggcorr(treatAllBinHotMap2half, name="Hot Map 2nd",
       label = TRUE, 
       label_alpha = TRUE)

ggcorr(treatAllBinNewLabel1half, name="New Labels 1st",
       label = TRUE, 
       label_alpha = TRUE)

ggcorr(treatAllBinNewLabel2half, name="New Labels 2nd",
       label = TRUE, 
       label_alpha = TRUE)

ggcorr(treatAllBinOldLabel1half, name="Old Labels 1st",
       label = TRUE, 
       label_alpha = TRUE)

ggcorr(treatAllBinOldLabel2half, name="Old Labels 2nd",
       label = TRUE, 
       label_alpha = TRUE)

ggcorr(treatAllDemogHotMap, name=" Demog Hot Map",
       label = TRUE, 
       label_alpha = TRUE)

ggcorr(treatAllDemogNewLabels, name="Demog New Labels ",
       label = TRUE, 
       label_alpha = TRUE)

ggcorr(treatAllDemogOldLabels, name="Demog Old Labels",
       label = TRUE, 
       label_alpha = TRUE)

ggcorr(treatAllDemogIssues, name="Demog Issues",
       label = TRUE, 
       label_alpha = TRUE)

#library('clusteval') 

#cluster_similarity()
