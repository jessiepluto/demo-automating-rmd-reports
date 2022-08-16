library(tidyverse)
library(ggplot2)
library(patchwork)
library(spotifyr)
library(ggthemes)
library(flextable)
options(knitr.duplicate.label = "allow")
access_token <- get_spotify_access_token()

number_format <- function(number) {
  format(round(number,3), digits = 3, nsmall = 0, big.mark  = "")
}

tracks <- spotifyr::get_artist_audio_features('alanis morissette') %>% 
  filter(album_name == 'Jagged Little Pill') %>% 
  select(track_name) %>% 
  unique() %>% 
  head(5) %>% 
  pull()
