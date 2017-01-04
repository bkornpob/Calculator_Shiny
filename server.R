#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
     x1<-reactive({input$op1})
     x2<-reactive({input$op2})
     optor<-reactive({input$operator})

     cal<-reactive({
          switch(optor(),
                 '+'={x1()+x2()}
                 ,'-'={x1()-x2()}
                 ,'*'={x1()*x2()}
                 ,'/'={x1()/x2()}
                 ,'^'={x1()^x2()}
                 ,{"Wring input"}
          )
     })
     
     output$result<-renderText({cal()})

     
     
     
     
})
