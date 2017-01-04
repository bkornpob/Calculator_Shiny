#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Calculator"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       numericInput("op1","Operand 1",value=0),
       textInput("operator","Operator: + - * / ^",""),
       numericInput("op2","Operand 2",value=0)
    ),

    
    # Show a plot of the generated distribution
    mainPanel(
       h3("Result ="),
       textOutput("result")
    )
  )
))
