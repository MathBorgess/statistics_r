
server <- function(input, output) {
    select_category <- eventReactive(input$go, {
        
        category_name <- input$category
        twin <- input$true_date
        
        df_category <- master_df %>% 
            filter(Category == category_name) 
        
        return(df_category)
    })
    
    output$timedate <- renderUI({
        
        category_name <- input$category
        
        df <- master_df %>% 
            filter(Category == category_name)
        
        min_time <- min(df$Date)
        max_time <- max(df$Date)
        dateRangeInput("true_date", "Período de análise",
                       end = max_time,
                       start = min_time,
                       min  = min_time,
                       max  = max_time,
                       format = "dd/mm/yy",
                       separator = " - ",
                       language='pt-BR'
                       )
    })
    
    
    ################ OUTPUT #####################
    Info_DataTable <- eventReactive(input$go,{
        df <- select_category()
        
        mean <- df %>% select(Profit) %>% colMeans()
        Media <- mean[[1]]
        Moda <- df %>% select(Profit) %>% table() %>% as.data.frame() %>% arrange(desc(Freq)) %>% head(1) %>% select(Profit)
        Moda <- Moda[[1]]
        Mediana <- median(df$Profit)
        Desvio <- sd(df$Profit)
        
        category <- input$category
        
        df_tb <-  data.frame(category, Media, Moda, Mediana, Desvio)
        
        df_tb <- as.data.frame(t(df_tb))
        
        return(df_tb)
    })
    
    output$info <- renderDT({
        Info_DataTable() %>%
            as.data.frame() %>% 
            DT::datatable(options=list(
                language=list(
                    url = '//cdn.datatables.net/plug-ins/1.10.11/i18n/Portuguese-Brasil.json'
                )
            ))
    })
    
    output$sh <- renderPlot({
        # All the inputs
        df <- select_category()
        
        aux <- df$Profit %>% na.omit() %>% as.numeric()
        aux1 <- min(aux)
        aux2 <- max(aux)
        
        df$Date <- ymd(df$Date)
        a <- df %>% 
            ggplot(aes(Date, Profit, group=1)) +
            geom_path() +
            ylab('Lucro obtido na venda') +
            coord_cartesian(ylim = c(aux1, aux2)) +
            theme_bw() +
            scale_x_date(date_labels = "%m/%d/%Y")
        
        a
    })
}
