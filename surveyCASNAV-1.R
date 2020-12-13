#casnav_1 <- read.csv("OSS issues - 1_November 30, 2020_18.42-INFNET-JAVA.csv")
casnav_1 <- read.csv("OSS issues - 1_November 23, 2020_13.48-CASNAV-control.csv")
#OSS issues - 1_December 5, 2020_15.43
colnames(casnav_1)
head(casnav_1)

casnav_1_header <- head(casnav_1,1)

casnav_1_fil <- casnav_1[casnav_1$Instruction=='Agree',]
nrow(casnav_1_fil)
nrow(casnav_1)

casnav_1_fil1 <- rbind(casnav_1_header,casnav_1_fil)

nrow(casnav_1_fil1)

colnames(casnav_1_fil1)

drops <- c("StartDate"             ,"EndDate"               ,"Status"                ,"IPAddress"             ,"Progress"              ,"Duration..in.seconds."
           ,"Finished"              ,"RecordedDate"          ,"ResponseId"            ,"RecipientLastName"     ,"RecipientFirstName"    ,"RecipientEmail"       
           ,"ExternalReference"     ,"LocationLatitude"      ,"LocationLongitude"     ,"DistributionChannel"   ,"UserLanguage", "Q9_NPS_GROUP", "Q10_NPS_GROUP", "Q11_NPS_GROUP", "Q12_NPS_GROUP", "Q43_NPS_GROUP")
casnav_1_fil2 <- casnav_1_fil1[, !(names(casnav_1_fil1) %in% drops)]

colnames(casnav_1_fil2)

head(casnav_1_fil2)

write.csv(casnav_1_fil2,"surveyCASNAV-1.csv")

