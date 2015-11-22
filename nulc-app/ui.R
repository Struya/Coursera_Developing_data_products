
# my user interface 

shinyUI(
  navbarPage("Nominal Unit Labour Cost",
             
             # tab panel "Visualisation"
             tabPanel("Visualization",
                      fluidPage(
                        
                        # my sidebar layout
                        sidebarLayout(
                          
                          # my sidebar panel
                          sidebarPanel("Please select...",
                                       
                                       # my drop down menu
                                       selectInput("select_estat_unit",
                                                   label = h4("Measurement unit"),
                                                   choices = list("PCH_SM", "I10"),
                                                   selected = 1),
                                       
                                       h5("Unit description:"),
                                       p(strong("PCH_SM:"), 
                                         " percent change relative to same period of previous year."),
                                       p(strong("I10:"),
                                         " percent change relative to average of 2010."),
                                       
                                       # my group checkbox 
                                       checkboxGroupInput("geo_group", 
                                                          label = h4("Countres"), 
                                                          choices = list("Germany" = "DE",
                                                                         "Slovenia" = "SI",
                                                                         "Spain" = "ES",
                                                                         "Italy" = "IT",
                                                                         "Portugal" = "PT",
                                                                         "Greece" = "EL"),
                                                          selected = c("SI", "DE"))),
                          
                          # my main panel
                          mainPanel(
                            
                            # Some text
                            h5("Unit labour cost developments"),
                            
                            # plot
                            plotOutput("my_plot")
                          )
                        )
                      )
             ),
             
             # tab panel "About NULC"
             tabPanel("About NULC",
                      mainPanel(
                        includeMarkdown("include_about_nulc.md")
                      )),
             
             # tab panel "About Application"
             tabPanel("About Application",
                      mainPanel(
                        includeMarkdown("include_about_app.md")
                      ))
  )
)

