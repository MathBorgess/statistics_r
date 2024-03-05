setwd('~/github/statistics_r')

source('global.R')
source('ui.R')
source('server.R')


shinyApp(
  ui = ui,
  server = server
)
