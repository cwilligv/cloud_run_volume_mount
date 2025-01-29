server <- function(input, output, session) {
  output$scatter <- renderPlot({
    ggplot(data, aes_string(x = "Sepal.Length", y = input$variable, color = "Species")) +
      geom_point(size = 3, alpha = 0.7) +
      theme_minimal() +
      labs(
        x = "Sepal Length",
        y = input$variable,
        title = paste("Iris:", input$variable, "vs Sepal Length")
      )
  })
}
