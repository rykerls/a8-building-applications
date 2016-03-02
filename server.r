##########################
# Ryker Schwartzenberger
# 2/29/16
# INFO 498F
# a8-building-applications
##########################

library(dplyr)
library(plotly)
library(shiny)

options(stringsAsFactors = FALSE)

# Import build_plot() function
source('build_plot.r')

# Import iris data
data(iris)

shinyServer(function(input, output){

  # Create scatter plot using build_plot and store it in output
  # to be displayed in the application.
  output$plot <- renderPlotly({
                 build_plot(iris, input$petal, input$sepal, iris$Species)
                 })

})