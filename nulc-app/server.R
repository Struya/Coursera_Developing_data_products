
# libraries
library(eurostat)
library(dplyr)
library(ggplot2)
library(lubridate) 
library(stringr)
library(markdown)
library(rmarkdown)

# nominal unit labour cost table
my_table <- "tipslm40"

# my server
shinyServer(function(input, output) {
  
  # getting data from Eurostat
  my_df <- reactive({
    get_eurostat(my_table, cache = FALSE) %>% 
      mutate_each(funs(as.character), -time, -values)
  })
  
  # prepearing data for charting
  my_df_to_chart <- reactive({
    my_df() %>% 
      filter(complete.cases(.),
             geo %in% input$geo_group,
             unit %in% input$select_estat_unit,
             year(time) >= 2005
      ) 
  })
  
  # chart
  output$my_plot <- renderPlot({ 
    ggplot(my_df_to_chart(),
           aes(x = time, y = values, color = geo)) +
      geom_line() +
      theme_minimal()
  })
  
})