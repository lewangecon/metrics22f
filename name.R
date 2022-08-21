library(tidyverse)

roster <- readr::read_csv("../../01syllabus/roster.csv") %>% 
  select(contains("Name"))
  

roster %>% 
  slice_sample(n = 1)