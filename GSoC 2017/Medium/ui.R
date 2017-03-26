


library(shiny)
library(plotly)

shinyUI(fluidPage(
  
  titlePanel("GSoC 2017 | Distributional assessments with Q Q plots | Test: Medium"),
  
  sidebarLayout(
    sidebarPanel(
      

      
      selectInput("variable", "Choose the Distribution:",
                  c("Beta" = "beta",
                    "Binomial" = "binom",
                    "Chi-Squared" = "chi",
                    "Cauchy" = "cauchy",
                    "Exponential" = "exp",
                    "F" = "f",
                    "Gamma" = "gamma",
                    "Geometric" = "geom",
                    "Hyper Geometric" = "hyper",
                    "Logistic" = "log",
                    "Log Normal" = "lognorm",
                    "Negative Binomial" = "nbinon",
                    "Normal" = "normal",
                    "Poisson" = "poisson",
                    "T" = "t",
                    "Uniform" = "uniform",
                    "weibull" = "weibull")),

      numericInput("p1", "Distribution Parameter 1", 1),
      numericInput("p2", "Distribution Parameter 2 [If apllicable]", 0),
      numericInput("p3", "Distribution Parameter 3 [If apllicable]", 0),
      
  helpText(   a("For reference on how to specify parameters, click here.",     href="http://meredithfranklin.github.io/R-Probability-Distributions.html",target="_blank")),

      submitButton("Plot !")
      
      

      
      
    ),
    
    
    
    mainPanel(
      plotlyOutput("plot")
    )
  ) )
)