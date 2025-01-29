ui <- page_sidebar(
  title = "Simple Scatter Plot",
  sidebar = sidebar(
    selectInput(
      "variable",
      "Select variable to plot:",
      choices = c("Sepal.Width", "Petal.Length", "Petal.Width"),
      selected = "Sepal.Width"
    )
  ),
  card(
    card_header("Scatter Plot"),
    plotOutput("scatter")
  )
)
