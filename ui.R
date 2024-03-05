

header <- dashboardHeader(title = "Dashboard")

sidebar <- dashboardSidebar(
    sidebarMenu(
        menuItem("Dashboard", tabName = "metrics", icon = icon("chart-line"))
    )
)

body <- dashboardBody(
    tabItems(
        tabItem(tabName = 'metrics',
                fluidRow(
                    box(title = 'Selecione suas opções', width=12, solidHeader = TRUE, status='warning',
                        selectInput('category', 'Categoria', category_array, multiple=FALSE),
                        uiOutput("timedate"),
                        actionButton('go', 'Submeter')
                        )
                ),
                fluidRow(
                    box(title = "Informações sobre a categoria", width = 12, solidHeader = TRUE,
                        DTOutput('info')
                    )
                ),
                fluidRow(
                    box(title = "Gráfico em linha da série", width = 12, solidHeader = TRUE,
                        plotOutput('sh')
                    )
                ),
                fluidRow(
                  box(title = "Boxplot da série", width = 12, solidHeader = TRUE,
                      plotOutput('box')
                  )
                ),
                fluidRow(
                    box(title = "Histograma da série", width = 12, solidHeader = TRUE,
                        plotOutput('Hist')
                    )
                ),
        )
    )
)

ui <- dashboardPage(
    skin = 'green',
    header, sidebar, body
    )
