library(shiny)

shinyUI(fluidPage(
    title = 'European Cities distance',
    h1("European cities distances"),
    p("Please, select a city:"),
    selectInput('city', 'City', labels(eurodist)),
    column(6,
        plotOutput('plot')
    ),
    column(6,
        dataTableOutput('table')
    )
))