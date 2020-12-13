colnames(controlAll)

#cor(controlAll[,4:5])

library(GGally)
ggcorr(controlAll)

ggcorr(controlAll, name ="Demog Control",
       label = TRUE, 
       label_alpha = TRUE)

ggcorr(controlAll)

ggcorr(controlAll, 
       label = TRUE, 
       label_alpha = TRUE)

typeof(controlAll$Q50_1)

#-------------
# Control
#------------

controlAllIssues1Half <- controlAll[c("Q39_1","Q39_2","Q39_3","Q39_4","Q39_5","Q39_6","Q39_7","Q39_8","Q39_9","Q39_10","Q39_11")]
colnames(controlAllIssues1Half) <- c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816")
colnames(controlAllIssues1Half)

controlAllIssues2Half <- controlAll[c("Q39_12","Q39_13","Q39_14","Q39_15","Q39_16","Q39_17","Q39_18","Q39_19","Q39_20","Q39_21","Q39_22")]
colnames(controlAllIssues2Half) <- c("4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370")
colnames(controlAllIssues2Half)

controlAllIssues <- controlAll[c("Q39_1","Q39_2","Q39_3","Q39_4","Q39_5","Q39_6","Q39_7","Q39_8","Q39_9","Q39_10","Q39_11","Q39_12","Q39_13","Q39_14","Q39_15","Q39_16","Q39_17","Q39_18","Q39_19","Q39_20","Q39_21","Q39_22")]
colnames(controlAllIssues) <- c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370")
colnames(controlAllIssues)


count.call1 <- apply(controlAllIssues, 2, function(x) length(which(x=="1")))
count.call1
count.call2 <- apply(controlAllIssues, 2, function(x) length(which(x=="2")))
count.call2
count.call3 <- apply(controlAllIssues, 2, function(x) length(which(x=="3")))
count.call3


#controlAllNewLabel <- controlAll[c("ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os")]
#colnames(controlAllNewLabel) <- c("ui",	"io",	"gc",	"db",	"net",	"log",	"test",	"os")
#colnames(controlAllNewLabel)

#count.callnewrel <- apply(controlAllNewLabel, 2, function(x) length(which(x=="relevant")))
#count.callnewrel
#count.callnewnotrel <- apply(controlAllNewLabel, 2, function(x) length(which(x=="not relevant")))
#count.callnewnotrel


controlAllOldLabel <- controlAll[c("groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
colnames(controlAllOldLabel) <- c("group",	"ext",	"main",	"tbug",	"tperf",	"1issue",	"fetch",	"edit",	"pref",	"tqual",	"tenha",	"imp",	"GSoC",	"tfeat",	"key")
colnames(controlAllOldLabel)

count.calloldrel <- apply(controlAllOldLabel, 2, function(x) length(which(x=="relevant")))
count.calloldrel
count.calloldnotrel <- apply(controlAllOldLabel, 2, function(x) length(which(x=="not relevant")))
count.calloldnotrel

controlAllHotMap <- controlAll[c("Q50_1","Q50_2","Q50_3","Q50_4","Q50_5","Q50_6","Q50_7","Q50_8","Q50_9","Q50_10","Q50_11","Q50_12")]
colnames(controlAllHotMap) <- c("title","auth","body","Stag","code","com","part","btag1","btag2","link","Ltitle","Ltag")
colnames(controlAllHotMap)

count.callon <- apply(controlAllHotMap, 2, function(x) length(which(x=="On")))
count.callon
count.calloff <- apply(controlAllHotMap, 2, function(x) length(which(x=="Off")))
count.calloff


count.call123 <- apply(controlAllIssues, 2, function(x) length(which(x=="1" | x=="2" | x=="3")))
count.call123

par(mfrow=c(2,2))
par(cex=0.7, mai=c(0.5,0.5,0.5,0.5))
par(las=2)

barplot(count.call123, main=" All Issues Control")
barplot(count.call1, main="1st Issues Control")
barplot(count.call2, main="2nd Issues Control")
barplot(count.call3, main="3rd Issues Control")

par(mfrow=c(2,2))
par(cex=0.7, mai=c(0.5,0.5,0.5,0.5))
par(las=2)

barplot(count.calloldrel, main="old labels - relevant")
barplot(count.callon, main="hot map - On")

barplot(count.calloldnotrel, main="old labels - not relevant")
barplot(count.calloff, main="hot map - Off")


# binary?

controlAllBin <- data.frame(controlAll)

# hot map to binary

controlAllBin$Q50_1[controlAllBin$Q50_1 == "On"] <- "1"
controlAllBin$Q50_2[controlAllBin$Q50_2 == "On"] <- "1"
controlAllBin$Q50_3[controlAllBin$Q50_3 == "On"] <- "1"
controlAllBin$Q50_4[controlAllBin$Q50_4 == "On"] <- "1"
controlAllBin$Q50_5[controlAllBin$Q50_5 == "On"] <- "1"
controlAllBin$Q50_6[controlAllBin$Q50_6 == "On"] <- "1"
controlAllBin$Q50_7[controlAllBin$Q50_7 == "On"] <- "1"
controlAllBin$Q50_8[controlAllBin$Q50_8 == "On"] <- "1"
controlAllBin$Q50_9[controlAllBin$Q50_9 == "On"] <- "1"
controlAllBin$Q50_10[controlAllBin$Q50_10 == "On"] <- "1"
controlAllBin$Q50_11[controlAllBin$Q50_11 == "On"] <- "1"
controlAllBin$Q50_12[controlAllBin$Q50_12 == "On"] <- "1"

controlAllBin$Q50_1[controlAllBin$Q50_1 == "Off"] <- "0"
controlAllBin$Q50_2[controlAllBin$Q50_2 == "Off"] <- "0"
controlAllBin$Q50_3[controlAllBin$Q50_3 == "Off"] <- "0"
controlAllBin$Q50_4[controlAllBin$Q50_4 == "Off"] <- "0"
controlAllBin$Q50_5[controlAllBin$Q50_5 == "Off"] <- "0"
controlAllBin$Q50_6[controlAllBin$Q50_6 == "Off"] <- "0"
controlAllBin$Q50_7[controlAllBin$Q50_7 == "Off"] <- "0"
controlAllBin$Q50_8[controlAllBin$Q50_8 == "Off"] <- "0"
controlAllBin$Q50_9[controlAllBin$Q50_9 == "Off"] <- "0"
controlAllBin$Q50_10[controlAllBin$Q50_10 == "Off"] <- "0"
controlAllBin$Q50_11[controlAllBin$Q50_11 == "Off"] <- "0"
controlAllBin$Q50_12[controlAllBin$Q50_12 == "Off"] <- "0"

# labels to binary

controlAllBin$ui[controlAllBin$ui == "relevant"] <- "1"
#controlAllBin$io[controlAllBin$io == "relevant"] <- "1"
#controlAllBin$google.commom[controlAllBin$google.commom == "relevant"] <- "1"
#controlAllBin$database[controlAllBin$database == "relevant"] <- "1"
#controlAllBin$network[controlAllBin$network == "relevant"] <- "1"
#controlAllBin$logging[controlAllBin$logging == "relevant"] <- "1"
#controlAllBin$test[controlAllBin$test == "relevant"] <- "1"
#controlAllBin$os[controlAllBin$os == "relevant"] <- "1"
controlAllBin$groups[controlAllBin$groups == "relevant"] <- "1"
controlAllBin$external.files[controlAllBin$external.files == "relevant"] <- "1"
controlAllBin$maintable[controlAllBin$maintable == "relevant"] <- "1"
controlAllBin$type..bug[controlAllBin$type..bug == "relevant"] <- "1"
controlAllBin$type..performance[controlAllBin$type..performance == "relevant"] <- "1"
controlAllBin$good.first.issue[controlAllBin$good.first.issue == "relevant"] <- "1"
controlAllBin$fetcher[controlAllBin$fetcher == "relevant"] <- "1"
controlAllBin$entry.editor[controlAllBin$entry.editor == "relevant"] <- "1"
controlAllBin$preferences[controlAllBin$preferences == "relevant"] <- "1"
controlAllBin$type..code.quality[controlAllBin$type..code.quality == "relevant"] <- "1"
controlAllBin$type..enhancement[controlAllBin$type..enhancement == "relevant"] <- "1"
controlAllBin$import[controlAllBin$import == "relevant"] <- "1"
controlAllBin$project.GSoC[controlAllBin$project.GSoC == "relevant"] <- "1"
controlAllBin$type..feature[controlAllBin$type..feature == "relevant"] <- "1"
controlAllBin$keywords[controlAllBin$keywords == "relevant"] <- "1"

controlAllBin$ui[controlAllBin$ui == "not relevant"] <- "0"
#controlAllBin$io[controlAllBin$io == "not relevant"] <- "0"
#controlAllBin$google.commom[controlAllBin$google.commom == "not relevant"] <- "0"
#controlAllBin$database[controlAllBin$database == "not relevant"] <- "0"
#controlAllBin$network[controlAllBin$network == "not relevant"] <- "0"
#controlAllBin$logging[controlAllBin$logging == "not relevant"] <- "0"
#controlAllBin$test[controlAllBin$test == "not relevant"] <- "0"
#controlAllBin$os[controlAllBin$os == "not relevant"] <- "0"
controlAllBin$groups[controlAllBin$groups == "not relevant"] <- "0"
controlAllBin$external.files[controlAllBin$external.files == "not relevant"] <- "0"
controlAllBin$maintable[controlAllBin$maintable == "not relevant"] <- "0"
controlAllBin$type..bug[controlAllBin$type..bug == "not relevant"] <- "0"
controlAllBin$type..performance[controlAllBin$type..performance == "not relevant"] <- "0"
controlAllBin$good.first.issue[controlAllBin$good.first.issue == "not relevant"] <- "0"
controlAllBin$fetcher[controlAllBin$fetcher == "not relevant"] <- "0"
controlAllBin$entry.editor[controlAllBin$entry.editor == "not relevant"] <- "0"
controlAllBin$preferences[controlAllBin$preferences == "not relevant"] <- "0"
controlAllBin$type..code.quality[controlAllBin$type..code.quality == "not relevant"] <- "0"
controlAllBin$type..enhancement[controlAllBin$type..enhancement == "not relevant"] <- "0"
controlAllBin$import[controlAllBin$import == "not relevant"] <- "0"
controlAllBin$project.GSoC[controlAllBin$project.GSoC == "not relevant"] <- "0"
controlAllBin$type..feature[controlAllBin$type..feature == "not relevant"] <- "0"
controlAllBin$keywords[controlAllBin$keywords == "not relevant"] <- "0"

# issues to binary

controlAllBin$Q39_1[controlAllBin$Q39_1 == "2"] <- "1"
controlAllBin$Q39_2[controlAllBin$Q39_2 == "2"] <- "1"
controlAllBin$Q39_3[controlAllBin$Q39_3 == "2"] <- "1"
controlAllBin$Q39_4[controlAllBin$Q39_4 == "2"] <- "1"
controlAllBin$Q39_5[controlAllBin$Q39_5 == "2"] <- "1"
controlAllBin$Q39_6[controlAllBin$Q39_6 == "2"] <- "1"
controlAllBin$Q39_7[controlAllBin$Q39_7 == "2"] <- "1"
controlAllBin$Q39_8[controlAllBin$Q39_8 == "2"] <- "1"
controlAllBin$Q39_9[controlAllBin$Q39_9 == "2"] <- "1"
controlAllBin$Q39_10[controlAllBin$Q39_10 == "2"] <- "1"
controlAllBin$Q39_11[controlAllBin$Q39_11 == "2"] <- "1"
controlAllBin$Q39_12[controlAllBin$Q39_12 == "2"] <- "1"
controlAllBin$Q39_13[controlAllBin$Q39_13 == "2"] <- "1"
controlAllBin$Q39_14[controlAllBin$Q39_14 == "2"] <- "1"
controlAllBin$Q39_15[controlAllBin$Q39_15 == "2"] <- "1"
controlAllBin$Q39_16[controlAllBin$Q39_16 == "2"] <- "1"
controlAllBin$Q39_17[controlAllBin$Q39_17 == "2"] <- "1"
controlAllBin$Q39_18[controlAllBin$Q39_18 == "2"] <- "1"
controlAllBin$Q39_19[controlAllBin$Q39_19 == "2"] <- "1"
controlAllBin$Q39_20[controlAllBin$Q39_20 == "2"] <- "1"
controlAllBin$Q39_21[controlAllBin$Q39_21 == "2"] <- "1"
controlAllBin$Q39_22[controlAllBin$Q39_22 == "2"] <- "1"

controlAllBin$Q39_1[controlAllBin$Q39_1 == "3"] <- "1"
controlAllBin$Q39_2[controlAllBin$Q39_2 == "3"] <- "1"
controlAllBin$Q39_3[controlAllBin$Q39_3 == "3"] <- "1"
controlAllBin$Q39_4[controlAllBin$Q39_4 == "3"] <- "1"
controlAllBin$Q39_5[controlAllBin$Q39_5 == "3"] <- "1"
controlAllBin$Q39_6[controlAllBin$Q39_6 == "3"] <- "1"
controlAllBin$Q39_7[controlAllBin$Q39_7 == "3"] <- "1"
controlAllBin$Q39_8[controlAllBin$Q39_8 == "3"] <- "1"
controlAllBin$Q39_9[controlAllBin$Q39_9 == "3"] <- "1"
controlAllBin$Q39_10[controlAllBin$Q39_10 == "3"] <- "1"
controlAllBin$Q39_11[controlAllBin$Q39_11 == "3"] <- "1"
controlAllBin$Q39_12[controlAllBin$Q39_12 == "3"] <- "1"
controlAllBin$Q39_13[controlAllBin$Q39_13 == "3"] <- "1"
controlAllBin$Q39_14[controlAllBin$Q39_14 == "3"] <- "1"
controlAllBin$Q39_15[controlAllBin$Q39_15 == "3"] <- "1"
controlAllBin$Q39_16[controlAllBin$Q39_16 == "3"] <- "1"
controlAllBin$Q39_17[controlAllBin$Q39_17 == "3"] <- "1"
controlAllBin$Q39_18[controlAllBin$Q39_18 == "3"] <- "1"
controlAllBin$Q39_19[controlAllBin$Q39_19 == "3"] <- "1"
controlAllBin$Q39_20[controlAllBin$Q39_20 == "3"] <- "1"
controlAllBin$Q39_21[controlAllBin$Q39_21 == "3"] <- "1"
controlAllBin$Q39_22[controlAllBin$Q39_22 == "3"] <- "1"

controlAllBin$Q39_1[is.na(controlAllBin$Q39_1)] <- 0
controlAllBin$Q39_2[is.na(controlAllBin$Q39_2)] <- 0
controlAllBin$Q39_3[is.na(controlAllBin$Q39_3)] <- 0
controlAllBin$Q39_4[is.na(controlAllBin$Q39_4)] <- 0
controlAllBin$Q39_5[is.na(controlAllBin$Q39_5)] <- 0
controlAllBin$Q39_6[is.na(controlAllBin$Q39_6)] <- 0
controlAllBin$Q39_7[is.na(controlAllBin$Q39_7)] <- 0
controlAllBin$Q39_8[is.na(controlAllBin$Q39_8)] <- 0
controlAllBin$Q39_9[is.na(controlAllBin$Q39_9)] <- 0
controlAllBin$Q39_10[is.na(controlAllBin$Q39_10)] <- 0
controlAllBin$Q39_11[is.na(controlAllBin$Q39_11)] <- 0
controlAllBin$Q39_12[is.na(controlAllBin$Q39_12)] <- 0
controlAllBin$Q39_13[is.na(controlAllBin$Q39_13)] <- 0
controlAllBin$Q39_14[is.na(controlAllBin$Q39_14)] <- 0
controlAllBin$Q39_15[is.na(controlAllBin$Q39_15)] <- 0
controlAllBin$Q39_16[is.na(controlAllBin$Q39_16)] <- 0
controlAllBin$Q39_17[is.na(controlAllBin$Q39_17)] <- 0
controlAllBin$Q39_18[is.na(controlAllBin$Q39_18)] <- 0
controlAllBin$Q39_19[is.na(controlAllBin$Q39_19)] <- 0
controlAllBin$Q39_20[is.na(controlAllBin$Q39_20)] <- 0
controlAllBin$Q39_21[is.na(controlAllBin$Q39_21)] <- 0
controlAllBin$Q39_22[is.na(controlAllBin$Q39_22)] <- 0

# Check columns classes
sapply(controlAllBin, class)

#           a           b           c 
# "character" "character" "character" 

#cols.num <- c("ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os",	"groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")
cols.num <- c("ui",	"groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")
controlAllBin[cols.num] <- sapply(controlAllBin[cols.num],as.numeric)
sapply(controlAllBin, class)

cols.num <- c("Q50_1","Q50_2","Q50_3","Q50_4","Q50_5","Q50_6","Q50_7","Q50_8","Q50_9","Q50_10","Q50_11","Q50_12")
controlAllBin[cols.num] <- sapply(controlAllBin[cols.num],as.numeric)
sapply(controlAllBin, class)

cols.num <- c("Q39_1","Q39_2","Q39_3","Q39_4","Q39_5","Q39_6","Q39_7","Q39_8","Q39_9","Q39_10","Q39_11","Q39_12","Q39_13","Q39_14","Q39_15","Q39_16","Q39_17","Q39_18","Q39_19","Q39_20","Q39_21","Q39_22")
controlAllBin[cols.num] <- sapply(controlAllBin[cols.num],as.numeric)
sapply(controlAllBin, class)

#c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370")
#c("title","auth","body","tag","code","com","part","btag1","btag2","link","Ltitle","tag")

controlAllBinHotMap1half <- controlAllBin[c("Q39_1","Q39_2","Q39_3","Q39_4","Q39_5","Q39_6","Q39_7","Q39_8","Q39_9","Q39_10","Q39_11","Q50_1","Q50_2","Q50_3","Q50_4","Q50_5","Q50_6","Q50_7","Q50_8","Q50_9","Q50_10","Q50_11","Q50_12")]
colnames(controlAllBinHotMap1half) <- c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","title","auth","body","Stag","code","com","part","btag1","btag2","link","Ltitle","Ltag")
colnames(controlAllBinHotMap1half)

#controlAllBinNewLabel1half <- controlAllBin[c("Q39_1","Q39_2","Q39_3","Q39_4","Q39_5","Q39_6","Q39_7","Q39_8","Q39_9","Q39_10","Q39_11","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os")]
#colnames(controlAllBinNewLabel1half) <- c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","ui",	"io",	"gc",	"db",	"net",	"log",	"test",	"os")
#colnames(controlAllBinNewLabel1half)

controlAllBinOldLabel1half <- controlAllBin[c("Q39_1","Q39_2","Q39_3","Q39_4","Q39_5","Q39_6","Q39_7","Q39_8","Q39_9","Q39_10","Q39_11","groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
colnames(controlAllBinOldLabel1half) <- c("5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","group",	"ext",	"main",	"tbug",	"tperf",	"1issue",	"fetch",	"edit",	"pref",	"tqual",	"tenha",	"imp",	"GSoC",	"tfeat",	"key")
colnames(controlAllBinOldLabel1half)

controlAllBinHotMap2half <- controlAllBin[c("Q39_12","Q39_13","Q39_14","Q39_15","Q39_16","Q39_17","Q39_18","Q39_19","Q39_20","Q39_21","Q39_22","Q50_1","Q50_2","Q50_3","Q50_4","Q50_5","Q50_6","Q50_7","Q50_8","Q50_9","Q50_10","Q50_11","Q50_12")]
colnames(controlAllBinHotMap2half) <- c("4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370","title","auth","body","Stag","code","com","part","btag1","btag2","link","Ltitle","Ltag")
colnames(controlAllBinHotMap2half)

#controlAllBinNewLabel2half <- controlAllBin[c("Q39_12","Q39_13","Q39_14","Q39_15","Q39_16","Q39_17","Q39_18","Q39_19","Q39_20","Q39_21","Q39_22","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os")]
#colnames(controlAllBinNewLabel2half) <- c("4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370","ui",	"io",	"gc",	"db",	"net",	"log",	"test",	"os")
#colnames(controlAllBinNewLabel2half)

controlAllBinOldLabel2half <- controlAllBin[c("Q39_12","Q39_13","Q39_14","Q39_15","Q39_16","Q39_17","Q39_18","Q39_19","Q39_20","Q39_21","Q39_22","groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
colnames(controlAllBinOldLabel2half) <- c("4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370","group",	"ext",	"main",	"tbug",	"tperf",	"1issue",	"fetch",	"edit",	"pref",	"tqual",	"tenha",	"imp",	"GSoC",	"tfeat",	"key")
colnames(controlAllBinOldLabel2half)

controlAllDemogHotMap <- controlAllBin[c("Q8","Q7","Q9","Q10","Q11","Q12","Q50_1","Q50_2","Q50_3","Q50_4","Q50_5","Q50_6","Q50_7","Q50_8","Q50_9","Q50_10","Q50_11","Q50_12")]
colnames(controlAllDemogHotMap) <- c("prog","contr","java","post","grad","fx","title","auth","body","Stag","code","com","part","btag1","btag2","link","Ltitle","Ltag")
colnames(controlAllDemogHotMap)

#controlAllDemogNewLabels <- controlAllBin[c("Q8","Q7","Q9","Q10","Q11","Q12","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os")]
#colnames(controlAllDemogNewLabels) <- c("prog","contr","java","post","grad","fx","ui",	"io",	"gc",	"db",	"net",	"log",	"test",	"os")
#colnames(controlAllDemogNewLabels)

controlAllDemogOldLabels <- controlAllBin[c("Q8","Q7","Q9","Q10","Q11","Q12","groups",	"external.files",	"maintable",	"type..bug",	"type..performance",	"good.first.issue",	"fetcher",	"entry.editor",	"preferences",	"type..code.quality",	"type..enhancement",	"import",	"project.GSoC",	"type..feature",	"keywords")]
colnames(controlAllDemogOldLabels) <- c("prog","contr","java","post","grad","fx","group",	"ext",	"main",	"tbug",	"tperf",	"1issue",	"fetch",	"edit",	"pref",	"tqual",	"tenha",	"imp",	"GSoC",	"tfeat",	"key")
colnames(controlAllDemogOldLabels)

controlAllDemogIssues <- controlAllBin[c("Q8","Q7","Q9","Q10","Q11","Q12","Q39_1","Q39_2","Q39_3","Q39_4","Q39_5","Q39_6","Q39_7","Q39_8","Q39_9","Q39_10","Q39_11","Q39_12","Q39_13","Q39_14","Q39_15","Q39_16","Q39_17","Q39_18","Q39_19","Q39_20","Q39_21","Q39_22")]
colnames(controlAllDemogIssues) <- c("prog","contr","java","post","grad","fx","5679","5653","4430","5532","5486","5022","5254","4612","5194","4629","4816","4977","5002","4913","4864","4306","4360","4233","3994","628","2319","2370")
colnames(controlAllDemogIssues)

#library(dplyr)

#all_na <- function(x) any(!is.na(x))
#  controlAllBinHotMap  <- controlAllBinHotMap %>% select_if(all_na)

#controlAllBinHotMap[,which(unlist(lapply(controlAllBinHotMap, function(x) !all(is.na(x)))))]

#controlAllBinNewLabel %>% select_if(all_na)
#controlAllBinOldLabel %>% select_if(all_na)

cor(controlAllBinHotMap1half)
cor(controlAllBinHotMap2half)
#cor(controlAllBinNewLabel1half)
#cor(controlAllBinNewLabel2half)
cor(controlAllBinOldLabel1half)
cor(controlAllBinOldLabel2half)

cor(controlAllDemogHotMap)
#cor(controlAllDemogNewLabels)
cor(controlAllDemogOldLabels)
cor(controlAllDemogIssues)

ggcorr(controlAllBinHotMap1half, name="Hot Map 1st",
       label = TRUE, 
       label_alpha = TRUE)

ggcorr(controlAllBinHotMap2half, name="Hot Map 2nd",
       label = TRUE, 
       label_alpha = TRUE)

#ggcorr(controlAllBinNewLabel1half, name="New Labels 1st",
#       label = TRUE, 
#       label_alpha = TRUE)

#ggcorr(controlAllBinNewLabel2half, name="New Labels 2nd",
#       label = TRUE, 
#       label_alpha = TRUE)

ggcorr(controlAllBinOldLabel1half, name="Old Labels 1st",
       label = TRUE, 
       label_alpha = TRUE)

ggcorr(controlAllBinOldLabel2half, name="Old Labels 2nd",
       label = TRUE, 
       label_alpha = TRUE)

ggcorr(controlAllDemogHotMap, name=" Demog Hot Map",
       label = TRUE, 
       label_alpha = TRUE)

#ggcorr(controlAllDemogNewLabels, name="Demog New Labels ",
#       label = TRUE, 
#       label_alpha = TRUE)

ggcorr(controlAllDemogOldLabels, name="Demog Old Labels",
       label = TRUE, 
       label_alpha = TRUE)

ggcorr(controlAllDemogIssues, name="Demog Issues",
       label = TRUE, 
       label_alpha = TRUE)
#library('clusteval')

#cluster_similarity()
