##########################
# Ryker Schwartzenberger
# 2/29/16
# INFO 498F
# a8-building-applications
##########################

shinyUI(fluidPage(
  
  titlePanel('Iris Data'),
  
  sidebarLayout(
    
    sidebarPanel(
    
      selectInput('petal', label = h3("Display petal length or width (x-axis)"),
                  choices = list('Width' = 'Petal.Width', 'Length' = 'Petal.Length'),
                  selected = 'Petal.Width'),
      
      radioButtons('sepal', 'Display sepal length or width (y-axis)', 
                   c('Width' = 'Sepal.Width', 'Length' = 'Sepal.Length'))
    ),
  
    mainPanel(
      plotlyOutput('plot')
    )
  )
))