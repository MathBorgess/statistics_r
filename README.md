# Análise de vendas da Amazon

Esse projeto faz parte da cadeira de Estatística do [CIn-UFPE](https://portal.cin.ufpe.br), ministrada pela professora Renata, e tem como objetivo analisar dados de vendas da Amazon por categoria utilizando o framework Shiny.

## Dataset

O dataset utilizado para essa análise contém informações sobre vendas na Amazon, incluindo a categoria de cada produto vendido, contendo as seguintes colunas:
"Order_ID","Order_Date","Ship_Date","EmailID","Geography","Category","Product_Name","Sales","Quantity","Profit"

## Installation

Para rodar esse projeto, você precisa ter o R e os seguintes pacotes instalados:

```r
install.packages(c( "quantmod", "shiny", "shinydashboard", "dplyr", "ggplot2", "DT", "tidyverse", "lubridate", "hrbrthemes", "viridis"))
```

```r
remove.packages("quantmod", "shiny", "shinydashboard", "dplyr", "ggplot2", "DT", "tidyverse", "lubridate", "hrbrthemes", "viridis" ))
```

# Colaboradores

| <img src="https://avatars.githubusercontent.com/u/116684279?v=4&s=70" alt="Matheus Borges" width="70" height="70"> | <img src="https://avatars.githubusercontent.com/u/137849658?v=4&s=70" alt="Gabriel Marques" width="70" height="70"> | <img src="https://avatars.githubusercontent.com/u/125303577?v=4&s=70" alt="Maria Fernanda Amorim" width="70" height="70"> | <img src="https://avatars.githubusercontent.com/u/127243520?v=4&s=70" alt="Tulio Oliveira" width="70" height="70"> | <img src="https://avatars.githubusercontent.com/u/136331050?v=4&s=70" alt="Luana de Melo" width="70" height="70"> |
| ------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------------------------------------------------- |
| [Matheus Borges](mailto:mbf3@cin.ufpe.br)                                                                          | [Gabriel Marques](mailto:gma5@cin.ufpe.br)                                                                          | [Maria Fernanda Amorim](mailto:mffa@cin.ufpe.br)                                                                          | [Tulio Araujo](mailto:toa@cin.ufpe.br)                                                                             | [Luana de Melo](mailto:lmq2@cin.ufpe.br)                                                                          |
