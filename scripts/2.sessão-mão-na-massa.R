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
# Por gênero
# Quantos alunos tem tido dificuldade em nível alto para conseguir se concentrar naquilo que fazem?
bd_mh_fake %>% 
  group_by(sexo) %>% 
  frq(Mtl_Hth_01) # Mtl_Hth_01	Você tem conseguido se concentrar naquilo que faz? 

# Quantos estudantes se sentem totalmente esgotados e sob pressão?
bd_mh_fake %>% 
  group_by(sexo) %>% 
  frq(Mtl_Hth_05) # Você tem se sentido esgotado e sob pressão?

# Quantos alunos costumam perder totalmente o sono por conta das suas preocupações?
bd_mh_fake %>% 
  group_by(sexo) %>% 
  frq(Mtl_Hth_02) # Você tem perdido o sono frequente por causa de suas preocupações? 

# Quantos alunos relataram que perderam totalmente a confiança em si?
bd_mh_fake %>% 
  group_by(sexo) %>% 
  frq(Mtl_Hth_10) # Mtl_Hth_10	Você tem perdido a confiança em si mesmo?* #13.5%

# Quantos alunos se sentem totalmente infelizes e deprimidos?
bd_mh_fake %>% 
  group_by(sexo) %>% 
  frq(Mtl_Hth_09) # Mtl_Hth_09	Você tem se sentido infeliz e deprimido?* #11.60%
