#nau <- read.csv("OSS issues_November 30, 2020_18.42-INFNET-JAVA.csv")
nau <- read.csv("OSS issues_November 23, 2020_13.48-NAU-treatment.csv")
#OSS issues_December 5, 2020_15.43

colnames(nau)
head(nau)

nau_header <- head(nau,1)

nau_fil <- nau[nau$Instruction=='Agree',]
nrow(nau_fil)
nrow(nau)

nau_fil1 <- rbind(nau_header,nau_fil)

nrow(nau_fil1)

colnames(nau_fil1)

drops <- c("StartDate"             ,"EndDate"               ,"Status"                ,"IPAddress"             ,"Progress"              ,"Duration..in.seconds."
           ,"Finished"              ,"RecordedDate"          ,"ResponseId"            ,"RecipientLastName"     ,"RecipientFirstName"    ,"RecipientEmail"       
           ,"ExternalReference"     ,"LocationLatitude"      ,"LocationLongitude"     ,"DistributionChannel"   ,"UserLanguage", "Q9_NPS_GROUP", "Q10_NPS_GROUP", "Q11_NPS_GROUP", "Q12_NPS_GROUP", "Q43_NPS_GROUP")
nau_fil2 <- nau_fil1[, !(names(nau_fil1) %in% drops)]

colnames(nau_fil2)

head(nau_fil2)

write.csv(nau_fil2,"surveyNAU.csv")
