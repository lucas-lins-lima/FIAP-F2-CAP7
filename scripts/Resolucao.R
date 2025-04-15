# Lucas Lins Lima_RM564628_fase2_cap7
# Carla Donato Maximo_RM564845_fase2_cap7
# Ana Carolina Borges Cornachi_RM564678_fase2_cap7

# Carregar pacote necessário
install.packages("readxl") # Execute apenas se ainda não tiver o readxl instalado

# Carregar o pacote readxl
library(readxl)

# Ler o arquivo Excel
dados <- read_excel("Projecoes_do_Agronegocio.xlsx")

# Observando a estrutura dos dados
str(dados)

# Transformar os dados em formato longo para análise
dados_long <- tidyr::pivot_longer(
  dados,
  cols = `2013/14`:`2033/34`,
  names_to = "Ano",
  values_to = "Área Plantada"
)

# Tipos de Variáveis:
# Ano: Variável Quantitativa Discreta
# Área Plantada: Variável Quantitativa Contínua
# Tipo de Alimento: Variável Qualitativa Nominal
# Taxa de Crescimento Categorizada: Variável Qualitativa Ordinal

# Análise de Variável Quantitativa: 'Área Plantada' para o primeiro ano da análise
## Filtro para anos de interesse, por exemplo, 2023/24
dados_2023 <- subset(dados_long, Ano == "2023/24")

## Medidas de Tendência Central
mean_area <- mean(dados_2023$`Área Plantada`, na.rm = TRUE)
median_area <- median(dados_2023$`Área Plantada`, na.rm = TRUE)

## Medidas de Dispersão
sd_area <- sd(dados_2023$`Área Plantada`, na.rm = TRUE)
var_area <- var(dados_2023$`Área Plantada`, na.rm = TRUE)
range_area <- range(dados_2023$`Área Plantada`, na.rm = TRUE)

## Medidas Separatrizes
quartis_area <- quantile(dados_2023$`Área Plantada`, na.rm = TRUE)

## Análise Gráfica
boxplot(dados_2023$`Área Plantada`, main = "Área Plantada 2023/24", ylab = "Mil ha")

# Categorização da Taxa de Crescimento
dados$tx_crescimento_cat <- cut(dados$`TX. Cresc. 2023/24 a 2033/34`, 
                                breaks = c(-Inf, -5, 0, 5, Inf), 
                                labels = c("Muito Baixo", "Baixo", "Médio", "Alto"))

# Análise de Variável Qualitativa: 'Tipo de Alimento'
## Análise Gráfica
# Crie uma nova coluna para armazenar o tipo de alimento
dados$`Tipo de alimento` <- NA

# Identifica as linhas que correspondem aos tipos de alimento
for (i in seq(1, nrow(dados), by = 3)) {
  # A cada três linhas, a primeira contém o tipo de alimento
  tipo_alimento <- dados$`Área Plantada`[i]
  
  # Preenche a nova coluna com o tipo de alimento
  dados$`Tipo de alimento`[i:(i+2)] <- tipo_alimento
}

# Agora você pode construir o gráfico
barplot(table(dados$`Tipo de alimento`), main = "Distribuição de Tipos de Alimento", ylab = "Frequência")