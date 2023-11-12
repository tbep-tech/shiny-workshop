library(tibble)

agenda <- frame_matrix(
  ~Time, ~Topic,
   '9:00', '[Introduction](intro.qmd)',
   '9:15', '[Dynamic: Quarto](quarto.qmd)',
  '10:30', 'break',
  '10:45', '[Dynamic: Quarto (cont)](quarto.qmd)',
  '11:45', '[Publish Quarto reports](https://tbep-tech.github.io/shiny-workshop/quarto.html#publishing)',
  '12:00', 'lunch',
  '12:30', '[Interactive: Shiny](shiny.qmd)',
  ' 3:00', 'break',
  ' 3:15', '[Example Complex Shiny App](https://tbep-tech.github.io/shiny-workshop/shiny.html#create-a-complex-shiny-app)',
  ' 3:45', '[Publishing Shiny Apps](https://tbep-tech.github.io/shiny-workshop/shiny.html#publish-app)',
   '4:00', '[Co-designing workflow](ui_design.qmd)',
   '5:00', 'adjourn'
)

save(agenda, file = 'data/agenda.RData')
