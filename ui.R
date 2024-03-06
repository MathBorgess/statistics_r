

header <- dashboardHeader(title = "Dashboard")

sidebar <- dashboardSidebar(
    sidebarMenu(
        menuItem("Dashboard", tabName = "metrics", icon = icon("chart-line")),
        menuItem("Grupo", tabName = "integrantes",icon = icon("people-group"),
                 badgeLabel = "5", badgeColor = "light-blue"),
        
        tags$head(tags$style(HTML('
      .main-header .logo {
        font-family: "Helvetica", Times, "Times New Roman", serif;
        font-weight: bold;
        font-size: 24px;
      }
    ')))
    )
)

body <- dashboardBody(
    tabItems(
        tabItem(tabName = 'metrics',
                fluidRow(
                    box(title = 'Selecione suas opções', width=12, solidHeader = FALSE, status='info',collapsible = TRUE,
                        selectInput('category', 'Categoria', category_array, multiple=FALSE),
                        uiOutput("timedate"),
                        actionButton('go', 'Submeter'),
                        )
                ),
                fluidRow(
                    box(title = "Informações sobre a categoria", width = 12, status= "info", solidHeader = FALSE,
                        collapsible = TRUE, DTOutput('info')
                    )
                ),
                fluidRow(
                    box(title = "Gráfico em linha da série", width = 12, status= "info", solidHeader = FALSE,
                        collapsible = TRUE,plotOutput('sh')
                    )
                ),
                fluidRow(
                  box(title = "Boxplot da série", width = 12, status= "info", solidHeader = FALSE,
                      collapsible = TRUE,plotOutput('box')
                  )
                ),
                fluidRow(
                    box(title = "Histograma da série", width = 12, status= "info", solidHeader = FALSE,
                        collapsible = TRUE,plotOutput('Hist')
                    )
                ),
        ),
        
        tabItem(tabName = "integrantes",
                fluidRow(
                  box(title = "Grupo", width = 12, status= "danger", solidHeader = FALSE, "Gabriel Marques",br(),
                      "Luana Queiroz", br(), "Maria Fernanda Amorim",br(), "Matheus Borges", br(),
                      "Tulio Araujo"
                  )
                )
              )
    )
)

ui <- dashboardPage(
    skin = 'red',
    header, sidebar, body
    )
