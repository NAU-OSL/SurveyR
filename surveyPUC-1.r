puc_1 <- read.csv("OSS issues - 1 - PUC_October 23, 2020_15.24.csv")

colnames(puc_1)
head(puc_1)

puc_1_header <- head(puc_1,1)

puc_1_fil <- puc_1[puc_1$Instruction=='Agree',]
nrow(puc_1_fil)
nrow(puc_1)

puc_1_fil1 <- rbind(puc_1_header,puc_1_fil)

nrow(puc_1_fil1)

colnames(puc_1_fil1)

drops <- c("StartDate"             ,"EndDate"               ,"Status"                ,"IPAddress"             ,"Progress"              ,"Duration..in.seconds."
           ,"Finished"              ,"RecordedDate"          ,"ResponseId"            ,"RecipientLastName"     ,"RecipientFirstName"    ,"RecipientEmail"       
           ,"ExternalReference"     ,"LocationLatitude"      ,"LocationLongitude"     ,"DistributionChannel"   ,"UserLanguage", "Q9_NPS_GROUP", "Q10_NPS_GROUP", "Q11_NPS_GROUP", "Q12_NPS_GROUP", "Q44_NPS_GROUP")
puc_1_fil2 <- puc_1_fil1[, !(names(puc_1_fil1) %in% drops)]

colnames(puc_1_fil2)

head(puc_1_fil2)

write.csv(puc_1_fil2,"surveypuc_1.csv")
