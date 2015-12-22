library(shiny)

shinyServer(function(input, output, session) {
    output$plot <- renderPlot(plot(sort(as.matrix(eurodist)[input$city,]),
                                    xlab = "",
                                    ylab = "distance (km)"))
    output$table <- renderDataTable({
                        data <- data.frame(
                            city=colnames(as.matrix(eurodist)),
                            distance=as.matrix(eurodist)[input$city,]
                            )
                        names(data) <- c("City", 
                                         paste("Distance to ", input$city))
                        data},
                        options = list(pageLength = 10)
                        )
})