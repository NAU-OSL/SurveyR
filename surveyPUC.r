puc <- read.csv("OSS issues - PUC_October 23, 2020_15.24.csv")

colnames(puc)
head(puc)

puc_header <- head(puc,1)

puc_fil <- puc[puc$Instruction=='Agree',]
nrow(puc_fil)
nrow(puc)

puc_fil1 <- rbind(puc_header,puc_fil)

nrow(puc_fil1)

colnames(puc_fil1)

drops <- c("StartDate"             ,"EndDate"               ,"Status"                ,"IPAddress"             ,"Progress"              ,"Duration..in.seconds."
           ,"Finished"              ,"RecordedDate"          ,"ResponseId"            ,"RecipientLastName"     ,"RecipientFirstName"    ,"RecipientEmail"       
           ,"ExternalReference"     ,"LocationLatitude"      ,"LocationLongitude"     ,"DistributionChannel"   ,"UserLanguage", "Q9_NPS_GROUP", "Q10_NPS_GROUP", "Q11_NPS_GROUP", "Q12_NPS_GROUP", "Q43_NPS_GROUP")
puc_fil2 <- puc_fil1[, !(names(puc_fil1) %in% drops)]

colnames(puc_fil2)

head(puc_fil2)

write.csv(puc_fil2,"surveyPUC.csv")
