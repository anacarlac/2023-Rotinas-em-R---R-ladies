# Carregando os pacotes
library(tidyverse)
library(psych)
library(janitor)
library(sjmisc)
library(careless)
library(formattable)
library(qgraph)
library(corrplot)
library(lavaan)
library(PROscorerTools)
library(sjPlot)

# Carregar o banco de dados limpo e dicionário
bd_mh_fake <- readRDS("data/bd_mh_fake.RDS")
dic_mh <- read_excel("dic/dic_mtl.xlsx")
dic_senna <- read_excel("dic/nomes_facetas_socioemocional.xlsx")

# Sessão mão na massa!

# Meninos e meninas estão apresentando as mesmas dificuldades em relação a sua saúde mental?

# Quantos alunos tem tido dificuldade em nível muito alto para conseguir se concentrar naquilo que fazem?
bd_mh_fake %>% 
  
## Resposta:

# Quantos estudantes se sentem totalmente esgotados e sob pressão?
bd_mh_fake %>% 
  
## Resposta:

# Quantos alunos costumam perder totalmente o sono por conta das suas preocupações?
bd_mh_fake %>% 
  
## Resposta:

# Quantos alunos relataram que perderam totalmente a confiança em si?
bd_mh_fake %>% 
  
## Resposta:

# Quantos alunos se sentem totalmente infelizes e deprimidos?
bd_mh_fake %>% 
  
## Resposta:

# Como está o desenvolvimento socioemocional de meninos e meninas nas competências relacionadas a saúde mental?

# Autoconfiança
bd_mh_fake %>% 
  
## Resposta:

# Confiança
bd_mh_fake %>% 
  
## Resposta:

# Determinação
bd_mh_fake %>% 
  
## Resposta:

# Foco
bd_mh_fake %>% 
  
## Resposta:
  
# Entusiasmo
bd_mh_fake %>% 
  
## Resposta:
  
# Tolerância ao estresse
bd_mh_fake %>% 

## Resposta: