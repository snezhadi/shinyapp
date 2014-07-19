library(shiny)

shinyServer(function(input, output) {
  output$bPlot <- renderPlot({
    # Selecting the x values
    x <- 1:input$n
    # Calculating the Binomial distribution for the input parameters
    d <- dbinom(x, input$n, input$p)
    # Plot the distribution
    plot(x, d, type = input$pType, 
         col = input$color, lwd = 2,
         xlab = "Number of Success", 
         ylab = "Probablity",
         main = paste("n =", input$n,"p =", input$p))
  })
})