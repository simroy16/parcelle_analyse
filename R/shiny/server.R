source("R/shiny/ui.R")

# Define a server for the Shiny app
server <- function(input, output) {
  
  # Fill in the spot we created for a plot
  output$explore_plot <- renderPlot({
    
    # Render a barplot
    plot(parcelle_flore[,input$variable_y]~parcelle_flore[,input$variable_x] , 
            main=paste(input$variable_y," en fonction de ",input$variable_x,sep=""),
            ylab=paste(input$variable_y),
            xlab=paste(input$variable_x),
         las=2)
  })
}

# brouillon :
# plot(parcelle_flore[,input$variable_y[1]]~parcelle_flore[,input$variable_x[1]] )
# 
# WorldPhones[,input$region]
# parcelle_flore[,variable_y[1]]~parcelle_flore[,variable_x[1]]
# 
# plot(parcelle_flore[,variable_y[1]]~parcelle_flore[,variable_x[1]])
