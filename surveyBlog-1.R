blog_1 <- read.csv("OSS issues - 1 - Start_December 2, 2020_18.42-Blog.csv")

colnames(blog_1)
head(blog_1)

blog_1_header <- head(blog_1,1)

blog_1_fil <- blog_1[blog_1$Instruction=='Agree',]
nrow(blog_1_fil)
nrow(blog_1)

blog_1_fil1 <- rbind(blog_1_header,blog_1_fil)

nrow(blog_1_fil1)

colnames(blog_1_fil1)

drops <- c("StartDate"             ,"EndDate"               ,"Status"                ,"IPAddress"             ,"Progress"              ,"Duration..in.seconds."
           ,"Finished"              ,"RecordedDate"          ,"ResponseId"            ,"RecipientLastName"     ,"RecipientFirstName"    ,"RecipientEmail"       
           ,"ExternalReference"     ,"LocationLatitude"      ,"LocationLongitude"     ,"DistributionChannel"   ,"UserLanguage", "Q9_NPS_GROUP", "Q10_NPS_GROUP", "Q11_NPS_GROUP", "Q12_NPS_GROUP", "Q43_NPS_GROUP")
blog_1_fil2 <- blog_1_fil1[, !(names(blog_1_fil1) %in% drops)]

colnames(blog_1_fil2)

head(blog_1_fil2)

write.csv(blog_1_fil2,"surveyblog-1.csv")

