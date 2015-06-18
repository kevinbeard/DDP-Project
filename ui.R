shinyUI(pageWithSidebar(
  headerPanel("How old is your dog?"),
 
  sidebarPanel(
    p(strong('Enter the age of your dog...')),
    br(),  
    sliderInput('yr' , 'Number of years?', value = 5, min = 0, max = 20, step = 1 ),
    sliderInput('mo', '...andnumber of months?', value = 0, min = 0, max = 11, step = 1 ),
    submitButton('Submit'),
 
 
 img(src="dogwaggingtail.gif", height = 200, width = 200)
 
  ),
  mainPanel(
 #   img(src="dogwaggingtail.gif", height = 200, width = 200),
  #  plotOutput('myHist')
    h1("So, just how old is my dog?"),
    p("Ask most people how to determine a dog’s age in human years, and they’ll 
      probably say",
      em(" Multiply by seven. "),
      "However, this method is inaccurate, and 
      more so the older a dog gets. For a twelve year-old dog, the result could be 
      off by over twenty years. Multiplying by seven only comes close while a dog 
      is about four to five years old.Dogs mature faster than humans, reaching the equivalent
    of twenty-one years in only about two years of age, but then aging slows to an average of four 
    human years every year after."),
    br(),
    p(" Dog longevity is also based on the sixe of the dog. Dogs under thirty pounds live longest, often well 
    into their teens; dogs over a hundred pounds have the shortest lifespans, being 
    considered not just old but geriatric by six or seven. This ",
      strong("Dog Age Calculator"),
      " assumes your dog is of medium size. "
    ),
    
    br(),
    br(),

    h3('Your age of your dog ...'),
    h4('in Human years is about: '),
    verbatimTextOutput("hyr"),
    h4('While in Dog years is about: '),
    verbatimTextOutput("dyr")
  )
))