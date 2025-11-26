# 📊 Análise Preditiva de Risco de Crédito

Este projeto consiste em uma solução completa de dados ("End-to-End") para análise de risco de crédito, simulando um cenário real de uma instituição financeira. O projeto abrange desde a engenharia de dados e limpeza até a análise exploratória e modelagem preditiva.

## 📸 Dashboard (Power BI)

Devido a políticas de segurança de conta corporativa, a publicação web pública deste dashboard não está disponível. Abaixo estão as capturas de tela da solução desenvolvida, demonstrando a análise de perfil de risco.

### Visão Geral e Análise de Perfil
![Dashboard Visão Geral](images/Image_Dashboard.png)
*(Este painel permite aos gestores filtrar por estado civil, posse de bens e localização para identificar nichos de risco)*

---

## 🎯 Objetivos do Projeto
1.  **Diagnóstico:** Analisar o perfil dos clientes atuais e identificar padrões de inadimplência.
2.  **Insights:** Descobrir quais variáveis (idade, renda, motivo) são os maiores indicadores de risco.
3.  **Predição:** Construir um modelo de Machine Learning capaz de prever se um novo cliente será um bom ou mau pagador.

## 🛠️ Tecnologias e Ferramentas
* **Engenharia de Dados (SQL/MySQL):**
    * Criação de banco de dados e importação de dados brutos.
    * Criação de `VIEWS` para limpeza, seleção de features e tratamento de tipos de dados (`CASE WHEN`, `TIMESTAMPDIFF`).
* **Python (Pandas & Scikit-learn):**
    * Conexão com banco de dados via biblioteca nativa `mysql-connector-python`.
    * Limpeza de dados e tratamento de erros de formatação via dicionários de substituição.
    * Análise Exploratória de Dados (EDA) com `Seaborn` e `Matplotlib`.
    * Pré-processamento (One-Hot Encoding) e treino de modelos de Machine Learning.
* **Visualização (Power BI):**
    * Conexão de dados, transformação via Power Query (criação de colunas condicionais e faixas etárias) e criação de medidas DAX (KPIs).
    * Design de dashboard interativo para storytelling.

## 🧠 Principais Insights de Negócio
Através da análise dos dados, chegamos a conclusões valiosas para a estratégia de crédito:

* **🚨 O Fator Crítico:** O **Motivo do Empréstimo** provou ser o indicador mais forte. Clientes que solicitam crédito para **"Pagar Dívidas"** ou **"Educação"** apresentaram as maiores taxas de inadimplência (risco elevado).
* **✅ O "Porto Seguro":** Solicitações para **"Investimento"** apresentaram risco zero na amostra analisada, sugerindo um perfil de cliente mais planejado.
* **💰 Renda e Idade:** Confirmou-se a hipótese de que clientes adimplentes possuem, em média, uma renda superior e são ligeiramente mais velhos que os inadimplentes.

## 🤖 Modelo Preditivo (Machine Learning)
Além da análise visual, foi desenvolvido um modelo de classificação (**Regressão Logística**) para prever a inadimplência.

* **Acurácia nos dados de teste:** 93,33%
* **Conclusão do Modelo:** O algoritmo demonstrou alta eficácia na classificação, errando apenas 1 caso em 15 no conjunto de teste (um falso positivo, que é o erro "mais seguro" para o banco), servindo como uma ferramenta robusta para triagem automática.

## 📂 Estrutura do Repositório
O projeto está organizado da seguinte forma:

* `data/`: Arquivo CSV original com os dados brutos.
* `sql/`: Scripts SQL utilizados para a criação da `VIEW` de preparação dos dados.
* `notebooks/`: Jupyter Notebook contendo toda a lógica de Python, EDA e Machine Learning.
* `dashboard/`: Arquivo fonte (`.pbix`) do Power BI.
* `images/`: Capturas de tela do projeto.

---
### Como Executar este Projeto
1.  Clone o repositório.
2.  Instale as dependências: `pip install -r requirements.txt`.
3.  Configure o banco de dados MySQL usando o script na pasta `sql/`.
4.  Configure suas credenciais no arquivo `.env` na raiz do projeto.
5.  Execute o notebook de análise na pasta `notebooks/`.

---
**Autor:** Felipe Passos de Albuquerque
linkedin.com/in/felipe-passos-848504281/
