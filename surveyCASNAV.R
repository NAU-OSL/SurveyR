#casnav <- read.csv("OSS issues_November 30, 2020_18.42-INFNET-JAVA.csv")
casnav <- read.csv("OSS issues_November 23, 2020_13.48-CASNAV-treatment.csv")
#OSS issues_December 5, 2020_15.43

colnames(casnav)
head(casnav)

casnav_header <- head(casnav,1)

casnav_fil <- casnav[casnav$Instruction=='Agree',]
nrow(casnav_fil)
nrow(casnav)

casnav_fil1 <- rbind(casnav_header,casnav_fil)

nrow(casnav_fil1)

colnames(casnav_fil1)

drops <- c("StartDate"             ,"EndDate"               ,"Status"                ,"IPAddress"             ,"Progress"              ,"Duration..in.seconds."
           ,"Finished"              ,"RecordedDate"          ,"ResponseId"            ,"RecipientLastName"     ,"RecipientFirstName"    ,"RecipientEmail"       
           ,"ExternalReference"     ,"LocationLatitude"      ,"LocationLongitude"     ,"DistributionChannel"   ,"UserLanguage", "Q9_NPS_GROUP", "Q10_NPS_GROUP", "Q11_NPS_GROUP", "Q12_NPS_GROUP", "Q43_NPS_GROUP")
casnav_fil2 <- casnav_fil1[, !(names(casnav_fil1) %in% drops)]

colnames(casnav_fil2)

head(casnav_fil2)

write.csv(casnav_fil2,"surveyCASNAV.csv")
