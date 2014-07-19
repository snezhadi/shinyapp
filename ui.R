library(shiny)

shinyUI(fluidPage(
  titlePanel("Binomial Distribution "),  
  fluidRow(    
    column(12,
      wellPanel(
        h4("How to Use:"),
        p("You can change the paramaters (n and p) 
          using the sliders in the side panel (left) 
          and the application automatically calculates 
          and redraws the Binominal distribution."),
        p("You can also change the type of the plot 
          by the dropdown box under the sliders.
          You can even change the color of the plot 
          using the radio buttons at the end.")
      )
    )
  ),
  fluidRow(    
    column(4, 
      wellPanel(
        sliderInput("n", "Number of Tries (n)", 10, 100, 50),
        sliderInput("p", "Probablity of Success (p)", 0, 1, 0.5, step=0.01),
        selectInput("pType", "Plot Type", list(Line="l", Point="p", Bar="h")),
        radioButtons("color", "Plot Color", list(Red="red", Blue="blue", Black="black"))
      )
    ),
    column(8, 
      plotOutput("bPlot")
    )
  )
))