# Remove todos os objetos da memória
rm(list = ls())

# Carrega os dados para a memória
data <- read.table("/Users/Marcio/Dropbox/Academia/Cursos/UNIRIO/ESE/Slides/03 Analise/Hands on/Pesquisa Mercado/Pesquisa.data", header=TRUE);
estados <- unique(data$estado);

# Existem diferenca no uso de hibernate?
result <- c();

for (estado_ in estados) {
	sim <- nrow(subset(data, data$estado == estado_ & data$hibernate == "Sim"));
	nao <- nrow(subset(data, data$estado == estado_ & data$hibernate == "Nao"));
	result <- c(result, sim, nao);
}
	
chisq.test(matrix(result, ncol=2, byrow=TRUE));

# Existem diferenca no uso das frameworks?
frameworks <- unique(data$framework);
result <- c();

for (estado_ in estados) {
	for (framework_ in frameworks) {
		contador <- nrow(subset(data, data$estado == estado_ & data$framework == framework_));
		result <- c(result, contador);
	}
}
	
chisq.test(matrix(result, ncol=length(frameworks), byrow=TRUE));
