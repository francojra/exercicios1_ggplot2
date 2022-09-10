# Exercícios - Produção de gráficos com o pacote ggplot2 -----------------------------------------------------------------------------------
# Autoria do script: Jeanne Franco ---------------------------------------------------------------------------------------------------------
# Data: 09/09/2022 -------------------------------------------------------------------------------------------------------------------------

# Exercícios -------------------------------------------------------------------------------------------------------------------------------

# 1 - Escolha um conjunto de dados disponível no R
# 2 - Carregue os pacotes necessários
# 3 - Produza os seguintes gráficos:
# a) Gráficos de histograma e densidade
# b) Gráficos de boxplot e violino
# c) Gráfico de barras com valores de média e erro padrão
# d) Gráfico de linhas
# e) Gráfico de dispersão

# Respostas --------------------------------------------------------------------------------------------------------------------------------

# Exercício 1

diamante <- dados::diamante
view(diamante)

## Verificar quantidade de NAs por variável:

quantos.na <- colwise(function(x) sum(is.na(x)))
quantos.na(diamante)

# Exercício 2

library(tidyverse)
library(viridis)
library(hrbrthemes)
hrbrthemes::import_roboto_condensed()
library(dados)
library(plyr)

# Exercício 3

# a) Gráficos de histograma e densidade

ggplot(diamante, aes(x = preco)) +
  geom_histogram(bins = 30)

ggplot(diamante, aes(x = quilate)) +
  geom_histogram(bins = 30)

ggplot(diamante, aes(x = profundidade)) +
  geom_histogram(bins = 30)

ggplot(diamante, aes(x = preco, fill = cor)) +
  geom_density()

ggplot(diamante, aes(x = quilate, fill = corte)) +
  geom_density()

ggplot(diamante, aes(x = profundidade, fill = transparencia)) +
  geom_density(alpha = 0.5)
 
# c) Gráficos de boxplot e violino



# c) Gráfico de barras com média e erro padrão



# d) Gráfico de linhas



# e) Gráfico de dispersão







