##########################
# Ryker Schwartzenberger
# 2/29/16
# INFO 498F
# a8-building-applications
##########################

# Builds a scatter plot from df with x axis 'opt1' and y axis 'opt2'.
# opt1, opt2, and color must be columns in df.
build_plot <- function(df, opt1, opt2, color) {
 
   # Color pallete based on 'color' argument.
  pal <- RColorBrewer::brewer.pal(nlevels(color), "Set1")
 
   # Set axis titles to their respective column names.
  x <- list(title = opt1)
  y <- list(title = opt2)
  
  plot_ly(data = df, x = eval(parse(text = opt1)), y = eval(parse(text = opt2)), color = color,
          colors = pal, mode = "markers") %>% 
    layout(xaxis = x, yaxis = y) %>% 
    return()
}