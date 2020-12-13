


#precisa instalar essas libs  - install.packages(``questionr'')
#precisa instalar essas libs  - install.packages(``epitools'')
library(questionr)
library(epitools)

#monta a tabela
altruism_experience <- matrix(c(20, 5, 43, 60), nrow = 2)

#coloca as legendas
rownames(altruism_experience) <- c("experienced", "novice")
colnames(altruism_experience) <- c("yes", "no")

#imprime pra ver como ficou
altruism_experience

#calcula o Odds.
oddsratio.wald(altruism_experience)

fisher.test(altruism_experience)
chisq.test(altruism_experience)
