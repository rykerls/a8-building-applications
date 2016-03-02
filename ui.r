##########################
# Ryker Schwartzenberger
# 2/29/16
# INFO 498F
# a8-building-applications
##########################

library(shiny)
library(plotly)

shinyUI(fluidPage(
  
  titlePanel('Iris Data'),
  
  sidebarLayout(
    
    # Create sidebar with dropdown menu fur changing data on the x axis 
    # and radio buttons for the y axis.
    sidebarPanel(
    
      selectInput('petal', label = h3("Display petal length or width (x-axis)"),
                  choices = list('Width' = 'Petal.Width', 'Length' = 'Petal.Length'),
                  selected = 'Petal.Width'),
      
      radioButtons('sepal', 'Display sepal length or width (y-axis)', 
                   c('Width' = 'Sepal.Width', 'Length' = 'Sepal.Length'))
    ),
    
    # Display 'plot' on main area of the page.
    mainPanel(
      plotlyOutput('plot')
    )
  )
))