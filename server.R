library(UsingR)

dogyear <- read.csv("data/dogyears.csv")
fitdog<- glm(Human ~ Dog + I(Dog^2) + I(Dog^3), data = dogyear)

shinyServer(
  function(input, output) {

    
    output$hyr <- renderPrint({round(input$yr + input$mo/12,2)})
    
    output$dyr <- renderPrint({
        round(predict.glm(fitdog, newdata = data.frame(Dog = input$yr *12 + input$mo ))/12,2)
                 }) 

          }
)