#infnet <- read.csv("OSS issues_November 30, 2020_18.42-INFNET-JAVA.csv")
#infnet <- read.csv("OSS issues_December 5, 2020_15.43-INFNET-JAVA-C.csv")
infnet <- read.csv("OSS issues_December 10, 2020_01.31-INFNET-JAVA-C-JAVA.csv")

#OSS issues_December 5, 2020_15.43

colnames(infnet)
head(infnet)

infnet_header <- head(infnet,1)

infnet_fil <- infnet[infnet$Instruction=='Agree',]
nrow(infnet_fil)
nrow(infnet)

infnet_fil1 <- rbind(infnet_header,infnet_fil)

nrow(infnet_fil1)

colnames(infnet_fil1)

drops <- c("StartDate"             ,"EndDate"               ,"Status"                ,"IPAddress"             ,"Progress"              ,"Duration..in.seconds."
           ,"Finished"              ,"RecordedDate"          ,"ResponseId"            ,"RecipientLastName"     ,"RecipientFirstName"    ,"RecipientEmail"       
           ,"ExternalReference"     ,"LocationLatitude"      ,"LocationLongitude"     ,"DistributionChannel"   ,"UserLanguage", "Q9_NPS_GROUP", "Q10_NPS_GROUP", "Q11_NPS_GROUP", "Q12_NPS_GROUP", "Q43_NPS_GROUP")
infnet_fil2 <- infnet_fil1[, !(names(infnet_fil1) %in% drops)]

colnames(infnet_fil2)

head(infnet_fil2)

write.csv(infnet_fil2,"surveyINFNET-JAVA-C-JAVA.csv")
