#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(plotly)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Old Faithful Geyser Data"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            selectInput("graficaType",
                        "tipo de grafica:",
                        choice=list("all row regions","all fable countries"))
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotlyOutput("plot1")
        )
    )
))
