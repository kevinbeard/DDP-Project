library(UsingR)

dogyear <- read.csv("data/dogyears.csv")
fitdog<- glm(Human ~ Dog + I(Dog^2) + I(Dog^3), data = dogyear)

shinyServer(
  function(input, output) {
#    output$myHist <- renderPlot({
#    output$myHist <- renderPlot({
#      hist(galton$child, xlab='child height', col='lightblue',main='Histogram')
#      mu <- input$mu
#      lines(c(mu, mu), c(0, 200),col="red",lwd=5)
#      mse <- mean((galton$child - mu)^2)
#      text(63, 150, paste("mu = ", mu))
 #     text(63, 140, paste("MSE = ", round(mse, 2)))
#    })
    
#  
    
    
    output$hyr <- renderPrint({round(input$yr + input$mo/12,2)})
    output$dyr <- renderPrint({

    round(predict.glm(fitdog, newdata = data.frame(Dog = input$yr *12 + input$mo ))/12,2)
     
            }) 

    
    
      }
)