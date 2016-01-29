library(shiny)
library(dplyr)
library(lubridate)
library(BH)

CarTable <- function(cyli, minmpg, maxmpg) {
  CarData <- mtcars
  CarData <- subset(mtcars, cyl == cyli)
  CarData <- subset(CarData,mpg>minmpg & mpg<maxmpg)
  return(CarData)
}

shinyServer(
  function(input, output) {
    output$cyli <- renderPrint({input$cyli})
    output$minmpg <- renderPrint({input$minmpg})
    output$maxmpg <- renderPrint({input$maxmpg})
    output$CarCount <- renderPrint({CarTable(input$cyli, input$minmpg, input$maxmpg)})
  }
)