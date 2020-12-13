#nau_1 <- read.csv("OSS issues - 1_November 30, 2020_18.42-INFNET-JAVA.csv")
nau_1 <- read.csv("OSS issues - 1_November 23, 2020_13.48-NAU-control.csv")
#OSS issues - 1_December 5, 2020_15.43
colnames(nau_1)
head(nau_1)

nau_1_header <- head(nau_1,1)

nau_1_fil <- nau_1[nau_1$Instruction=='Agree',]
nrow(nau_1_fil)
nrow(nau_1)

nau_1_fil1 <- rbind(nau_1_header,nau_1_fil)

nrow(nau_1_fil1)

colnames(nau_1_fil1)

drops <- c("StartDate"             ,"EndDate"               ,"Status"                ,"IPAddress"             ,"Progress"              ,"Duration..in.seconds."
           ,"Finished"              ,"RecordedDate"          ,"ResponseId"            ,"RecipientLastName"     ,"RecipientFirstName"    ,"RecipientEmail"       
           ,"ExternalReference"     ,"LocationLatitude"      ,"LocationLongitude"     ,"DistributionChannel"   ,"UserLanguage", "Q9_NPS_GROUP", "Q10_NPS_GROUP", "Q11_NPS_GROUP", "Q12_NPS_GROUP", "Q43_NPS_GROUP")
nau_1_fil2 <- nau_1_fil1[, !(names(nau_1_fil1) %in% drops)]

colnames(nau_1_fil2)

head(nau_1_fil2)

write.csv(nau_1_fil2,"surveyNAU-1.csv")

