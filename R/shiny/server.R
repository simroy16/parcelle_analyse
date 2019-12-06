source("R/shiny/ui.R")

bzh <- png::readPNG("data/Gwenn_ha_du.png")
bzh = abind::abind(bzh, bzh[,,1]) 
bzh[,,4] = 0.2

# Define a server for the Shiny app
server <- function(input, output) {
  
  # Fill in the spot we created for a plot
  output$explore_plot <- renderPlot({
    
    # bzh image

    
    plot(parcelle_flore[,input$variable_y]~parcelle_flore[,input$variable_x] , col = "red",
         main=paste(input$variable_y," en fonction de ",input$variable_x,sep=""),
         ylab=paste(input$variable_y),
         xlab=paste(input$variable_x),
         las=2)
    
    lim <- par()
    rasterImage(bzh, lim$usr[1], lim$usr[3], lim$usr[2], lim$usr[4])
  })
}

# brouillon :
# plot(parcelle_flore[,input$variable_y[1]]~parcelle_flore[,input$variable_x[1]] )
# 
# WorldPhones[,input$region]
# parcelle_flore[,variable_y[1]]~parcelle_flore[,variable_x[1]]
# 
# plot(parcelle_flore[,variable_y[1]]~parcelle_flore[,variable_x[1]])
# jpeg::writeJPEG(bitmap, "data/Gwenn_ha_du.jpg", quality = 100)
# rsvg::rsvg_png("data/Gwenn_ha_du.svg","data/Gwenn_ha_du.png")


