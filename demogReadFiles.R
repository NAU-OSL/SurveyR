#treatAll <- read.csv("surveyAllTreatment.csv")
#controlAll <- read.csv("surveyAllControl.csv")

treatAll <- read.csv("surveyAllTreatment4.csv")
controlAll <- read.csv("surveyAllControl4.csv")

colnames(treatAll)
colnames(controlAll)
#head(treatAll)

#treatAll[treatAll$Q8=='Zero'] <- 0
#treatAll$Q8

# adjusting programming experience
treatHeader <- treatAll[1,]
treatAll <- treatAll[-1,] #drop header

# 4 is the 4th column
ind <- treatAll$Q8 %in% "Zero"
treatAll[ind, 4] <- 0 #Q8 = 3

ind <- treatAll$Q8 %in% "10+"
treatAll[ind, 4] <- 10 #Q8 = 3

treatAll$Q8

treatAll$Q8 <- as.numeric(treatAll$Q8)

treatAll$Q8

# adjusting contributions experience

ind <- treatAll$Q7 %in% "Zero"
treatAll[ind, 5] <- 0 #Q7 = 4

ind <- treatAll$Q7 %in% "2-3"
treatAll[ind, 5] <- 2 #Q7 = 4

ind <- treatAll$Q7 %in% "4-7"
treatAll[ind, 5] <- 2 #Q7 = 4

ind <- treatAll$Q7 %in% "8-10"
treatAll[ind, 5] <- 8 #Q7 = 4

ind <- treatAll$Q7 %in% "11+"
treatAll[ind, 5] <- 11 #Q7 = 4

treatAll$Q7

treatAll$Q7 <- as.numeric(treatAll$Q7)
#treatAll <- na.omit(treatAll)

treatAll$Q7

#adjusting afinities

typeof(treatAll$Q9)

treatAll$Q9 <- as.numeric(treatAll$Q9)
treatAll$Q9

typeof(treatAll$Q10)

treatAll$Q10 <- as.numeric(treatAll$Q10)
treatAll$Q10

typeof(treatAll$Q11)

treatAll$Q11 <- as.numeric(treatAll$Q11)
treatAll$Q11

typeof(treatAll$Q12)

treatAll$Q12 <- as.numeric(treatAll$Q12)
treatAll$Q12

#----------------------------------
#control
# adjusting programming experience
controlHeader <- controlAll[1,]
controlAll <- controlAll[-1,] #drop header

ind <- controlAll$Q8 %in% "Zero"
controlAll[ind, 4] <- 0 #Q8 = 3

ind <- controlAll$Q8 %in% "10+"
controlAll[ind, 4] <- 10 #Q8 = 3

controlAll$Q8

controlAll$Q8 <- as.numeric(controlAll$Q8)

#controlAll$Q8 <- na.omit(controlAll$Q8)

controlAll$Q8

# adjusting contributions experience

ind <- controlAll$Q7 %in% "Zero"
controlAll[ind, 5] <- 0 #Q7 = 4

ind <- controlAll$Q7 %in% "2-3"
controlAll[ind, 5] <- 2 #Q7 = 4

ind <- controlAll$Q7 %in% "4-7"
controlAll[ind, 5] <- 4 #Q7 = 4

ind <- controlAll$Q7 %in% "8-10"
controlAll[ind, 5] <- 8 #Q7 = 4

ind <- controlAll$Q7 %in% "11+"
controlAll[ind, 5] <- 11 #Q7 = 4

controlAll$Q7

controlAll$Q7 <- as.numeric(controlAll$Q7)
#treatAll <- na.omit(treatAll)

controlAll$Q7

#adjusting afinities

typeof(controlAll$Q9)

controlAll$Q9 <- as.numeric(controlAll$Q9)
controlAll$Q9

typeof(controlAll$Q10)

controlAll$Q10 <- as.numeric(controlAll$Q10)
controlAll$Q10

typeof(controlAll$Q11)

controlAll$Q11 <- as.numeric(controlAll$Q11)
controlAll$Q11

typeof(controlAll$Q12)

controlAll$Q12 <- as.numeric(controlAll$Q12)
controlAll$Q12

# create definitions: experienced coder , contributor , coder with afinity

#-------------------------
# All median (or avg?)
nrow(treatAll)
nrow(controlAll)

colnames(treatAll)

#treatNauNewLabels <- treatNau[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os") ]
#treatNauNewLabels

#treatNau <- treatNau[, !(names(treatNau) %in% c(	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os"))]

#cbind(controlNau, io)

controlAux <- controlAll

# control ui
controlAux$ui <- NA
controlAux$io <- NA
controlAux$google.commom <- NA
controlAux$database <- NA
controlAux$network <- NA
controlAux$logging <- NA
controlAux$test <- NA
controlAux$os <- NA

colnames(treatAll)
colnames(controlAux)

names(controlAux)[names(controlAux) == 'Q46'] <- 'Q45'

colnames(controlAux)

treatAll$X
controlAux$X

all <- rbind(treatAll, controlAux)
colnames(all)
all$X

#mq8all <- median(all$Q8)

#mq7all <- median(all$Q7)

#mq9all <- median(all$Q9)
#mq10all <- median(all$Q10)
#mq11all <- median(all$Q11)
#mq12all <- median(all$Q12)

mq8all <- round(mean(all$Q8))

mq7all <- round(mean(all$Q7))

mq9all <- round(mean(all$Q9))
mq10all <- round(mean(all$Q10))
mq11all <- round(mean(all$Q11))
mq12all <- round(mean(all$Q12))

allExpCoder <- all[all$Q8>mq8all,]
allNonExpCoder <- all[all$Q8<=mq8all,]

allExpCoder$Q8
allExpCoder$X
allNonExpCoder$Q8
allNonExpCoder$X

allContributor <- all[all$Q7>mq7all,]
allNonContributor <- all[all$Q7<=mq7all,]


allContributor$Q7
allContributor$X
allNonContributor$Q7
allNonContributor$X

# 1 3 4 3 1 1
#allAffinity <- all[ which( all$Q9 > mq9all | all$Q10 > mq10all | all$Q11 > mq11all | all$Q12 > mq12all) , ]
allAffinity <- all[ which( all$Q9 > mq9all & all$Q10 > mq10all | 
                             all$Q9 > mq9all & all$Q11 > mq11all |
                             all$Q9 > mq9all & all$Q12 > mq12all |
                             all$Q11 > mq11all & all$Q10 > mq10all |
                             all$Q12 > mq12all & all$Q10 > mq10all |
                             all$Q11 > mq11all & all$Q12 > mq12all) , ]

library(dplyr)
target <- allAffinity$X
allNonAffinity <- filter(all, !X %in% target)



#allNonAffinity <- all[ which( all$Q9 <= mq9all & all$Q10 <= mq10all & all$Q11 <= mq11all & all$Q12 <= mq12all) , ]

allAffinity[c("X","Q9","Q10","Q11","Q12")]
allNonAffinity[c("X","Q9","Q10","Q11","Q12")]

#------------------------
# check the median first

#mq8 <- median(treatAll$Q8)

#mq7 <- median(treatAll$Q7)

#mq9 <- median(treatAll$Q9)
#mq10 <- median(treatAll$Q10)
#mq11 <- median(treatAll$Q11)
#mq12 <- median(treatAll$Q12)

mq8 <- round(mean(all$Q8))

mq7 <- round(mean(all$Q7))

mq9 <- round(mean(all$Q9))
mq10 <- round(mean(all$Q10))
mq11 <- round(mean(all$Q11))
mq12 <- round(mean(all$Q12))

#treatAll <- rbind(treatHeader,treatAll)

treatExpCoder <- treatAll[treatAll$Q8>mq8,]
treatNonExpCoder <- treatAll[treatAll$Q8<=mq8,]

treatExpCoder$Q8
treatExpCoder$X
treatNonExpCoder$Q8
treatNonExpCoder$X

treatContributor <- treatAll[treatAll$Q7>mq7,]
treatNonContributor <- treatAll[treatAll$Q7<=mq7,]


treatContributor$Q7
treatContributor$X
treatNonContributor$Q7
treatNonContributor$X

#treatAffinity <- treatAll[ which( treatAll$Q9 > mq9 | treatAll$Q10 > mq10 | treatAll$Q11 > mq11 | treatAll$Q12 > mq12) , ]
treatAffinity <- treatAll [ which( treatAll$Q9 > mq9all & treatAll$Q10 > mq10all | 
           treatAll$Q9 > mq9all & treatAll$Q11 > mq11all |
           treatAll$Q9 > mq9all & treatAll$Q12 > mq12all |
           treatAll$Q11 > mq11all & treatAll$Q10 > mq10all |
           treatAll$Q12 > mq12all & treatAll$Q10 > mq10all |
           treatAll$Q11 > mq11all & treatAll$Q12 > mq12all) , ]
#treatNoAffinity <- treatAll[ which( treatAll$Q9 <= mq9 & treatAll$Q10 <= mq10 & treatAll$Q11 <= mq11 & treatAll$Q12 <= mq12) , ]

library(dplyr)
target <- treatAffinity$X
treatNoAffinity <- filter(treatAll, !X %in% target)

#treatAfinity <- treatAll[ which( treatAll$Q9 > 3),]

#treatAfinity[-1,c("X","Q9","Q10","Q11","Q12")]

treatAffinity[c("X","Q9","Q10","Q11","Q12")]
treatNoAffinity[c("X","Q9","Q10","Q11","Q12")]

#------------------------------
# check the median first

mq8c <- round(mean(all$Q8))

mq7c <- round(mean(all$Q7))

mq9c <- round(mean(all$Q9))
mq10c <- round(mean(all$Q10))
mq11c <- round(mean(all$Q11))
mq12c <- round(mean(all$Q12))

#controlAll <- rbind(controlHeader,controlAll)

controlExpCoder <- controlAll[controlAll$Q8>mq8c,]

controlExpCoder$Q8
controlExpCoder$X

controlContributor <- controlAll[controlAll$Q7>mq7c,]

controlContributor$Q7
controlContributor$X

#controlAffinity <- controlAll[ which( controlAll$Q9 > mq9c | controlAll$Q10 > mq10c | controlAll$Q11 > mq11c | controlAll$Q12 > mq12c) , ]

#controlAfinity <- controlAll[ which( controlAll$Q9 > 3),]

#controlAfinity[-1,c("X","Q9","Q10","Q11","Q12")]

controlAfinity[c("X","Q9","Q10","Q11","Q12")]


#------------------------
# ExpCoderAll ContributorAll AffinityALL
#-----------------------
# ExpCoder
#----------------------
nrow(treatExpCoder)
nrow(controlExpCoder)

colnames(treatExpCoder)

#treatNauNewLabels <- treatNau[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os") ]
#treatNauNewLabels

#treatNau <- treatNau[, !(names(treatNau) %in% c(	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os"))]

#cbind(controlNau, io)

controlExpCoder$io <- NA
controlExpCoder$google.commom <- NA
controlExpCoder$database <- NA
controlExpCoder$network <- NA
controlExpCoder$logging <- NA
controlExpCoder$test <- NA
controlExpCoder$os <- NA

colnames(treatExpCoder)
colnames(controlExpCoder)

names(controlExpCoder)[names(controlExpCoder) == 'Q46'] <- 'Q45'

colnames(controlExpCoder)

treatExpCoder$X
controlExpCoder$X

expCoderAll <- rbind(treatExpCoder, controlExpCoder)
colnames(expCoderAll)
expCoderAll$X

#-----------------------
# Non ExpCoder
#----------------------
nrow(treatNonExpCoder)
nrow(controNonExpCoder)

colnames(treatNonExpCoder)

#treatNauNewLabels <- treatNau[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os") ]
#treatNauNewLabels

#treatNau <- treatNau[, !(names(treatNau) %in% c(	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os"))]

#cbind(controlNau, io)

controNonExpCoder$io <- NA
controNonExpCoder$google.commom <- NA
controNonExpCoder$database <- NA
controNonExpCoder$network <- NA
controNonExpCoder$logging <- NA
controNonExpCoder$test <- NA
controNonExpCoder$os <- NA

colnames(treatNonExpCoder)
colnames(controNonExpCoder)

names(controNonExpCoder)[names(controNonExpCoder) == 'Q46'] <- 'Q45'

colnames(controNonExpCoder)

treatNonExpCoder$X
controNonExpCoder$X

expNonCoderAll <- rbind(treatNonExpCoder, controlExpCoder)
colnames(expNonCoderAll)
expNonCoderAll$X
# ------------
# locals or data set sources 
#--------------

# Blog

treatBlog <- treatAll[ which( treatAll$local == "blog"), ] 
controlBlog <- controlAll[ which( controlAll$local == "blog"), ] 

#treatBlogNewLabels <- treatBlog[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os")]
#treatBlogNewLabels

#treatBlog <- treatBlog[, !(names(treatBlog) %in% c(	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os"))]
 
controlBlog$io <- NA
controlBlog$google.commom <- NA
controlBlog$database <- NA
controlBlog$network <- NA
controlBlog$logging <- NA
controlBlog$test <- NA
controlBlog$os <- NA

colnames(treatBlog)
colnames(controlBlog)

names(controlBlog)[names(controlBlog) == 'Q46'] <- 'Q45'

colnames(controlBlog)

treatBlog$X
controlBlog$X

blogAll <- rbind(treatBlog, controlBlog)
colnames(blogAll)
blogAll$X

# INFNET

treatInfnet <- treatAll[ which( treatAll$local == "infnet"), ] 
controlInfnet <- controlAll[ which( controlAll$local == "infnet"), ] 

nrow(treatInfnet)
nrow(controlInfnet)

colnames(treatInfnet)

#treatInfnetNewLabels <- treatInfnet[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os") ]
#treatInfnetNewLabels

#treatInfnet <- treatInfnet[, !(names(treatInfnet) %in% c(	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os"))]

colnames(treatInfnet)
colnames(controlInfnet)

names(controlInfnet)[names(controlInfnet) == 'Q46'] <- 'Q45'

controlInfnet$io <- NA
controlInfnet$google.commom <- NA
controlInfnet$database <- NA
controlInfnet$network <- NA
controlInfnet$logging <- NA
controlInfnet$test <- NA
controlInfnet$os <- NA

colnames(controlInfnet)

treatInfnet$X
controlInfnet$X

InfnetAll <- rbind(treatInfnet, controlInfnet)
colnames(InfnetAll)
InfnetAll$X

# CASNAV

treatcasnav <- treatAll[ which( treatAll$local == "casnav"), ] 
controlcasnav <- controlAll[ which( controlAll$local == "casnav"), ] 

nrow(treatcasnav)
nrow(controlcasnav)

colnames(treatcasnav)

#treatcasnavNewLabels <- treatcasnav[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os") ]
#treatcasnavNewLabels

#treatcasnav <- treatcasnav[, !(names(treatcasnav) %in% c(	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os"))]

#cbind(controlcasnav, io)

controlcasnav$io <- NA
controlcasnav$google.commom <- NA
controlcasnav$database <- NA
controlcasnav$network <- NA
controlcasnav$logging <- NA
controlcasnav$test <- NA
controlcasnav$os <- NA

colnames(treatcasnav)
colnames(controlcasnav)

names(controlcasnav)[names(controlcasnav) == 'Q46'] <- 'Q45'

colnames(controlcasnav)

treatcasnav$X
controlcasnav$X

casnavAll <- rbind(treatcasnav, controlcasnav)
colnames(casnavAll)
casnavAll$X

#total <- merge(casnavAll,treatcasnavNewLabels,by="X")
#colnames(total)

# PUC

treatPuc <- treatAll[ which( treatAll$local == "puc"), ] 
controlPuc <- controlAll[ which( controlAll$local == "puc"), ] 

nrow(treatPuc)
nrow(controlPuc)

colnames(treatPuc)

#treatPucNewLabels <- treatPuc[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os") ]
#treatPucNewLabels

#treatPuc <- treatPuc[, !(names(treatPuc) %in% c(	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os"))]

#cbind(controlPuc, io)

controlPuc$io <- NA
controlPuc$google.commom <- NA
controlPuc$database <- NA
controlPuc$network <- NA
controlPuc$logging <- NA
controlPuc$test <- NA
controlPuc$os <- NA

colnames(treatPuc)
colnames(controlPuc)

names(controlPuc)[names(controlPuc) == 'Q46'] <- 'Q45'

colnames(controlPuc)

treatPuc$X
controlPuc$X

PucAll <- rbind(treatPuc, controlPuc)
colnames(PucAll)
PucAll$X

# NAU

treatNau <- treatAll[ which( treatAll$local == "nau"), ] 
controlNau <- controlAll[ which( controlAll$local == "nau"), ] 

nrow(treatNau)
nrow(controlNau)

colnames(treatNau)

#treatNauNewLabels <- treatNau[c("X","ui",	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os") ]
#treatNauNewLabels

#treatNau <- treatNau[, !(names(treatNau) %in% c(	"io",	"google.commom",	"database",	"network",	"logging",	"test",	"os"))]

#cbind(controlNau, io)

controlNau$io <- NA
controlNau$google.commom <- NA
controlNau$database <- NA
controlNau$network <- NA
controlNau$logging <- NA
controlNau$test <- NA
controlNau$os <- NA

colnames(treatNau)
colnames(controlNau)

names(controlNau)[names(controlNau) == 'Q46'] <- 'Q45'

colnames(controlNau)

treatNau$X
controlNau$X

NauAll <- rbind(treatNau, controlNau)
colnames(NauAll)
NauAll$X

# -------
# All
#Students x Industry x Grad x Undergrad

studentsAll <- rbind(NauAll, InfnetAll, PucAll)

industryAll <- rbind(casnavAll, blogAll)

gradStuAll <- rbind(InfnetAll, PucAll)

underGradStuAll <- NauAll # waiting for CEFET-RJ to compose with Nau

# Treat

studentsTreat <- rbind(treatNau, treatInfnet, treatPuc)

industryTreat <- rbind(treatcasnav, treatBlog)

gradStuTreat <- rbind(treatInfnet, treatPuc)

underGradStuTreat <- treatNau # waiting for CEFET-RJ to compose with Nau

# Control

studentsControl <- rbind(controlNau, controlInfnet, controlPuc)

industryControl <- rbind(controlcasnav, controlBlog)

gradStuControl <- rbind(controlInfnet, controlPuc)

underGradStuControl <- controlNau # waiting for CEFET-RJ to compose with Nau
