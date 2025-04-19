# FIAP - Faculdade de Informática e Administração Paulista

<p align="center">
<a href= "https://www.fiap.com.br/"><img src="assets/logo-fiap.png" alt="FIAP - Faculdade de Informática e Admnistração Paulista" border="0" width=40% height=40%></a>
</p>

<br>

# Nome do projeto
Cap 7 - Decolando com ciências de dados - Análise estatística de dados do agro

## Nome do grupo
Grupo 42

## 👨‍🎓 Integrantes: 
- <a href="https://www.linkedin.com/in/anacornachi/">Ana Cornachi</a>
- <a href="https://www.linkedin.com/in/carlamaximo/">Carla Máximo</a>
- <a href="https://www.linkedin.com/in/lucas-lins-lima/">Lucas Lins</a> 

## 👩‍🏫 Professores:
### Tutor(a) 
- <a href="https://www.linkedin.com/in/lucas-gomes-moreira-15a8452a/">Lucas Gomes Moreira</a>
### Coordenador(a)
- <a href="https://www.linkedin.com/in/andregodoichiovato/">André Godoi Chiovato</a>

## 📜 Descrição

O projeto envolve a análise de dados agrícolas a partir de uma planilha Excel contendo informações sobre áreas plantadas de diferentes tipos de alimentos ao longo de vários anos. As colunas incluem:

- Área Plantada: Tipo de alimento, limites inferior e superior (Linf. e Lsup.).
- Unidade: Mil ha (hectares).
- Anos: Áreas plantadas de 2013/14 até 2033/34.
- TX. Cresc. 2023/24 a 2033/34: Taxa de crescimento.
- Variação % 2023/24 a 2033/34: Percentual de variação.

Tipos de variáveis presentes na base de dados
As variáveis presentes na planilha podem ser classificadas da seguinte forma:

- Variáveis quantitativas discretas:

Ano: Representa um intervalo anual (ex: "2023/24", "2033/34") e assume valores numéricos inteiros e separados, sem possibilidade de fração, pois cada ano/ciclo agrícola é contado discretamente.

- Variáveis quantitativas contínuas:

Área Plantada: Expressa em mil hectares (mil ha), pode assumir virtualmente qualquer valor dentro de um intervalo, incluindo números fracionários, representando a extensão da área cultivada.

TX. Cresc. 2023/24 a 2033/34: A taxa de crescimento pode assumir valores contínuos (percentuais, positivos ou negativos).

Variação % 2023/24 a 2033/34: Percentual de variação, também é uma variável quantitativa contínua.

- Variáveis qualitativas nominais:

Tipo de Alimento: Identifica diferentes tipos de alimentos (ex: “Soja”, “Milho”, “Arroz”, etc.), não possui ordem natural de classificação, apenas nomes distintos das categorias analisadas.

- Variáveis qualitativas ordinais:

Taxa de Crescimento (Categorizada): Classificada em faixas como “Muito Baixo”, “Baixo”, “Médio” e “Alto”, apresenta uma ordem natural entre as categorias.

Fonte dos dados

A planilha utilizada para análise foi extraída do portal oficial do governo brasileiro, especificamente do campo “TABELAS GERAIS - PROJEÇÕES DO AGRONEGÓCIO 2023-2024 A 2033-2034”, disponível em: https://www.gov.br/agricultura/pt-br/assuntos/politica-agricola/todas-publicacoes-de-politica-agricola/projecoes-do-agronegocio

O script em R realiza várias tarefas:

- Carregamento de pacotes: Usa o readxl para ler a planilha Excel.
- Estrutura dos dados: Visualiza a estrutura inicial dos dados.
- Transformação de Dados: Converte os dados para um formato longo para facilitar análises temporais.
- Análise Quantitativa: Examina medidas de tendência central e dispersão para o ano de 2023/24.
- Visualizações: Cria boxplots e histogramas para análises visuais.
- Categorização: Categoriza a taxa de crescimento em 'Muito Baixo', 'Baixo', 'Médio' e 'Alto'.
- Análise Qualitativa: Examina a distribuição de tipos de alimentos.

## 📁 Estrutura de pastas

Dentre os arquivos e pastas presentes na raiz do projeto, definem-se:

- <b>.github</b>: Nesta pasta ficarão os arquivos de configuração específicos do GitHub que ajudam a gerenciar e automatizar processos no repositório.

- <b>assets</b>: aqui estão os arquivos relacionados a elementos não-estruturados deste repositório, como imagens.

- <b>config</b>: Posicione aqui arquivos de configuração que são usados para definir parâmetros e ajustes do projeto.

- <b>document</b>: aqui estão todos os documentos do projeto que as atividades poderão pedir. Na subpasta "other", adicione documentos complementares e menos importantes.

- <b>scripts</b>: Posicione aqui scripts auxiliares para tarefas específicas do seu projeto. Exemplo: deploy, migrações de banco de dados, backups.

- <b>src</b>: Todo o código fonte criado para o desenvolvimento do projeto ao longo das 7 fases.

- <b>README.md</b>: arquivo que serve como guia e explicação geral sobre o projeto (o mesmo que você está lendo agora).

## 🔧 Como executar o código

1. Instalar Pacotes (se necessário):
Certifique-se de que o pacote readxl está instalado. Isso pode ser feito descomentando a linha install.packages("readxl").

2. Carregar Pacotes:
Utilize library(readxl) para carregar o pacote necessário.

3. Ler o Arquivo Excel

4. Estrutura dos Dados

5. Transformar em Dados Longos

6. Análise de Variável Quantitativa

7. Categorização

8. Análise de Variável Qualitativa

## 🗃 Histórico de lançamentos

* 0.1.0 - 14/04/2025
    * 

## 📋 Licença

<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"><p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://github.com/agodoi/template">MODELO GIT FIAP</a> por <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://fiap.com.br">Fiap</a> está licenciado sobre <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">Attribution 4.0 International</a>.</p>


