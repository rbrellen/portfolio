##### Define custom functions

# Pull data
get_acs_population <- function(year, geography = 'state') {
  year <- as.integer(year)
  result <- tidycensus::get_acs(geography = geography,
                                table = 'B01001',
                                cache_table = TRUE,
                                year = year,
                                output = 'wide',
                                geometry = FALSE,
                                survey = 'acs1')
  result
}

get_census_population <- function(year, geography = 'state') {
  year <- as.integer(year)
  result <- tidycensus::get_decennial(geography = geography,
                                      table = 'P012',
                                      cache_table = TRUE,
                                      year = year,
                                      output = 'wide',
                                      geometry = FALSE)
  result
}

# Clean data
clean_acs_data <- function(data, keep_original = TRUE) {
  result <- data %>% 
    dplyr::mutate(total_population = B01001_001E,
                  male_00_to_04 = B01001_003E,
                  male_05_to_09 = B01001_004E,
                  male_10_to_14 = B01001_005E,
                  male_15_to_19 = B01001_006E + B01001_007E,
                  male_20_to_24 = B01001_008E + B01001_009E + B01001_010E,
                  male_25_to_29 = B01001_011E,
                  male_30_to_34 = B01001_012E,
                  male_35_to_39 = B01001_013E,
                  male_40_to_44 = B01001_014E,
                  male_45_to_49 = B01001_015E,
                  male_50_to_54 = B01001_016E,
                  male_55_to_59 = B01001_017E,
                  male_60_to_64 = B01001_018E + B01001_019E,
                  male_65_to_69 = B01001_020E + B01001_021E,
                  male_70_to_74 = B01001_022E,
                  male_75_to_79 = B01001_023E,
                  male_80_to_84 = B01001_024E,
                  male_85_and_over = B01001_025E,
                  female_00_to_04 = B01001_027E,
                  female_05_to_09 = B01001_028E,
                  female_10_to_14 = B01001_029E,
                  female_15_to_19 = B01001_030E + B01001_031E,
                  female_20_to_24 = B01001_032E + B01001_033E + B01001_034E,
                  female_25_to_29 = B01001_035E,
                  female_30_to_34 = B01001_036E,
                  female_35_to_39 = B01001_037E,
                  female_40_to_44 = B01001_038E,
                  female_45_to_49 = B01001_039E,
                  female_50_to_54 = B01001_040E,
                  female_55_to_59 = B01001_041E,
                  female_60_to_64 = B01001_042E + B01001_043E,
                  female_65_to_69 = B01001_044E + B01001_045E,
                  female_70_to_74 = B01001_046E,
                  female_75_to_79 = B01001_047E,
                  female_80_to_84 = B01001_048E,
                  female_85_and_over = B01001_049E,
                  pct_male_00_to_04 = male_00_to_04 / total_population,
                  pct_male_05_to_09 = male_05_to_09 / total_population,
                  pct_male_10_to_14 = male_10_to_14 / total_population,
                  pct_male_15_to_19 = male_15_to_19 / total_population,
                  pct_male_20_to_24 = male_20_to_24 / total_population,
                  pct_male_25_to_29 = male_25_to_29 / total_population,
                  pct_male_30_to_34 = male_30_to_34 / total_population,
                  pct_male_35_to_39 = male_35_to_39 / total_population,
                  pct_male_40_to_44 = male_40_to_44 / total_population,
                  pct_male_45_to_49 = male_45_to_49 / total_population,
                  pct_male_50_to_54 = male_50_to_54 / total_population,
                  pct_male_55_to_59 = male_55_to_59 / total_population,
                  pct_male_60_to_64 = male_60_to_64 / total_population,
                  pct_male_65_to_69 = male_65_to_69 / total_population,
                  pct_male_70_to_74 = male_70_to_74 / total_population,
                  pct_male_75_to_79 = male_75_to_79 / total_population,
                  pct_male_80_to_84 = male_80_to_84 / total_population,
                  pct_male_85_and_over = male_85_and_over / total_population,
                  pct_female_00_to_04 = female_00_to_04 / total_population,
                  pct_female_05_to_09 = female_05_to_09 / total_population,
                  pct_female_10_to_14 = female_10_to_14 / total_population,
                  pct_female_15_to_19 = female_15_to_19 / total_population,
                  pct_female_20_to_24 = female_20_to_24 / total_population,
                  pct_female_25_to_29 = female_25_to_29 / total_population,
                  pct_female_30_to_34 = female_30_to_34 / total_population,
                  pct_female_35_to_39 = female_35_to_39 / total_population,
                  pct_female_40_to_44 = female_40_to_44 / total_population,
                  pct_female_45_to_49 = female_45_to_49 / total_population,
                  pct_female_50_to_54 = female_50_to_54 / total_population,
                  pct_female_55_to_59 = female_55_to_59 / total_population,
                  pct_female_60_to_64 = female_60_to_64 / total_population,
                  pct_female_65_to_69 = female_65_to_69 / total_population,
                  pct_female_70_to_74 = female_70_to_74 / total_population,
                  pct_female_75_to_79 = female_75_to_79 / total_population,
                  pct_female_80_to_84 = female_80_to_84 / total_population,
                  pct_female_85_and_over = female_85_and_over / total_population)
  if (keep_original == FALSE) {
    result <- result %>% 
      dplyr::select(-dplyr::matches('B01001'))
  }
  result
}

clean_census_data <- function(data, keep_original = TRUE) {
  result <- data %>% 
    dplyr::mutate(total_population = P012001,
                  male_00_to_04 = P012003,
                  male_05_to_09 = P012004,
                  male_10_to_14 = P012005,
                  male_15_to_19 = P012006 + P012007,
                  male_20_to_24 = P012008 + P012009 + P012010,
                  male_25_to_29 = P012011,
                  male_30_to_34 = P012012,
                  male_35_to_39 = P012013,
                  male_40_to_44 = P012014,
                  male_45_to_49 = P012015,
                  male_50_to_54 = P012016,
                  male_55_to_59 = P012017,
                  male_60_to_64 = P012018 + P012019,
                  male_65_to_69 = P012020 + P012021,
                  male_70_to_74 = P012022,
                  male_75_to_79 = P012023,
                  male_80_to_84 = P012024,
                  male_85_and_over = P012025,
                  female_00_to_04 = P012027,
                  female_05_to_09 = P012028,
                  female_10_to_14 = P012029,
                  female_15_to_19 = P012030 + P012031,
                  female_20_to_24 = P012032 + P012033 + P012034,
                  female_25_to_29 = P012035,
                  female_30_to_34 = P012036,
                  female_35_to_39 = P012037,
                  female_40_to_44 = P012038,
                  female_45_to_49 = P012039,
                  female_50_to_54 = P012040,
                  female_55_to_59 = P012041,
                  female_60_to_64 = P012041 + P012043,
                  female_65_to_69 = P012044 + P012045,
                  female_70_to_74 = P012046,
                  female_75_to_79 = P012047,
                  female_80_to_84 = P012048,
                  female_85_and_over = P012049,
                  pct_male_00_to_04 = male_00_to_04 / total_population,
                  pct_male_05_to_09 = male_05_to_09 / total_population,
                  pct_male_10_to_14 = male_10_to_14 / total_population,
                  pct_male_15_to_19 = male_15_to_19 / total_population,
                  pct_male_20_to_24 = male_20_to_24 / total_population,
                  pct_male_25_to_29 = male_25_to_29 / total_population,
                  pct_male_30_to_34 = male_30_to_34 / total_population,
                  pct_male_35_to_39 = male_35_to_39 / total_population,
                  pct_male_40_to_44 = male_40_to_44 / total_population,
                  pct_male_45_to_49 = male_45_to_49 / total_population,
                  pct_male_50_to_54 = male_50_to_54 / total_population,
                  pct_male_55_to_59 = male_55_to_59 / total_population,
                  pct_male_60_to_64 = male_60_to_64 / total_population,
                  pct_male_65_to_69 = male_65_to_69 / total_population,
                  pct_male_70_to_74 = male_70_to_74 / total_population,
                  pct_male_75_to_79 = male_75_to_79 / total_population,
                  pct_male_80_to_84 = male_80_to_84 / total_population,
                  pct_male_85_and_over = male_85_and_over / total_population,
                  pct_female_00_to_04 = female_00_to_04 / total_population,
                  pct_female_05_to_09 = female_05_to_09 / total_population,
                  pct_female_10_to_14 = female_10_to_14 / total_population,
                  pct_female_15_to_19 = female_15_to_19 / total_population,
                  pct_female_20_to_24 = female_20_to_24 / total_population,
                  pct_female_25_to_29 = female_25_to_29 / total_population,
                  pct_female_30_to_34 = female_30_to_34 / total_population,
                  pct_female_35_to_39 = female_35_to_39 / total_population,
                  pct_female_40_to_44 = female_40_to_44 / total_population,
                  pct_female_45_to_49 = female_45_to_49 / total_population,
                  pct_female_50_to_54 = female_50_to_54 / total_population,
                  pct_female_55_to_59 = female_55_to_59 / total_population,
                  pct_female_60_to_64 = female_60_to_64 / total_population,
                  pct_female_65_to_69 = female_65_to_69 / total_population,
                  pct_female_70_to_74 = female_70_to_74 / total_population,
                  pct_female_75_to_79 = female_75_to_79 / total_population,
                  pct_female_80_to_84 = female_80_to_84 / total_population,
                  pct_female_85_and_over = female_85_and_over / total_population)
  if (keep_original == FALSE) {
    result <- result %>% 
      dplyr::select(-dplyr::matches('P012'))
  }
  result
}

# Graph data
graph_population_pyramid_pct <- function(data, bounds = 0.05) {
  result <- data %>%
    gather(key = 'variable', value = 'value', -one_of('state_name', 'year')) %>% 
    filter(grepl('pct_', variable)) %>% 
    separate(variable, c('gender', 'age'), sep = 'male_') %>% 
    mutate(gender = case_when(gender == 'pct_' ~ 'male', gender == 'pct_fe' ~ 'female'),
           age = str_replace_all(age, '_', ' '),
           value = as.numeric(value))
  result
  
  ggplot(result, aes(x = age, y = value, fill = gender)) +
    geom_bar(data = result %>% filter(gender == 'female'), stat = 'identity') +
    geom_bar(data = result %>% filter(gender == 'male') %>% mutate(value = -1 * value), stat = 'identity') +
    scale_fill_brewer(palette = 'Set1',
                      name = 'Gender',
                      breaks = c('female', 'male'),
                      labels = c('Female', 'Male')) +
    scale_y_continuous(labels = paste0(as.character(round(c(seq(bounds * 100L, 0, -1), seq(1, bounds * 100L, 1)))),'%'),
                       breaks = seq(-1 * bounds, bounds, .01),
                       limits = c(-1 * bounds, bounds)) +
    labs(x = 'Age',
         y = '% of Population') +
    theme_minimal() +
    theme(panel.grid = element_blank()) +
    coord_flip()
}

graph_population_pyramid_raw <- function(data) {
  result <- data %>%
    gather(key = 'variable', value = 'value', -one_of('state_name', 'year')) %>% 
    filter(grepl('^male|^female', variable)) %>% 
    separate(variable, c('gender', 'age'), sep = 'male_') %>% 
    mutate(gender = case_when(gender == '' ~ 'male', gender == 'fe' ~ 'female'),
           age = str_replace_all(age, '_', ' '),
           value = as.numeric(value))
  result
  
  ggplot(result, aes(x = age, y = value, fill = gender)) +
    geom_bar(data = result %>% filter(gender == 'female'), stat = 'identity') +
    geom_bar(data = result %>% filter(gender == 'male') %>% mutate(value = -1 * value), stat = 'identity') +
    scale_fill_brewer(palette = 'Set1',
                      name = 'Gender',
                      breaks = c('female', 'male'),
                      labels = c('Female', 'Male')) +
    scale_y_continuous(labels = scales::comma) +
    labs(x = 'Age',
         y = 'Total Population') +
    theme_minimal() +
    theme(panel.grid = element_blank()) +
    coord_flip()
}
