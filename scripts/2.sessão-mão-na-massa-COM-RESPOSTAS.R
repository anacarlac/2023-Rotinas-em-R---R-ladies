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
  group_by(sexo) %>% 
  frq(Mtl_Hth_01) # Mtl_Hth_01	Você tem conseguido se concentrar naquilo que faz? 

## 4,95% de meninas em relação a 4,97% dos meninos

# Quantos estudantes se sentem totalmente esgotados e sob pressão?
bd_mh_fake %>% 
  group_by(sexo) %>% 
  frq(Mtl_Hth_05) # Você tem se sentido esgotado e sob pressão?

## 30,91% de meninas em relação a 16,77% dos meninos

# Quantos alunos costumam perder totalmente o sono por conta das suas preocupações?
bd_mh_fake %>% 
  group_by(sexo) %>% 
  frq(Mtl_Hth_02) # Você tem perdido o sono frequente por causa de suas preocupações? 

## 16,51% de meninas em relação a 21,3% dos meninos

# Quantos alunos relataram que perderam totalmente a confiança em si?
bd_mh_fake %>% 
  group_by(sexo) %>% 
  frq(Mtl_Hth_10) # Mtl_Hth_10	Você tem perdido a confiança em si mesmo?* #13.5%

## 16,64% de meninas em relação a 10,32% dos meninos

# Quantos alunos se sentem totalmente infelizes e deprimidos?
bd_mh_fake %>% 
  group_by(sexo) %>% 
  frq(Mtl_Hth_09) # Mtl_Hth_09	Você tem se sentido infeliz e deprimido?* #11.60%

## 14,2% de meninas em relação a 9,3% dos meninos

# Como está o desenvolvimento socioemocional de meninos e meninas nas competências relacionadas a saúde mental?

# Autoconfiança
bd_mh_fake %>% 
  group_by(sexo) %>% 
  frq(LDep_cat) 

## 31,58% de meninas em relação a 22,06% dos meninos

# Confiança
bd_mh_fake %>% 
  group_by(sexo) %>% 
  frq(Tru_cat) 

## 39,33% de meninas em relação a 32,62% dos meninos

# Determinação
bd_mh_fake %>% 
  group_by(sexo) %>% 
  frq(Achv_cat) 

## 10,76% de meninas em relação a 11,33% dos meninos

# Foco
bd_mh_fake %>% 
  group_by(sexo) %>% 
  frq(Conc_cat)

## 22,29% de meninas em relação a 17,04% dos meninos

# Entusiasmo
bd_mh_fake %>% 
  group_by(sexo) %>% 
  frq(Act_cat) 

## 19,71% de meninas em relação a 19,51% dos meninos

# Tolerância ao estresse
bd_mh_fake %>% 
  group_by(sexo) %>% 
  frq(LAnx_cat) 

## 40,02% de meninas em relação a 18,48% dos meninos
