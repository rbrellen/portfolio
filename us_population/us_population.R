# Load packages
library(gganimate)
library(shiny)
library(tidycensus)
library(tidyverse)

# Source helper functions
source('helpers.R')

# Read in data
data_2000 <- get_census_population(2000)
data_2010 <- get_census_population(2010)
# 2011 data is not accessible through tidycensus package as of 2019-07-24
data_2012 <- get_acs_population(2012)
data_2013 <- get_acs_population(2013)
data_2014 <- get_acs_population(2014)
data_2015 <- get_acs_population(2015)
data_2016 <- get_acs_population(2016)
data_2017 <- get_acs_population(2017)

# Transform data
census_data <- dplyr::bind_rows(dplyr::mutate(data_2000, year = 2000L),
                                dplyr::mutate(data_2010, year = 2010L)) %>% 
  clean_census_data(keep_original = FALSE) %>% 
  dplyr::rename(geoid = GEOID,
                state_name = NAME) %>% 
  dplyr::select(-dplyr::one_of(c('GEOID1', 'NAME1')))

acs_data <- dplyr::bind_rows(dplyr::mutate(data_2012, year = 2012L),
                             dplyr::mutate(data_2013, year = 2013L),
                             dplyr::mutate(data_2014, year = 2014L),
                             dplyr::mutate(data_2015, year = 2015L),
                             dplyr::mutate(data_2016, year = 2016L),
                             dplyr::mutate(data_2017, year = 2017L)) %>% 
  clean_acs_data(keep_original = FALSE) %>% 
  dplyr::rename(geoid = GEOID,
                state_name = NAME)

# Combine all data together into full data set
full_data <- dplyr::bind_rows(census_data, acs_data)

# Pull out variables into lists of unique values for Shiny app
states <- full_data %>% dplyr::pull(state_name) %>% unique() %>% sort()
years <- full_data %>% dplyr::pull(year) %>% unique() %>% sort()

# Set up Shiny UI
ui <- fluidPage(
  titlePanel('Population Pyramids by State'),
  sidebarLayout(
      sidebarPanel(width = 6,
        selectInput(inputId = 'state',
                    label = 'State',
                    choices = states,
                    selected = min(states),
                    multiple = FALSE,
                    selectize = TRUE),
        selectInput(inputId = 'year',
                    label = 'Year',
                    choices = years,
                    selected = max(years),
                    multiple = FALSE,
                    selectize = TRUE),
        # selectInput(inputId = 'pct_or_raw',
        #             label = 'Use Percentages?',
        #             choices = list('Yes', 'No'),
        #             selected = 'Yes',
        #             multiple = FALSE,
        #             selectize = TRUE),
        numericInput(inputId = 'bounds',
                     label = 'x-Axis Boundary',
                     value = 0.05,
                     min = 0.04,
                     max = 0.07,
                     step = 0.01)
      ),
      mainPanel(width = 6,
                plotOutput('plot'))
    )
)

# Set up Shiny server
server <- function(input, output) {
  output$plot <- renderPlot({
    my_plot <- reactive({
      full_data %>% 
        dplyr::filter(state_name == input$state, year == as.integer(input$year))
    })
    # if (input$pct_or_raw == 'Yes') {
       my_plot() %>% 
        graph_population_pyramid_pct(bounds = input$bounds) +
        labs(title = sprintf('%s, %s', input$state, input$year))
    # } else {
    #   my_plot() %>% 
    #     graph_population_pyramid_raw() +
    #     labs(title = sprintf('%s, %s', input$state, input$year))
    # }
  })
}

# Execute function to run Shiny app
shinyApp(ui, server)
