shinyUI(pageWithSidebar(
  headerPanel('mtcars Data Selection App'),
  sidebarPanel(
    selectInput('cyli', 'Number of cylinders', choices = c('4 cyls' = 4, '6 cyls' = 6, '8 cyls' = 8)),
    sliderInput('minmpg', 'min value of mpg', min = 10.4, max = 33.9, value = 10.4, step=.1),
    sliderInput('maxmpg', 'max value of mpg', min = 10.4, max = 33.9, value = 33.9, step=.1)
  ),
  mainPanel(
    p('This shiny app allows you to subset the mtcars data set by the number of cylinders and the mpg values.'),
    p('Just enter a number of cylinders and the minimum and maximum mileage (mpg) in miles/gallon.'),
    p('The output on the right shows you the car models that fit these criteria.'),
    h4('Number of cylinders:'),
    verbatimTextOutput('cyli'),
    h4('The min value of mpg:'),
    verbatimTextOutput('minmpg'),
    h4('The max value of mpg:'),
    verbatimTextOutput('maxmpg'),
    h4('The cars with the selected specifications'),
    verbatimTextOutput('CarCount')
  )
))





