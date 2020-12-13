#infnet_1 <- read.csv("OSS issues - 1_November 30, 2020_18.42-INFNET-JAVA.csv")
#infnet_1 <- read.csv("OSS issues - 1_December 5, 2020_15.43-INFNET-JAVA-C.csv")
infnet_1 <- read.csv("OSS issues - 1_December 10, 2020_01.32-INFNET-JAVA-C-JAVA.csv")

#OSS issues - 1_December 5, 2020_15.43
colnames(infnet_1)
head(infnet_1)

infnet_1_header <- head(infnet_1,1)

infnet_1_fil <- infnet_1[infnet_1$Instruction=='Agree',]
nrow(infnet_1_fil)
nrow(infnet_1)

infnet_1_fil1 <- rbind(infnet_1_header,infnet_1_fil)

nrow(infnet_1_fil1)

colnames(infnet_1_fil1)

drops <- c("StartDate"             ,"EndDate"               ,"Status"                ,"IPAddress"             ,"Progress"              ,"Duration..in.seconds."
           ,"Finished"              ,"RecordedDate"          ,"ResponseId"            ,"RecipientLastName"     ,"RecipientFirstName"    ,"RecipientEmail"       
           ,"ExternalReference"     ,"LocationLatitude"      ,"LocationLongitude"     ,"DistributionChannel"   ,"UserLanguage", "Q9_NPS_GROUP", "Q10_NPS_GROUP", "Q11_NPS_GROUP", "Q12_NPS_GROUP", "Q43_NPS_GROUP")
infnet_1_fil2 <- infnet_1_fil1[, !(names(infnet_1_fil1) %in% drops)]

colnames(infnet_1_fil2)

head(infnet_1_fil2)

write.csv(infnet_1_fil2,"surveyINFNET-JAVA-C-JAVA-1.csv")

