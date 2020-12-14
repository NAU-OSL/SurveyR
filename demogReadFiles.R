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

#treatAll <- rbind(treatHeader,treatAll)

treatExpCoder <- treatAll[treatAll$Q8>3,]

treatExpCoder$Q8
treatExpCoder$X

treatContributor <- treatAll[treatAll$Q7>1,]

treatContributor$Q7
treatContributor$X

treatAffinity <- treatAll[ which( treatAll$Q9 > 3 | treatAll$Q10 > 3 | treatAll$Q11 > 3 | treatAll$Q12 > 3) , ]

#treatAfinity <- treatAll[ which( treatAll$Q9 > 3),]

#treatAfinity[-1,c("X","Q9","Q10","Q11","Q12")]

treatAffinity[c("X","Q9","Q10","Q11","Q12")]

#------------------------------

#controlAll <- rbind(controlHeader,controlAll)

controlExpCoder <- controlAll[controlAll$Q8>3,]

controlExpCoder$Q8
controlExpCoder$X

controlContributor <- controlAll[controlAll$Q7>1,]

controlContributor$Q7
controlContributor$X

controlAffinity <- controlAll[ which( controlAll$Q9 > 3 | controlAll$Q10 > 3 | controlAll$Q11 > 3 | controlAll$Q12 > 3) , ]

#controlAfinity <- controlAll[ which( controlAll$Q9 > 3),]

#controlAfinity[-1,c("X","Q9","Q10","Q11","Q12")]

controlAfinity[c("X","Q9","Q10","Q11","Q12")]

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
