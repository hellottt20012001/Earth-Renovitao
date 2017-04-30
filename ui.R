library(shiny)
shinyUI(bootstrapPage(
  
  selectInput(inputId = "n_breaks",
              label = "Number of bins in histogram (approximate):",
              choices = c(10, 20, 30, 40, 50),
              selected = 50),
  
  checkboxInput(inputId = "individual_obs",
                label = strong("Show individual observations"),
                value = FALSE),
  
  checkboxInput(inputId = "density",
                label = strong("Show density estimate"),
                value = FALSE),
  
  plotOutput(outputId = "p1", height = "300px"),
  plotOutput(outputId = "p11", height = "300px"),
  plotOutput(outputId = "p2", height = "300px"),
  plotOutput(outputId = "p22", height = "300px"),
  plotOutput(outputId = "p3", height = "300px"),
  plotOutput(outputId = "p33", height = "300px"),
  plotOutput(outputId = "p4", height = "300px"),
  plotOutput(outputId = "p44", height = "300px"),
  plotOutput(outputId = "p5", height = "300px"),
  plotOutput(outputId = "p55", height = "300px"),
  plotOutput(outputId = "p6", height = "300px"),
  plotOutput(outputId = "p66", height = "300px"),
  plotOutput(outputId = "p7", height = "300px"),
  plotOutput(outputId = "p77", height = "300px"),
  plotOutput(outputId = "p8", height = "300px"),
  plotOutput(outputId = "p88", height = "300px"),
  
  
  # Display this only if the density is shown
  conditionalPanel(condition = "input.density == true",
                   sliderInput(inputId = "bw_adjust",
                               label = "Bandwidth adjustment:",
                               min = 0.1, max = 2, value = 1, step = 0.2)
  )
  
))
