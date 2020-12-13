setwd("/Users/pedro/Downloads");
#le fonte dados 
data <- read.table("pesquisa.data", header=TRUE);
estados <- unique(data$estado);
fw <- unique(data$framework);
hib <- unique(data$hibernate);
#monta matrizes iniciais
rs1 <- matrix(nrow=length(estados), ncol=length(hib), dimnames=list(estados,hib));
rs2 <- matrix(nrow=length(estados), ncol=length(fw), dimnames=list(estados,fw));
#carrega matrizes com contagem de valores por fator
for (estado_ in estados){
 	
 	newData <- subset(data, estado_ == data$estado);
 	
 	for (hibernate_ in hib){
 		newData2 <- subset(newData, hibernate_ == newData$hibernate);
 		rs1[estado_,hibernate_] <- nrow(newData2);	
 	}	 
};
for (estado_ in estados){
 	
 	newData <- subset(data, estado_ == data$estado);
 	
 	for (framework_ in fw){
 		newData2 <- subset(newData, framework_ == newData$framework);
 		rs2[estado_,framework_] <- nrow(newData2);	
 	}		
};

cramerV <- function(data){
 	tempchi <- chisq.test(data);
 	chi2 <- unname(tempchi$statistic["X-squared"]);
 	pvalue <- unname(tempchi$p.value);
 	cv <- sqrt(chi2 / sum(data) / (min(length(data), nrow(data))-1));
 	c(effsize = cv, p.value = pvalue, chi2 = chi2);
};
cramerV(rs1);
cramerV(rs2);
