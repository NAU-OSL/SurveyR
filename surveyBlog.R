blog <- read.csv("OSS issues - Start_December 2, 2020_18.42-Blog.csv")

colnames(blog)
head(blog)

blog_header <- head(blog,1)

blog_fil <- blog[blog$Instruction=='Agree',]
nrow(blog_fil)
nrow(blog)

blog_fil1 <- rbind(blog_header,blog_fil)

nrow(blog_fil1)

colnames(blog_fil1)

drops <- c("StartDate"             ,"EndDate"               ,"Status"                ,"IPAddress"             ,"Progress"              ,"Duration..in.seconds."
           ,"Finished"              ,"RecordedDate"          ,"ResponseId"            ,"RecipientLastName"     ,"RecipientFirstName"    ,"RecipientEmail"       
           ,"ExternalReference"     ,"LocationLatitude"      ,"LocationLongitude"     ,"DistributionChannel"   ,"UserLanguage", "Q9_NPS_GROUP", "Q10_NPS_GROUP", "Q11_NPS_GROUP", "Q12_NPS_GROUP", "Q43_NPS_GROUP")
blog_fil2 <- blog_fil1[, !(names(blog_fil1) %in% drops)]

colnames(blog_fil2)

head(blog_fil2)

write.csv(blog_fil2,"surveyblog.csv")
