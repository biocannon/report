#library(ggplot2)
#library(dplyr)
#library(tidyr)
#library(plotly)
#library(waffle)

smrt.srb <- read.csv("Smrtnost.starost.pol.csv", header = T)

smrt.pol <- ggplot(smrt.srb, aes(x = Godine, y = Broj.ukupno, fill = Pol)) +
    geom_col() +
    theme_bw() + 
    labs(x = "Starosna grupa", 
         y = "Broj smrtnih slučajeva") +
    scale_fill_manual(values = c("#56B4E9", "#E69F00"))

ggplotly(smrt.pol)