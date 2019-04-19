#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinydashboard)

# Define UI for application that draws a histogram
ui <- dashboardPage(skin = "black",

  dashboardHeader(
    title = "Inter-Stats"
  ),

  dashboardSidebar(
    sidebarMenu(
      # menuItem("About", tabName = "about"),
      menuItem("Confidence Intervals", tabName = "ci"),
      menuItem("Additional Resources", tabName = "res")
    )
  ),
  
  dashboardBody(
    tags$head(
      tags$style(
        HTML('

          .sidebar-menu {
            font-family: "Courier New", Courier, monospace;
            font-size: 15px;
          }

          .main-header .logo {
            font-family: "Courier New", Courier, monospace;
            font-weight: bold;
            font-size: 24px;
          }

          .box.box-solid.box-primary > .box-header{
            border-bottom-color: #1e282c;
            border-left-color: #1e282c;
            border-right-color: #1e282c;
            border-top-color: #1e282c;
            background-color: #1e282c;
            background: #1e282c;
          }

          .box.box-solid.box-primary {
            border: 1px solid #1e282c;
          }

          .box.box-primary {
            border-top-color: #1e282c;  
          }

          .box-title {
            font-family: "Courier New", Courier, monospace;
            font-weight: bold;
            font-size: 24px;
          }

          h1 {
            font-family: "Courier New", Courier, monospace;
            font-weight: bold;
            font-size: 24px;
            margin-top: 5px;
            margin-bottom: 15px;
          }

          p {
            font-family: "Courier New", Courier, monospace;
            font-weight: normal;
            font-size: 14px;
          }

       ')
      )
    ),
    fluidRow(
      tabItems(
        tabItem("ci",
                h1(
                  "Confidence Intervals",
                  align = "center"
                ),
                box(
                  title = "What's the Point?",
                  status = "primary",
                  width = 12,
                  solidHeader = FALSE,
                  p("
                    
                  ")
                ),
                box(
                  title = "Building Intuition",
                  status = "primary",
                  width = 12,
                  solidHeader = FALSE
                ),
                box(
                  title = "A Little Bit of Formality",
                  status = "primary",
                  width = 12,
                  solidHeader = FALSE,
                  p("qlkmndlkfmgldkmfg")
                ),
                box(
                  title = "Play with the Concept",
                  status = "primary",
                  width = 12,
                  solidHeader = FALSE,
                  p("qlkmndlkfmgldkmfg")
                ),
                box(
                  title = "Check your Understanding",
                  status = "primary",
                  width = 12,
                  solidHeader = FALSE,
                  p("qlkmndlkfmgldkmfg")
                )
        ),
        tabItem("res",
                box(
                  title = "Looking for More?",
                  status = "primary",
                  width = 12,
                  solidHeader = FALSE,
                  p("qewrqwerqeqwerqwrqew")
                )
        )
      )
    )
  )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
  
}

# Run the application 
shinyApp(ui = ui, server = server)

