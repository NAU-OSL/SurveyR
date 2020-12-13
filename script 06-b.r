# Remove todos os objetos da memória
rm(list = ls())

# Carrega os dados para a memória
data <- read.table("/Users/Marcio/Dropbox/Academia/Cursos/UNIRIO/ESE/Slides/03 Analise/Hands on/Pesquisa Mercado/Pesquisa.data", header=TRUE);

# Existem no uso de hibernate?
hiber <- table(data$estado, data$hibernate);
chisq.test(hiber);

# Existem no uso de framework?
framew <- table(data$estado, data$framework);
chisq.test(framew);
