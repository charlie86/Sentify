function(request) {
    material_page(title = HTML('<span>Sentify</span> <span style="font-size:12px"><a href="http://www.rcharlie.com" target="_blank">by RCharlie</a></span>'),
                  nav_bar_color = 'black',
                  font_color = 'white',
                  background_color = '#828282',
                  tags$head(tags$link(rel = 'icon', type = 'image/png', href = 'green_music_note.png'),
                            tags$title('Sentify')),
                  useShinyjs(),
                  tags$script(jscode),
                  tags$style(appCSS),
                  tags$head(tags$link(rel = 'stylesheet', type = 'text/css', href = 'style.css'),
                            tags$head(includeScript('www/ga.js')),
                            tags$head(includeScript('www/hotjar.js'))),
                  material_row(
                      material_column(
                          width = 3,
                          material_card(
                              title = '',
                              depth = 4,
                              material_text_box('artist_search', "Type an artist name", color = 'black'),
                              conditionalPanel("input.artist_search !== ''", material_dropdown('select_artist', 'Choose an artist from these matches on Spotify', '', color = '#1ed760')),
                              uiOutput('select_artist_ui')
                          )
                      ),
                      material_column(
                          width = 9,
                          uiOutput('artist_plot')
                      )
                  )
    )
}